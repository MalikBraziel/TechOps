---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbysequence"
title: "JoinedBySequence | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbysequence#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Joining](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining)
- JoinedBySequence

Structure

# JoinedBySequence

A sequence that presents the elements of a base sequence of sequences concatenated using a given separator.

```
struct JoinedBySequence<Base, Separator> where Base : Sequence, Separator : Sequence, Base.Element : Sequence, Separator.Element == Base.Element.Element
```

[Joined.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Joined.swift#L18 "Open source file for Joined.swift")

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbysequence\#topics)

### [Default Implementations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbysequence\#Default-Implementations)

[API Reference\\
LazySequenceProtocol Implementations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbysequence/lazysequenceprotocol-implementations)

[API Reference\\
LazySequenceProtocol Implementations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbysequence/lazysequenceprotocol-implementations)

[API Reference\\
Sequence Implementations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbysequence/sequence-implementations)

[API Reference\\
Sequence Implementations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbysequence/sequence-implementations)

## [Relationships](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbysequence\#relationships)

### [Conforms To](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbysequence\#conforms-to)

- `Swift.Copyable`
- `Swift.LazySequenceProtocol`
- `Swift.Sequence`

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbysequence\#see-also)

### [Supporting Types](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbysequence\#Supporting-Types)

[`struct JoinedByCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection)

A collection that presents the elements of a base collection of collections concatenated using a given separator.

[`struct JoinedByClosureSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosuresequence)

A sequence that presents the elements of a base sequence of sequences concatenated using a given separator that depends on the sequences right before and after it.

[`struct JoinedByClosureCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosurecollection)

A collection that presents the elements of a base collection of collections concatenated using a given separator that depends on the collections right before and after it.

[`struct InterspersedSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/interspersedsequence)

A sequence that presents the elements of a base sequence of elements with a separator between each of those elements.

- [JoinedBySequence](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbysequence#app-top)
- [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbysequence#topics)
- [Relationships](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbysequence#relationships)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbysequence#see-also)

Current page is JoinedBySequence

|
|