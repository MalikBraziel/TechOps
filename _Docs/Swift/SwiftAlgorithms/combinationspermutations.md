---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/combinationspermutations"
title: "Combinations and Permutations | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/combinationspermutations#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- Combinations and Permutations

API Collection

# Combinations and Permutations

Find the combinations and permutations of any collection’s elements, or the product of two different collections.

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/combinationspermutations\#topics)

### [Combinations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/combinationspermutations\#Combinations)

[`func combinations(ofCount: Int) -> CombinationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/combinations(ofcount:)-26o4x)

Returns a collection of combinations of this collection’s elements, with each combination having the specified number of elements.

[`func combinations<R>(ofCount: R) -> CombinationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/combinations(ofcount:)-53jql)

Returns a collection of combinations of this collection’s elements, with each combination having the specified number of elements.

### [Permutations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/combinationspermutations\#Permutations)

[`func permutations(ofCount: Int?) -> PermutationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/permutations(ofcount:)-7rc99)

Returns a collection of the permutations of this collection of the specified length.

[`func permutations<R>(ofCount: R) -> PermutationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/permutations(ofcount:)-5zvhn)

Returns a collection of the permutations of this collection with lengths in the specified range.

### [Unique Permutations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/combinationspermutations\#Unique-Permutations)

[`func uniquePermutations(ofCount: Int?) -> UniquePermutationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/uniquepermutations(ofcount:)-2extq)

Returns a sequence of the unique permutations of this sequence of the specified length.

[`func uniquePermutations<R>(ofCount: R) -> UniquePermutationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/uniquepermutations(ofcount:)-48r1k)

Returns a collection of the unique permutations of this sequence with lengths in the specified range.

### [Product](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/combinationspermutations\#Product)

[`func product<Base1, Base2>(Base1, Base2) -> Product2Sequence<Base1, Base2>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/product(_:_:))

Creates a sequence of each pair of elements of two underlying sequences.

### [Supporting Types](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/combinationspermutations\#Supporting-Types)

[`struct CombinationsSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/combinationssequence)

A collection wrapper that generates combinations of a base collection.

[`struct PermutationsSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/permutationssequence)

A sequence of all the permutations of a collection’s elements.

[`struct UniquePermutationsSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/uniquepermutationssequence)

A sequence of the unique permutations of the elements of a sequence or collection.

[`struct Product2Sequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/product2sequence)

A sequence that represents the product of two sequences’ elements.

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/combinationspermutations\#see-also)

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

[API Reference\\
Partitioning and Rotating](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/partitioning)

Partition a collection according to a unary predicate, rotate a collection around a particular index, or find the index where a collection is already partitioned.

- [Combinations and Permutations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/combinationspermutations#app-top)
- [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/combinationspermutations#topics)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/combinationspermutations#see-also)

Current page is Combinations and Permutations

|
|