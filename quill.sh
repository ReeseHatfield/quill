#!/bin/bash

shopt -s globstar

shopt -s nullglob

for filepath in **/*.typ; do
    
    FIRST_LINE=$(head -n 1 "$filepath")

    if [[ "${FIRST_LINE// /}" == "//quill:ignore" ]]; then
        echo "Ignoring file: $filepath"
        continue
    fi


    # query for random label, but dont spend time actually compiling document
    typst eval 'query(<dummy-label>)' --in "$filepath" > /dev/null

    if [ $? -eq 1 ]; then
        echo "Error: could not compile $filepath"
        exit 1
    fi

    # may want to consider expanding this to save the compiled output
    # but that is complex enough that I think this should basically just be a quick compile check
done