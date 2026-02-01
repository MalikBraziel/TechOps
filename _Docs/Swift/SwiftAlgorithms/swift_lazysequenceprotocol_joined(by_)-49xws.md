---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/joined(by:)-49xws"
title: "joined(by:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/joined(by:)-49xws#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Joining](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining)
- joined(by:)

Instance Method

# joined(by:)

Returns the concatenation of the elements in this sequence of sequences, inserting the separator produced by the closure between each sequence.

AlgorithmsSwift

```
func joined(by separator: @escaping (Self.Element, Self.Element) -> Self.Element.Element) -> [`JoinedByClosureSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosuresequence) <Self.Elements, CollectionOfOne<Self.Element.Element>>
```

[Joined.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Joined.swift#L415 "Open source file for Joined.swift")

Available when `Element` conforms to `Sequence` and `Self` is `LazySequenceProtocol`.

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/joined(by:)-49xws\#see-also)

### [Joining by a Collection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/joined(by:)-49xws\#Joining-by-a-Collection)

[`func joined<Separator>(by: Separator) -> JoinedBySequence<Self, Separator>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/joined(by:)-62j1h)

Returns the concatenation of the elements in this sequence of sequences, inserting the given separator between each sequence.

[`func joined<Separator>(by: (Self.Element, Self.Element) throws -> Separator) rethrows -> [Self.Element.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/joined(by:)-9b108)

Returns the concatenation of the elements in this sequence of sequences, inserting the separator produced by the closure between each sequence.

[`func joined<Separator>(by: Separator) -> JoinedByCollection<Self, Separator>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/joined(by:)-28n3b)

Returns the concatenation of the elements in this collection of collections, inserting the given separator between each collection.

[`func joined<Separator>(by: (Self.Element, Self.Element) -> Separator) -> JoinedByClosureCollection<Self.Elements, Separator>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/joined(by:)-4neii)

Returns the concatenation of the elements in this collection of collections, inserting the separator produced by the closure between each sequence.

Current page is joined(by:)

|
|