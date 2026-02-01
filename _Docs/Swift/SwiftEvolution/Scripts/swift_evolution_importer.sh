#!/bin/bash
set -e

ROOT_DIR="/Users/prayciouswhite/AuraFarms/ReverseMacOS"
CHANGELOG_FILE="$ROOT_DIR/0_Documentation/3_Wiki/Swift/SwiftEvolution/CHANGELOG.md"
OUT_BASE="$ROOT_DIR/0_Documentation/3_Wiki/Swift/SwiftEvolution"

# Extract section
extract_section() {
    local pattern="$1"
    head -n 1250 "$CHANGELOG_FILE" | awk -v pat="$pattern" 'BEGIN{on=0} $0 ~ ("^## " pat) {on=1; print; next} on && /^## Swift / { exit } on { print }'
}

# Extract SE IDs
extract_se_ids() {
    grep -oE '\[SE-[0-9]{4}\]' | tr -d '[]' | sort -u
}

# Resolve SE URL
resolve_se_url() {
    local se_id="$1"
    sed -n '10594,10928p' "$CHANGELOG_FILE" | grep -E "^\[$se_id\]:" | head -n1 | sed -E 's/^\[[^]]+\]:[[:space:]]*<?([^>[:space:]]+)>?.*/\1/'
}

# Convert blob to raw
to_raw_url() {
    echo "$1" | sed -E 's#https://github\.com/([^/]+)/([^/]+)/blob/([^/]+)/(.*)#https://raw.githubusercontent.com/\1/\2/\3/\4#'
}

# Download proposal
download_proposal() {
    local se_id="$1"
    local target_dir="$2"
    
    local url=$(resolve_se_url "$se_id")
    if [ -z "$url" ]; then
        echo "SKIP: $se_id - URL not found"
        return 1
    fi
    
    local raw_url=$(to_raw_url "$url")
    local fname=$(basename "${raw_url%%\?*}")
    local target="$target_dir/$fname"
    local tmp=$(mktemp)
    
    if curl -fsSL "$raw_url" -o "$tmp" 2>/dev/null; then
        if [ -f "$target" ]; then
            if cmp -s "$target" "$tmp"; then
                rm -f "$tmp"
                echo "SKIP: $se_id - No change"
                return 0
            else
                cp -p "$target" "$target.bak.$(date +%Y%m%d-%H%M%S)"
            fi
        fi
        mv "$tmp" "$target"
        echo "OK: $se_id -> $fname"
        return 0
    else
        rm -f "$tmp"
        echo "ERROR: $se_id - Download failed"
        return 1
    fi
}

# Process versions
for version_spec in "Swift_5_10|Swift 5\.10" "Swift_5_9|Swift 5\.9$" "Swift_5_9_2|Swift 5\.9\.2" "Swift_Next|Swift \(next\)"; do
    IFS='|' read version_folder pattern <<< "$version_spec"
    
    echo ""
    echo "=== Processing: $version_folder ==="
    
    out_dir="$OUT_BASE/$version_folder"
    mkdir -p "$out_dir"
    
    section=$(extract_section "$pattern")
    if [ -z "$section" ]; then
        echo "SKIP: Section not found"
        continue
    fi
    
    # Generate changelog filename
    changelog_name=$(echo "$version_folder" | sed 's/Swift_//; s/_/./g; s/Next/next/' | tr '[:upper:]' '[:lower:]')
    changelog_name="${changelog_name}_changelog.md"
    
    echo "$section" > "$out_dir/$changelog_name"
    echo "WROTE: $changelog_name"
    
    se_ids=$(echo "$section" | extract_se_ids)
    if [ -z "$se_ids" ]; then
        echo "INFO: No proposals found"
        continue
    fi
    
    echo "Found SE IDs: $se_ids"
    for se_id in $se_ids; do
        download_proposal "$se_id" "$out_dir"
    done
done

echo ""
echo "✅ Import complete!"
