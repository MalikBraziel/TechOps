---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/extending"
title: "Extending | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/extending#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- Extending

API Collection

# Extending

Chain two collections end-to-end, or repeat a collection forever or a specific number of times.

## [Overview](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/extending\#Overview)

_Chaining_ two collections

```
let letters = chain("abcd", "EFGH")
// String(letters) == "abcdEFGH"

for (num, letter) in zip((1...3).cycled(), letters) {
    print(num, letter)
}
// 1 a
// 2 b
// 3 c
// 1 d
// 2 E
// 3 F
// 1 G
// 2 H

```

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/extending\#topics)

### [Chaining Two Collections](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/extending\#Chaining-Two-Collections)

[`func chain<S1, S2>(S1, S2) -> Chain2Sequence<S1, S2>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chain(_:_:))

Returns a new sequence that iterates over the two given sequences, one followed by the other.

### [Cycling a Collection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/extending\#Cycling-a-Collection)

[`func cycled() -> CycledSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled())

Returns a sequence that repeats the elements of this collection forever.

[`func cycled(times: Int) -> CycledTimesCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled(times:))

Returns a sequence that repeats the elements of this collection the specified number of times.

### [Supporting Types](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/extending\#Supporting-Types)

[`struct Chain2Sequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chain2sequence)

A concatenation of two sequences with the same element type.

[`struct CycledSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/cycledsequence)

A collection wrapper that repeats the elements of a base collection.

[`struct CycledTimesCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/cycledtimescollection)

A collection wrapper that repeats the elements of a base collection for a finite number of times.

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/extending\#see-also)

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

- [Extending](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/extending#app-top)
- [Overview](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/extending#Overview)
- [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/extending#topics)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/extending#see-also)

Current page is Extending

|
|