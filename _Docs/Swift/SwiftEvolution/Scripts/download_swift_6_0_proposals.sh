#!/bin/bash

# Download Swift 6.0 proposal files from GitHub
# Only for remaining placeholders

PROPOSALS=(
  "0432-noncopyable-switch.md"
  "0429-partial-consumption.md"
  "0430-transferring-parameters-and-results.md"
  "0427-noncopyable-generics.md"
  "0428-resolve-distributed-actor-protocols.md"
  "0431-isolated-any-functions.md"
  "0423-dynamic-actor-isolation.md"
  "0420-inheritance-of-actor-isolation.md"
  "0424-custom-isolation-checking-for-serialexecutor.md"
  "0422-caller-side-default-argument-macro-expression.md"
  "0417-task-executor-preference.md"
  "0413-typed-throws.md"
  "0414-region-based-isolation.md"
  "0309-unlock-existential-types-for-all-protocols.md"
  "0346-light-weight-same-type-syntax.md"
  "0408-pack-iteration.md"
  "0352-implicit-open-existentials.md"
  "0110-distinguish-single-tuple-arg.md"
  "0270-rangeset-and-collection-operations.md"
)

OUT_DIR="/Users/prayciouswhite/AuraFarms/ReverseMacOS/0_Documentation/3_Wiki/Swift/SwiftEvolution/Swift_6_0"

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

