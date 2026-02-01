#!/bin/bash

# Download Swift 5.9.2 proposal files from GitHub

PROPOSALS=(
  "0407-member-macro-conformances.md"
)

OUT_DIR="/Users/prayciouswhite/AuraFarms/ReverseMacOS/0_Documentation/3_Wiki/Swift/SwiftEvolution/Swift_5_9_2"

for proposal in "${PROPOSALS[@]}"; do
  echo "Downloading $proposal..."
  curl -fsSL "https://raw.githubusercontent.com/apple/swift-evolution/main/proposals/$proposal" \
    -o "$OUT_DIR/$proposal"
  if [ $? -eq 0 ]; then
    echo "✅ Downloaded: $proposal"
  else
    echo "❌ Failed: $proposal"
  fi
done

echo "All done!"

