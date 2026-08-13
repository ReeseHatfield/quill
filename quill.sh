#!/bin/bash

shopt -s globstar

shopt -s nullglob

for filepath in **/*.typ; do
    
    FIRST_LINE=$(head -n 1 $filepath)

    if [[ "${FIRST_LINE// /}" == "//quill:ignore" ]]; then
        echo "Ignore file: $filepath"
        continue
    fi

    # if [[ -f "$filepath" ]]; then
    #     echo "Processing file: $FIRST_LINE"
    # fi
done