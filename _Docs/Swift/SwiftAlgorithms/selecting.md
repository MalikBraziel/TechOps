---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/selecting"
title: "Selecting Elements | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/selecting#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- Selecting Elements

API Collection

# Selecting Elements

Select elements at a particular interval, the first mapped value, or iterate of elements with their indices.

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/selecting\#topics)

### [Selecting Elements at an Interval](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/selecting\#Selecting-Elements-at-an-Interval)

[`func striding(by: Int) -> StridingSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/striding(by:))

Returns a sequence stepping through the elements every `step` starting at the first value. Any remainders of the stride will be trimmed.

[`func striding(by: Int) -> StridingCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/striding(by:))

Returns a sequence stepping through the elements every `step` starting at the first value. Any remainders of the stride will be trimmed.

### [Conditionally Finding the First Mapped Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/selecting\#Conditionally-Finding-the-First-Mapped-Value)

[`func firstNonNil<Result>((Self.Element) throws -> Result?) rethrows -> Result?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/firstnonnil(_:))

Returns the first non- `nil` result obtained from applying the given transformation to the elements of the sequence.

### [Iterating Over Elements with Their Indices](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/selecting\#Iterating-Over-Elements-with-Their-Indices)

[`func indexed() -> IndexedCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/indexed())

Returns a collection of pairs _(i, x)_, where _i_ represents an index of the collection, and _x_ represents an element.

### [Supporting Types](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/selecting\#Supporting-Types)

[`struct IndexedCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/indexedcollection)

A collection wrapper that iterates over the indices and elements of a collection together.

[`struct StridingSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingsequence)

A wrapper that strides over a base sequence.

[`struct StridingCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection)

A wrapper that strides over a base collection.

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/selecting\#see-also)

[API Reference\\
Combinations and Permutations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/combinationspermutations)

Find the combinations and permutations of any collection’s elements, or the product of two different collections.

[API Reference\\
Slicing and Splitting](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/slicingsplitting)

Iterate over tuple pairs of adjacent elements, overlapping windows of a specified size, or lazily-calculated splits.

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
Filtering](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/filtering)

Remove duplicated elements or strip the `nil` values from a sequence or collection.

[API Reference\\
Reductions](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/reductions)

Find the incremental values of a sequence “reduce” operation.

[API Reference\\
Partitioning and Rotating](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/partitioning)

Partition a collection according to a unary predicate, rotate a collection around a particular index, or find the index where a collection is already partitioned.

- [Selecting Elements](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/selecting#app-top)
- [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/selecting#topics)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/selecting#see-also)

Current page is Selecting Elements

|
|