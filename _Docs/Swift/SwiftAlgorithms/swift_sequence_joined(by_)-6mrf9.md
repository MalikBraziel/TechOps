---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/joined(by:)-6mrf9"
title: "joined(by:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/joined(by:)-6mrf9#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Joining](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining)
- joined(by:)

Instance Method

# joined(by:)

Returns the concatenation of the elements in this sequence of sequences, inserting the given separator between each sequence.

AlgorithmsSwift

```
func joined(by separator: Self.Element.Element) -> [`JoinedBySequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbysequence) <Self, CollectionOfOne<Self.Element.Element>>
```

[Joined.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Joined.swift#L335 "Open source file for Joined.swift")

Available when `Element` conforms to `Sequence` and `Self` is `Sequence`.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/joined(by:)-6mrf9\#discussion)

```
for x in [[1, 2], [3, 4], [5, 6]].joined(by: 100) {
    print(x)
}
// 1, 2, 100, 3, 4, 100, 5, 6

```

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/joined(by:)-6mrf9\#see-also)

### [Joining by an Element](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/joined(by:)-6mrf9\#Joining-by-an-Element)

[`func joined(by: (Self.Element, Self.Element) throws -> Self.Element.Element) rethrows -> [Self.Element.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/joined(by:)-9hyaf)

Returns the concatenation of the elements in this sequence of sequences, inserting the separator produced by the closure between each sequence.

[`func joined(by: Self.Element.Element) -> JoinedByCollection<Self, CollectionOfOne<Self.Element.Element>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/joined(by:)-430ue)

Returns the concatenation of the elements in this collection of collections, inserting the given separator between each collection.

[`func joined(by: (Self.Element, Self.Element) -> Self.Element.Element) -> JoinedByClosureCollection<Self.Elements, CollectionOfOne<Self.Element.Element>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/joined(by:)-3yjw0)

Returns the concatenation of the elements in this collection of collections, inserting the separator produced by the closure between each sequence.

[`func joined<Separator>(by: (Self.Element, Self.Element) -> Separator) -> JoinedByClosureSequence<Self.Elements, Separator>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/joined(by:)-47xvy)

Returns the concatenation of the elements in this sequence of sequences, inserting the separator produced by the closure between each sequence.

- [joined(by:)](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/joined(by:)-6mrf9#app-top)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/joined(by:)-6mrf9#discussion)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/joined(by:)-6mrf9#see-also)

Current page is joined(by:)

|
|