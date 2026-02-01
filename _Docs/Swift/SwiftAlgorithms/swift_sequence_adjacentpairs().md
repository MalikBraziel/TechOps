---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/adjacentpairs()"
title: "adjacentPairs() | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/adjacentpairs()#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Slicing and Splitting](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/slicingsplitting)
- adjacentPairs()

Instance Method

# adjacentPairs()

Returns a sequence of overlapping adjacent pairs of the elements of this sequence.

AlgorithmsSwift

```
func adjacentPairs() -> [`AdjacentPairsSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/adjacentpairssequence) <Self>
```

[AdjacentPairs.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/AdjacentPairs.swift#L34 "Open source file for AdjacentPairs.swift")

Available when `Self` is `Sequence`.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/adjacentpairs()\#discussion)

In the `AdjacentPairsSequence` returned by this method, the elements of the _i_ th pair are the _i_ th and \*(i+1)\*th elements of the underlying sequence. The following example uses the `adjacentPairs()` method to iterate over adjacent pairs of integers:

```
for pair in (1...).prefix(5).adjacentPairs() {
    print(pair)
}
// Prints "(1, 2)"
// Prints "(2, 3)"
// Prints "(3, 4)"
// Prints "(4, 5)"

```

The resulting sequence is empty when called on an empty or single-element sequence.

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/adjacentpairs()\#see-also)

### [Adjacent Pairs](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/adjacentpairs()\#Adjacent-Pairs)

[`func adjacentPairs() -> AdjacentPairsCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/adjacentpairs())

Returns a collection of overlapping adjacent pairs of the elements of this collection.

- [adjacentPairs()](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/adjacentpairs()#app-top)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/adjacentpairs()#discussion)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/adjacentpairs()#see-also)

Current page is adjacentPairs()

|
|