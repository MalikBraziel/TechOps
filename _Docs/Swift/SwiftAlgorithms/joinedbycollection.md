---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection"
title: "JoinedByCollection | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Joining](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining)
- JoinedByCollection

Structure

# JoinedByCollection

A collection that presents the elements of a base collection of collections concatenated using a given separator.

```
struct JoinedByCollection<Base, Separator> where Base : Collection, Separator : Collection, Base.Element : Collection, Separator.Element == Base.Element.Element
```

[Joined.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Joined.swift#L122 "Open source file for Joined.swift")

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection\#topics)

### [Default Implementations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection\#Default-Implementations)

[API Reference\\
BidirectionalCollection Implementations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/bidirectionalcollection-implementations)

[API Reference\\
BidirectionalCollection Implementations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/bidirectionalcollection-implementations)

[API Reference\\
Collection Implementations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/collection-implementations)

[API Reference\\
Collection Implementations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/collection-implementations)

[API Reference\\
LazySequenceProtocol Implementations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/lazysequenceprotocol-implementations)

[API Reference\\
LazySequenceProtocol Implementations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/lazysequenceprotocol-implementations)

[API Reference\\
Sequence Implementations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/sequence-implementations)

[API Reference\\
Sequence Implementations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/sequence-implementations)

## [Relationships](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection\#relationships)

### [Conforms To](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection\#conforms-to)

- `Swift.BidirectionalCollection`
- `Swift.Collection`
- `Swift.Copyable`
- `Swift.LazyCollectionProtocol`
- `Swift.LazySequenceProtocol`
- `Swift.Sequence`

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection\#see-also)

### [Supporting Types](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection\#Supporting-Types)

[`struct JoinedBySequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbysequence)

A sequence that presents the elements of a base sequence of sequences concatenated using a given separator.

[`struct JoinedByClosureSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosuresequence)

A sequence that presents the elements of a base sequence of sequences concatenated using a given separator that depends on the sequences right before and after it.

[`struct JoinedByClosureCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosurecollection)

A collection that presents the elements of a base collection of collections concatenated using a given separator that depends on the collections right before and after it.

[`struct InterspersedSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/interspersedsequence)

A sequence that presents the elements of a base sequence of elements with a separator between each of those elements.

- [JoinedByCollection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection#app-top)
- [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection#topics)
- [Relationships](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection#relationships)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection#see-also)

Current page is JoinedByCollection

|
|