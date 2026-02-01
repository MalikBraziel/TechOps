---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/partitioning"
title: "Partitioning and Rotating | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/partitioning#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- Partitioning and Rotating

API Collection

# Partitioning and Rotating

Partition a collection according to a unary predicate, rotate a collection around a particular index, or find the index where a collection is already partitioned.

## [Overview](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/partitioning\#Overview)

A _stable partition_ maintains the relative order of elements within both partitions.

```
// partition(by:) - unstable ordering
var numbers = [10, 20, 30, 40, 50, 60, 70, 80]
let p1 = numbers.partition(by: { $0.isMultiple(of: 20) })
// p1 == 4
// numbers == [10, 70, 30, 50, 40, 60, 20, 80]
//                             ^ start of second partition

// stablePartition(by:) - maintains relative ordering
numbers = [10, 20, 30, 40, 50, 60, 70, 80]
let p2 = numbers.stablePartition(by: { $0.isMultiple(of: 20) })
// p2 == 4
// numbers == [10, 30, 50, 70, 20, 40, 60, 80]
//                             ^ start of second partition

```

Use the `rotate` method to shift the elements of a collection to start at a new position, moving the displaced elements to the end:

```
var numbers = [10, 20, 30, 40, 50, 60, 70, 80]
let p = numbers.rotate(toStartAt: 2)
// numbers == [30, 40, 50, 60, 70, 80, 10, 20]
// p == 6 -- numbers[p] == 10

```

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/partitioning\#topics)

### [Stable Partition](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/partitioning\#Stable-Partition)

[`func stablePartition(by: (Self.Element) throws -> Bool) rethrows -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/mutablecollection/stablepartition(by:))

Moves all elements satisfying the given predicate into a suffix of this collection, preserving the relative order of the elements in both partitions, and returns the start of the resulting suffix.

[`func stablePartition(subrange: Range<Self.Index>, by: (Self.Element) throws -> Bool) rethrows -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/mutablecollection/stablepartition(subrange:by:))

Moves all elements satisfying the given predicate into a suffix of the given range, preserving the relative order of the elements in both partitions, and returns the start of the resulting suffix.

[`func partitioned(by: (Self.Element) throws -> Bool) rethrows -> (falseElements: [Self.Element], trueElements: [Self.Element])`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/partitioned(by:))

Returns two arrays containing the elements of the sequence that don’t and do satisfy the given predicate, respectively.

[`func partitioned(by: (Self.Element) throws -> Bool) rethrows -> (falseElements: [Self.Element], trueElements: [Self.Element])`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/partitioned(by:))

Returns two arrays containing the elements of the collection that don’t and do satisfy the given predicate, respectively.

### [Partition of Subranges](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/partitioning\#Partition-of-Subranges)

[`func partition(subrange: Range<Self.Index>, by: (Self.Element) throws -> Bool) rethrows -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/mutablecollection/partition(subrange:by:)-5vdh7)

Moves all elements satisfying `isSuffixElement` into a suffix of the collection, returning the start position of the resulting suffix.

[`func partition(subrange: Range<Self.Index>, by: (Self.Element) throws -> Bool) rethrows -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/mutablecollection/partition(subrange:by:)-4gpqz)

Moves all elements satisfying `isSuffixElement` into a suffix of the collection, returning the start position of the resulting suffix.

### [Finding a Partition Index](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/partitioning\#Finding-a-Partition-Index)

[`func partitioningIndex(where: (Self.Element) throws -> Bool) rethrows -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/partitioningindex(where:))

Returns the start index of the partition of a collection that matches the given predicate.

### [Rotation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/partitioning\#Rotation)

[`func rotate(toStartAt: Self.Index) -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/mutablecollection/rotate(tostartat:)-9fp48)

Rotates the elements of this collection so that the element at the specified index becomes the start of the collection.

[`func rotate(toStartAt: Self.Index) -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/mutablecollection/rotate(tostartat:)-2r55j)

Rotates the elements of this collection so that the element at the specified index becomes the start of the collection.

[`func rotate(subrange: Range<Self.Index>, toStartAt: Self.Index) -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/mutablecollection/rotate(subrange:tostartat:)-ov6a)

Rotates the elements within the given subrange so that the element at the specified index becomes the start of the subrange.

[`func rotate(subrange: Range<Self.Index>, toStartAt: Self.Index) -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/mutablecollection/rotate(subrange:tostartat:)-5teoq)

Rotates the elements within the given subrange so that the element at the specified index becomes the start of the subrange.

### [Reversing](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/partitioning\#Reversing)

[`func reverse(subrange: Range<Self.Index>)`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/mutablecollection/reverse(subrange:))

Reverses the elements within the given subrange.

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/partitioning\#see-also)

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
Filtering](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/filtering)

Remove duplicated elements or strip the `nil` values from a sequence or collection.

[API Reference\\
Reductions](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/reductions)

Find the incremental values of a sequence “reduce” operation.

- [Partitioning and Rotating](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/partitioning#app-top)
- [Overview](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/partitioning#Overview)
- [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/partitioning#topics)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/partitioning#see-also)

Current page is Partitioning and Rotating

|
|