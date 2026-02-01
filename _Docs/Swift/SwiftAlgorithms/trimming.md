---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/trimming"
title: "Trimming | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/trimming#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- Trimming

API Collection

# Trimming

Remove unwanted elements from the start, the end, or both ends of a collection.

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/trimming\#topics)

### [Trimming Both Ends of a Collection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/trimming\#Trimming-Both-Ends-of-a-Collection)

[`func trimming(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimming(while:))

Returns a `SubSequence` formed by discarding all elements at the start and end of the collection which satisfy the given predicate.

[`func trim(while: (Self.Element) throws -> Bool) rethrows`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trim(while:)-781az)

Mutates a `BidirectionalCollection` by discarding all elements at the start and at the end of it which satisfy the given predicate.

[`func trim(while: (Self.Element) throws -> Bool) rethrows`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trim(while:)-6cbz3)

Mutates a `BidirectionalCollection` by discarding all elements at the start and at the end of it which satisfy the given predicate.

### [Trimming from the Start](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/trimming\#Trimming-from-the-Start)

[`func trimmingPrefix(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimmingprefix(while:))

Returns a `SubSequence` formed by discarding all elements at the start of the collection which satisfy the given predicate.

[`func trimPrefix(while: (Self.Element) throws -> Bool) rethrows`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimprefix(while:)-2r8n8)

Mutates a `Collection` by discarding all elements at the start of it which satisfy the given predicate.

[`func trimPrefix(while: (Self.Element) throws -> Bool) rethrows`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimprefix(while:)-93obt)

Mutates a `Collection` by discarding all elements at the start of it which satisfy the given predicate.

### [Trimming from the End](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/trimming\#Trimming-from-the-End)

[`func trimmingSuffix(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimmingsuffix(while:))

Returns a `SubSequence` formed by discarding all elements at the end of the collection which satisfy the given predicate.

[`func trimSuffix(while: (Self.Element) throws -> Bool) rethrows`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimsuffix(while:)-33ubj)

Mutates a `BidirectionalCollection` by discarding all elements at the end of it which satisfy the given predicate.

[`func trimSuffix(while: (Self.Element) throws -> Bool) rethrows`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimsuffix(while:)-3o6x9)

Mutates a `BidirectionalCollection` by discarding all elements at the end of it which satisfy the given predicate.

### [Finding the Suffix of a Collection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/trimming\#Finding-the-Suffix-of-a-Collection)

[`func suffix(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/suffix(while:))

Returns a subsequence containing the elements from the end until `predicate` returns `false` and skipping the remaining elements.

### [Finding Boundaries within a Collection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/trimming\#Finding-Boundaries-within-a-Collection)

[`func endOfPrefix(while: (Self.Element) throws -> Bool) rethrows -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/endofprefix(while:))

Returns the exclusive upper bound of the prefix of elements that satisfy the predicate.

[`func startOfSuffix(while: (Self.Element) throws -> Bool) rethrows -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/startofsuffix(while:))

Returns the inclusive lower bound of the suffix of elements that satisfy the predicate.

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/trimming\#see-also)

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

- [Trimming](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/trimming#app-top)
- [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/trimming#topics)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/trimming#see-also)

Current page is Trimming

|
|