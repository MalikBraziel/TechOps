#!/bin/bash

# Download Swift 5.9 proposal files from GitHub

PROPOSALS=(
  "0366-move-function.md"
  "0377-parameter-ownership-modifiers.md"
  "0380-if-switch-expressions.md"
  "0382-expression-macros.md"
  "0389-attached-macros.md"
  "0394-swiftpm-expression-macros.md"
  "0397-freestanding-declaration-macros.md"
)

OUT_DIR="/Users/prayciouswhite/AuraFarms/ReverseMacOS/0_Documentation/3_Wiki/Swift/SwiftEvolution/Swift_5_9"

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

