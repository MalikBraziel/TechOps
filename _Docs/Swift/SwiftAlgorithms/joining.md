---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining"
title: "Joining | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- Joining

API Collection

# Joining

Join the parts of a collection of collections, providing a connecting element or collection, or a closure that produces the connector.

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining\#topics)

### [Joining by an Element](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining\#Joining-by-an-Element)

[`func joined(by: Self.Element.Element) -> JoinedBySequence<Self, CollectionOfOne<Self.Element.Element>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/joined(by:)-6mrf9)

Returns the concatenation of the elements in this sequence of sequences, inserting the given separator between each sequence.

[`func joined(by: (Self.Element, Self.Element) throws -> Self.Element.Element) rethrows -> [Self.Element.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/joined(by:)-9hyaf)

Returns the concatenation of the elements in this sequence of sequences, inserting the separator produced by the closure between each sequence.

[`func joined(by: Self.Element.Element) -> JoinedByCollection<Self, CollectionOfOne<Self.Element.Element>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/joined(by:)-430ue)

Returns the concatenation of the elements in this collection of collections, inserting the given separator between each collection.

[`func joined(by: (Self.Element, Self.Element) -> Self.Element.Element) -> JoinedByClosureCollection<Self.Elements, CollectionOfOne<Self.Element.Element>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/joined(by:)-3yjw0)

Returns the concatenation of the elements in this collection of collections, inserting the separator produced by the closure between each sequence.

[`func joined<Separator>(by: (Self.Element, Self.Element) -> Separator) -> JoinedByClosureSequence<Self.Elements, Separator>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/joined(by:)-47xvy)

Returns the concatenation of the elements in this sequence of sequences, inserting the separator produced by the closure between each sequence.

### [Joining by a Collection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining\#Joining-by-a-Collection)

[`func joined<Separator>(by: Separator) -> JoinedBySequence<Self, Separator>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/joined(by:)-62j1h)

Returns the concatenation of the elements in this sequence of sequences, inserting the given separator between each sequence.

[`func joined<Separator>(by: (Self.Element, Self.Element) throws -> Separator) rethrows -> [Self.Element.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/joined(by:)-9b108)

Returns the concatenation of the elements in this sequence of sequences, inserting the separator produced by the closure between each sequence.

[`func joined<Separator>(by: Separator) -> JoinedByCollection<Self, Separator>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/joined(by:)-28n3b)

Returns the concatenation of the elements in this collection of collections, inserting the given separator between each collection.

[`func joined<Separator>(by: (Self.Element, Self.Element) -> Separator) -> JoinedByClosureCollection<Self.Elements, Separator>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/joined(by:)-4neii)

Returns the concatenation of the elements in this collection of collections, inserting the separator produced by the closure between each sequence.

[`func joined(by: (Self.Element, Self.Element) -> Self.Element.Element) -> JoinedByClosureSequence<Self.Elements, CollectionOfOne<Self.Element.Element>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/joined(by:)-49xws)

Returns the concatenation of the elements in this sequence of sequences, inserting the separator produced by the closure between each sequence.

### [Interspersing Elements](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining\#Interspersing-Elements)

[`func interspersed(with: Self.Element) -> InterspersedSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/interspersed(with:))

Returns a sequence containing elements of this sequence with the given separator inserted in between each element.

### [Supporting Types](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining\#Supporting-Types)

[`struct JoinedBySequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbysequence)

A sequence that presents the elements of a base sequence of sequences concatenated using a given separator.

[`struct JoinedByCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection)

A collection that presents the elements of a base collection of collections concatenated using a given separator.

[`struct JoinedByClosureSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosuresequence)

A sequence that presents the elements of a base sequence of sequences concatenated using a given separator that depends on the sequences right before and after it.

[`struct JoinedByClosureCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosurecollection)

A collection that presents the elements of a base collection of collections concatenated using a given separator that depends on the collections right before and after it.

[`struct InterspersedSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/interspersedsequence)

A sequence that presents the elements of a base sequence of elements with a separator between each of those elements.

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining\#see-also)

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

- [Joining](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining#app-top)
- [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining#topics)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining#see-also)

Current page is Joining

|
|