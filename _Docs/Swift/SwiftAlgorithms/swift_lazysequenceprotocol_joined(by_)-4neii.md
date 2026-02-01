---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/joined(by:)-4neii"
title: "joined(by:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/joined(by:)-4neii#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Joining](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining)
- joined(by:)

Instance Method

# joined(by:)

Returns the concatenation of the elements in this collection of collections, inserting the separator produced by the closure between each sequence.

AlgorithmsSwift

```
func joined<Separator>(by separator: @escaping (Self.Element, Self.Element) -> Separator) -> [`JoinedByClosureCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosurecollection) <Self.Elements, Separator> where Separator : Collection, Separator.Element == Self.Element.Element
```

[Joined.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Joined.swift#L484 "Open source file for Joined.swift")

Available when `Element` conforms to `Collection`, `Elements` conforms to `Collection`, and `Self` is `LazySequenceProtocol`.

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/joined(by:)-4neii\#see-also)

### [Joining by a Collection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/joined(by:)-4neii\#Joining-by-a-Collection)

[`func joined<Separator>(by: Separator) -> JoinedBySequence<Self, Separator>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/joined(by:)-62j1h)

Returns the concatenation of the elements in this sequence of sequences, inserting the given separator between each sequence.

[`func joined<Separator>(by: (Self.Element, Self.Element) throws -> Separator) rethrows -> [Self.Element.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/joined(by:)-9b108)

Returns the concatenation of the elements in this sequence of sequences, inserting the separator produced by the closure between each sequence.

[`func joined<Separator>(by: Separator) -> JoinedByCollection<Self, Separator>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/joined(by:)-28n3b)

Returns the concatenation of the elements in this collection of collections, inserting the given separator between each collection.

[`func joined(by: (Self.Element, Self.Element) -> Self.Element.Element) -> JoinedByClosureSequence<Self.Elements, CollectionOfOne<Self.Element.Element>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/joined(by:)-49xws)

Returns the concatenation of the elements in this sequence of sequences, inserting the separator produced by the closure between each sequence.

Current page is joined(by:)

|
|