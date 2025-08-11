#!/bin/bash

# Set the path to the library and pass name
PATH2LIB="../featurePass/build/featurePass/FeaturePass.so"
PATH3LIB="../../featurePass/build/featurePass/FeaturePass.so"
PASS=lnp

rm -f loop_features.csv

# Process single .c and .cpp files
for file in *.c *.cpp; do
    if [ -f "$file" ]; then
        printf "Processing single file: %s\n" "$file"
        
        # Compile to LLVM bitcode
        clang -emit-llvm -c "$file" -Xclang -disable-O0-optnone -o "${file%.c}.bc"
        
        # Profile and collect features (same as original)
        opt -passes='pgo-instr-gen,instrprof' "${file%.c}.bc" -o "${file%.c}.prof.bc"
        clang -fprofile-instr-generate "${file%.c}.prof.bc" -o "${file%.c}_prof"
        ./"${file%.c}_prof" > /dev/null 2>&1
        llvm-profdata merge -o "${file%.c}.profdata" default.profraw
        opt -passes="pgo-instr-use" -o "${file%.c}.profdata.bc" -pgo-test-profile-file="${file%.c}.profdata" < "${file%.c}.bc"
        
        # Record features
        echo "Output for $file:" >> loop_features.csv
        opt --disable-output -load-pass-plugin="${PATH2LIB}" -passes="${PASS}" "${file%.c}.profdata.bc" >> loop_features.csv 2>&1
        echo "" >> loop_features.csv
    fi
done

# Process multi-file projects (directories)
for dir in */; do
    if [ -d "$dir" ]; then
        printf "Processing multi-file project: %s\n" "$dir"
        
        # Enter project directory
        cd "$dir" || continue
        
        # Find all source files
        c_files=(*.c)
        cpp_files=(*.cpp)
        all_files=("${c_files[@]}" "${cpp_files[@]}")
        
        # Check if there are source files
        if [ ${#all_files[@]} -eq 0 ]; then
            cd ..
            continue
        fi
        
        # Create object directory
        mkdir -p obj
        rm -f obj/*.bc
        
        # Compile each source file separately
        for file in "${all_files[@]}"; do
            if [ -f "$file" ]; then
                base_name="${file%.*}"
                obj_file="obj/${base_name}.bc"
                
                # Compile with common headers
                printf "  Compiling %s\n" "$file"
                clang -emit-llvm -c "$file" -Xclang -disable-O0-optnone \
                      -I. -include stdlib.h -include string.h \
                      -o "$obj_file" 2> compile_errors.txt
                
                if [ $? -ne 0 ]; then
                    printf "    Error compiling %s\n" "$file"
                    cat compile_errors.txt
                    cd ..
                    continue 2
                fi
            fi
        done
        
        # Collect all bitcode files
        bc_files=()
        for bc in obj/*.bc; do
            if [ -f "$bc" ]; then
                bc_files+=("$bc")
            fi
        done
        
        # Link all bitcode files
        if [ ${#bc_files[@]} -gt 0 ]; then
            printf "  Linking %d bitcode files\n" "${#bc_files[@]}"
            
            # Link with duplicate symbol handling
            llvm-link -S "${bc_files[@]}" -o combined.ll 2> link_errors.txt
            
            if [ $? -ne 0 ]; then
                printf "    Error linking files\n"
                cat link_errors.txt
                
                # Try to resolve duplicate symbols by removing non-definitions
                printf "    Attempting to resolve duplicate symbols\n"
                grep -v "^define" combined.ll > combined_fixed.ll
                mv combined_fixed.ll combined.ll
                
                # Re-link
                llvm-as combined.ll -o combined.bc
                if [ $? -ne 0 ]; then
                    printf "    Failed to resolve symbols\n"
                    cd ..
                    continue
                fi
            else
                # Convert LL to BC if successful
                llvm-as combined.ll -o combined.bc
            fi
            
            # Continue with profiling and feature collection
            opt -passes='pgo-instr-gen,instrprof' combined.bc -o combined.prof.bc
            clang -fprofile-instr-generate combined.prof.bc -o combined_prof
            
            if [ ! -x combined_prof ]; then
                printf "    Error generating executable\n"
                cd ..
                continue
            fi
            
            ./combined_prof > /dev/null 2>&1
            
            if [ -f "default.profraw" ]; then
                llvm-profdata merge -o combined.profdata default.profraw
                opt -passes="pgo-instr-use" -o combined.profdata.bc -pgo-test-profile-file=combined.profdata < combined.bc
                
                # Record features
                project_name="${dir%/}"
                echo "Output for $project_name:" >> ../loop_features.csv
                opt --disable-output -load-pass-plugin="${PATH3LIB}" -passes="${PASS}" combined.profdata.bc >> ../loop_features.csv 2>&1
                echo "" >> ../loop_features.csv
            else
                printf "    No profile data generated\n"
            fi
        fi
        
        # Return to parent directory
        cd ..
    fi
done

# Cleanup temporary files
rm -f *.bc *.prof.bc *.profdata *_prof */obj/*.bc */combined.* */default.profraw */combined_prof
