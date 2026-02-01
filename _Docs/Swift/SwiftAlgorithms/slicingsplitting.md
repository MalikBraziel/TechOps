---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/slicingsplitting"
title: "Slicing and Splitting | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/slicingsplitting#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- Slicing and Splitting

API Collection

# Slicing and Splitting

Iterate over tuple pairs of adjacent elements, overlapping windows of a specified size, or lazily-calculated splits.

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/slicingsplitting\#topics)

### [Adjacent Pairs](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/slicingsplitting\#Adjacent-Pairs)

[`func adjacentPairs() -> AdjacentPairsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/adjacentpairs())

Returns a sequence of overlapping adjacent pairs of the elements of this sequence.

[`func adjacentPairs() -> AdjacentPairsCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/adjacentpairs())

Returns a collection of overlapping adjacent pairs of the elements of this collection.

### [Windows](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/slicingsplitting\#Windows)

[`func windows(ofCount: Int) -> WindowsOfCountCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/windows(ofcount:))

Returns a collection of all the overlapping slices of a given size.

### [Lazily Splitting a Collection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/slicingsplitting\#Lazily-Splitting-a-Collection)

[`func split(separator: Self.Element, maxSplits: Int, omittingEmptySubsequences: Bool) -> SplitSequence<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-4q4x8)

Lazily returns the longest possible subsequences of the sequence, in order, around elements equal to the given element.

[`func split(maxSplits: Int, omittingEmptySubsequences: Bool, whereSeparator: (Self.Element) -> Bool) -> SplitSequence<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-68oqf)

Lazily returns the longest possible subsequences of the sequence, in order, that don’t contain elements satisfying the given predicate.

[`func split(separator: Self.Element, maxSplits: Int, omittingEmptySubsequences: Bool) -> SplitCollection<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-a46s)

Lazily returns the longest possible subsequences of the collection, in order, around elements equal to the given element.

[`func split(maxSplits: Int, omittingEmptySubsequences: Bool, whereSeparator: (Self.Element) -> Bool) -> SplitCollection<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-3rwee)

Lazily returns the longest possible subsequences of the collection, in order, that don’t contain elements satisfying the given predicate.

### [Supporting Types](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/slicingsplitting\#Supporting-Types)

[`struct AdjacentPairsSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/adjacentpairssequence)

A sequence of adjacent pairs of elements built from an underlying sequence.

[`struct AdjacentPairsCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/adjacentpairscollection)

A collection of adjacent pairs of elements built from an underlying collection.

[`struct WindowsOfCountCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection)

A collection wrapper that presents a sliding window over the elements of a collection.

[`struct SplitSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/splitsequence)

A sequence that lazily splits a base sequence into subsequences separated by elements that satisfy the given `whereSeparator` predicate.

[`struct SplitCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/splitcollection)

A collection that lazily splits a base collection into subsequences separated by elements that satisfy the given `whereSeparator` predicate.

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/slicingsplitting\#see-also)

[API Reference\\
Combinations and Permutations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/combinationspermutations)

Find the combinations and permutations of any collection’s elements, or the product of two different collections.

[API Reference\\
Chunking](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chunking)

Break collections into consecutive chunks by length, count, or based on closure-based logic.

[API Reference\\
Joining](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining)

Join the parts of a collection of collections, providing a connecting element or collection, or a closure that produces the connector.

[API Reference\\
Extending](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/extending)

Chain two collections end-to-end, or repeat a collection forever or a specific number of times.

[API Reference\\
Trimming](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/trimming)

Remove unwanted elements from the start, the end, or both ends of a collection.

[API Reference\\
Keying and Grouping](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/keying)

Convert a sequence to a dictionary, providing keys to individual elements or to use as grouping values.

[API Reference\\
Random Sampling](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/sampling)

Choose a specified number of random elements from a sequence or collection.

[API Reference\\
Finding the Minimum and Maximum](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/minandmax)

Find the minimum and maximum elements simultaneously, or a specific number of elements at the minimum and maximum.

[API Reference\\
Selecting Elements](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/selecting)

Select elements at a particular interval, the first mapped value, or iterate of elements with their indices.

[API Reference\\
Filtering](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/filtering)

Remove duplicated elements or strip the `nil` values from a sequence or collection.

[API Reference\\
Reductions](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/reductions)

Find the incremental values of a sequence “reduce” operation.

[API Reference\\
Partitioning and Rotating](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/partitioning)

Partition a collection according to a unary predicate, rotate a collection around a particular index, or find the index where a collection is already partitioned.

- [Slicing and Splitting](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/slicingsplitting#app-top)
- [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/slicingsplitting#topics)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/slicingsplitting#see-also)

Current page is Slicing and Splitting

|
|