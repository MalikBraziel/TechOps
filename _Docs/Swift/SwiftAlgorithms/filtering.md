---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/filtering"
title: "Filtering | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/filtering#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- Filtering

API Collection

# Filtering

Remove duplicated elements or strip the `nil` values from a sequence or collection.

## [Overview](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/filtering\#Overview)

Use the _uniquing_ methods to remove duplicates from a sequence or collection, or to remove elements that have a duplicated property.

```
let numbers = [1, 2, 3, 3, 2, 3, 3, 2, 2, 2, 1]

let unique = numbers.uniqued()
// Array(unique) == [1, 2, 3]

```

The `compacted()` method removes all `nil` values from a sequence or collection of optionals:

```
let array: [Int?] = [10, nil, 30, nil, 2, 3, nil, 5]
let withNoNils = array.compacted()
// Array(withNoNils) == [10, 30, 2, 3, 5]

```

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/filtering\#topics)

### [Uniquing Elements](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/filtering\#Uniquing-Elements)

[`func uniqued() -> UniquedSequence<Self, Self.Element>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/uniqued())

Returns a sequence with only the unique elements of this sequence, in the order of the first occurrence of each unique element.

[`func uniqued<Subject>(on: (Self.Element) throws -> Subject) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/uniqued(on:))

Returns an array with the unique elements of this sequence (as determined by the given projection), in the order of the first occurrence of each unique element.

[`func uniqued<Subject>(on: (Self.Element) -> Subject) -> UniquedSequence<Self, Subject>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/uniqued(on:))

Returns a lazy sequence with the unique elements of this sequence (as determined by the given projection), in the order of the first occurrence of each unique element.

### [Filtering out \`nil\` Elements](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/filtering\#Filtering-out-nil-Elements)

[`func compacted<Unwrapped>() -> CompactedCollection<Self, Unwrapped>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/compacted())

Returns a new `Collection` that iterates over every non-nil element from the original `Collection`.

[`func compacted<Unwrapped>() -> CompactedSequence<Self, Unwrapped>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/compacted())

Returns a new `Sequence` that iterates over every non-nil element from the original `Sequence`.

### [Supporting Types](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/filtering\#Supporting-Types)

[`struct UniquedSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/uniquedsequence)

A sequence wrapper that leaves out duplicate elements of a base sequence.

[`struct CompactedSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/compactedsequence)

A `Sequence` that iterates over every non-nil element from the original `Sequence`.

[`struct CompactedCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/compactedcollection)

A `Collection` that iterates over every non-nil element from the original `Collection`.

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/filtering\#see-also)

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
Selecting Elements](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/selecting)

Select elements at a particular interval, the first mapped value, or iterate of elements with their indices.

[API Reference\\
Reductions](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/reductions)

Find the incremental values of a sequence “reduce” operation.

[API Reference\\
Partitioning and Rotating](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/partitioning)

Partition a collection according to a unary predicate, rotate a collection around a particular index, or find the index where a collection is already partitioned.

- [Filtering](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/filtering#app-top)
- [Overview](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/filtering#Overview)
- [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/filtering#topics)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/filtering#see-also)

Current page is Filtering

|
|