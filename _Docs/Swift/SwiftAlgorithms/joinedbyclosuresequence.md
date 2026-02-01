---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosuresequence"
title: "JoinedByClosureSequence | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosuresequence#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Joining](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining)
- JoinedByClosureSequence

Structure

# JoinedByClosureSequence

A sequence that presents the elements of a base sequence of sequences concatenated using a given separator that depends on the sequences right before and after it.

```
struct JoinedByClosureSequence<Base, Separator> where Base : Sequence, Separator : Sequence, Base.Element : Sequence, Separator.Element == Base.Element.Element
```

[Joined.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Joined.swift#L69 "Open source file for Joined.swift")

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosuresequence\#topics)

### [Default Implementations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosuresequence\#Default-Implementations)

[API Reference\\
LazySequenceProtocol Implementations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosuresequence/lazysequenceprotocol-implementations)

[API Reference\\
LazySequenceProtocol Implementations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosuresequence/lazysequenceprotocol-implementations)

[API Reference\\
Sequence Implementations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosuresequence/sequence-implementations)

[API Reference\\
Sequence Implementations](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosuresequence/sequence-implementations)

## [Relationships](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosuresequence\#relationships)

### [Conforms To](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosuresequence\#conforms-to)

- `Swift.Copyable`
- `Swift.LazySequenceProtocol`
- `Swift.Sequence`

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosuresequence\#see-also)

### [Supporting Types](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosuresequence\#Supporting-Types)

[`struct JoinedBySequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbysequence)

A sequence that presents the elements of a base sequence of sequences concatenated using a given separator.

[`struct JoinedByCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection)

A collection that presents the elements of a base collection of collections concatenated using a given separator.

[`struct JoinedByClosureCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosurecollection)

A collection that presents the elements of a base collection of collections concatenated using a given separator that depends on the collections right before and after it.

[`struct InterspersedSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/interspersedsequence)

A sequence that presents the elements of a base sequence of elements with a separator between each of those elements.

- [JoinedByClosureSequence](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosuresequence#app-top)
- [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosuresequence#topics)
- [Relationships](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosuresequence#relationships)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbyclosuresequence#see-also)

Current page is JoinedByClosureSequence

|
|