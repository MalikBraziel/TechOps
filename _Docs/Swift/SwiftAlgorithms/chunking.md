---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chunking"
title: "Chunking | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chunking#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- Chunking

API Collection

# Chunking

Break collections into consecutive chunks by length, count, or based on closure-based logic.

## [Overview](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chunking\#Overview)

_Chunking_ is the process of breaking a collection into consecutive subsequences, without dropping or duplicating any of the collection’s elements. After chunking a collection, joining the resulting subsequences produces the original collection of elements, unlike _splitting_, which consumes the separator element(s).

```
let names = ["Ji-sun", "Jin-su", "Min-jae", "Young-ho"]
let evenlyChunked = names.chunks(ofCount: 2)
// ~ [["Ji-sun", "Jin-su"], ["Min-jae", "Young-ho"]]

let chunkedByFirstLetter = names.chunked(on: \.first)
// equivalent to [("J", ["Ji-sun", "Jin-su"]), ("M", ["Min-jae"]), ("Y", ["Young-ho"])]

```

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chunking\#topics)

### [Chunking a Collection by Count](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chunking\#Chunking-a-Collection-by-Count)

[`func chunks(ofCount: Int) -> ChunksOfCountCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/chunks(ofcount:))

Returns a collection of subsequences, each with up to the specified length.

[`func evenlyChunked(in: Int) -> EvenlyChunkedCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/evenlychunked(in:))

Returns a collection of evenly divided consecutive subsequences of this collection.

### [Chunking a Collection by Predicate](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chunking\#Chunking-a-Collection-by-Predicate)

[`func chunked(by: (Self.Element, Self.Element) throws -> Bool) rethrows -> [Self.SubSequence]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/chunked(by:))

Returns a collection of subsequences of this collection, chunked by the given predicate.

[`func chunked(by: (Self.Element, Self.Element) -> Bool) -> ChunkedByCollection<Self.Elements, Self.Element>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/chunked(by:))

Returns a lazy collection of subsequences of this collection, chunked by the given predicate.

### [Chunking a Collection by Subject](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chunking\#Chunking-a-Collection-by-Subject)

[`func chunked<Subject>(on: (Self.Element) throws -> Subject) rethrows -> [(Subject, Self.SubSequence)]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/chunked(on:))

Returns a collection of subsequences of this collection, chunked by grouping elements that project to equal values.

[`func chunked<Subject>(on: (Self.Element) -> Subject) -> ChunkedOnCollection<Self.Elements, Subject>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/chunked(on:))

Returns a lazy collection of subsequences of this collection, chunked by grouping elements that project to equal values.

### [Supporting Types](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chunking\#Supporting-Types)

[`struct ChunkedByCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chunkedbycollection)

A collection wrapper that breaks a collection into chunks based on a predicate.

[`struct ChunkedOnCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chunkedoncollection)

A collection wrapper that breaks a collection into chunks based on a predicate.

[`struct ChunksOfCountCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chunksofcountcollection)

A collection that presents the elements of its base collection in `SubSequence` chunks of any given count.

[`struct EvenlyChunkedCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/evenlychunkedcollection)

A collection wrapper that evenly breaks a collection into a given number of chunks.

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chunking\#see-also)

[API Reference\\
Combinations and Permutations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/combinationspermutations)

Find the combinations and permutations of any collection’s elements, or the product of two different collections.

[API Reference\\
Slicing and Splitting](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/slicingsplitting)

Iterate over tuple pairs of adjacent elements, overlapping windows of a specified size, or lazily-calculated splits.

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

- [Chunking](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chunking#app-top)
- [Overview](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chunking#Overview)
- [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chunking#topics)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chunking#see-also)

Current page is Chunking

|
|