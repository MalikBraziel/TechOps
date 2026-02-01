---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/joined(by:)-3yjw0"
title: "joined(by:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/joined(by:)-3yjw0#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Joining](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining)
- joined(by:)

Instance Method

# joined(by:)

Returns the concatenation of the elements in this collection of collections, inserting the separator produced by the closure between each sequence.

AlgorithmsSwift

```
func joined(by separator: @escaping (Self.Element, Self.Element) -> Self.Element.Element) -> [`JoinedByClosureCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosurecollection) <Self.Elements, CollectionOfOne<Self.Element.Element>>
```

[Joined.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Joined.swift#L474 "Open source file for Joined.swift")

Available when `Element` conforms to `Collection`, `Elements` conforms to `Collection`, and `Self` is `LazySequenceProtocol`.

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/joined(by:)-3yjw0\#see-also)

### [Joining by an Element](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/joined(by:)-3yjw0\#Joining-by-an-Element)

[`func joined(by: Self.Element.Element) -> JoinedBySequence<Self, CollectionOfOne<Self.Element.Element>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/joined(by:)-6mrf9)

Returns the concatenation of the elements in this sequence of sequences, inserting the given separator between each sequence.

[`func joined(by: (Self.Element, Self.Element) throws -> Self.Element.Element) rethrows -> [Self.Element.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/joined(by:)-9hyaf)

Returns the concatenation of the elements in this sequence of sequences, inserting the separator produced by the closure between each sequence.

[`func joined(by: Self.Element.Element) -> JoinedByCollection<Self, CollectionOfOne<Self.Element.Element>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/joined(by:)-430ue)

Returns the concatenation of the elements in this collection of collections, inserting the given separator between each collection.

[`func joined<Separator>(by: (Self.Element, Self.Element) -> Separator) -> JoinedByClosureSequence<Self.Elements, Separator>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/joined(by:)-47xvy)

Returns the concatenation of the elements in this sequence of sequences, inserting the separator produced by the closure between each sequence.

Current page is joined(by:)

|
|