#!/bin/bash

# Script to rename Swift Algorithms documentation files
# Removes the verbose prefix and trailing underscores before .md extension

echo "Starting file renaming process..."

# Counter for renamed files
renamed_count=0

# Process all .md files in the current directory
for file in *.md; do
    if [ -f "$file" ]; then
        echo "Processing: $file"

        # Remove the prefix "swiftpackageindex.com_apple_swift-algorithms_1.2.1_documentation_algorithms_"
        new_name="${file#swiftpackageindex.com_apple_swift-algorithms_1.2.1_documentation_algorithms_}"

        # Remove trailing underscores before .md extension
        # This handles cases where there might be underscores right before .md
        new_name=$(echo "$new_name" | sed 's/_\.md$/.md/')

        # Only rename if the name actually changed
        if [ "$file" != "$new_name" ]; then
            # Check if target file already exists
            if [ -f "$new_name" ]; then
                echo "  Warning: Target file '$new_name' already exists. Skipping '$file'"
                continue
            fi

            # Rename the file
            mv "$file" "$new_name"
            echo "  Renamed: $file -> $new_name"
            ((renamed_count++))
        else
            echo "  No change needed for: $file"
        fi
    fi
done

echo "File renaming complete. Renamed $renamed_count files."
