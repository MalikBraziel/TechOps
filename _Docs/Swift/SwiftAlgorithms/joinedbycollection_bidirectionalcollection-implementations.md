---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/bidirectionalcollection-implementations"
title: "BidirectionalCollection Implementations | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/bidirectionalcollection-implementations#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Joining](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining)
- [JoinedByCollection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection)
- BidirectionalCollection Implementations

API Collection

# BidirectionalCollection Implementations

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/bidirectionalcollection-implementations\#topics)

### [Instance Properties](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/bidirectionalcollection-implementations\#Instance-Properties)

[`var last: Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/last)

### [Instance Methods](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/bidirectionalcollection-implementations\#Instance-Methods)

[`func difference<C>(from: C) -> CollectionDifference<Self.Element>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/difference(from:))

[`func difference<C>(from: C, by: (C.Element, Self.Element) -> Bool) -> CollectionDifference<Self.Element>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/difference(from:by:))

[`func firstRange<C>(of: C) -> Range<Self.Index>?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/firstrange(of:)-8s70x)

[`func formIndex(before: inout Self.Index)`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/formindex(before:))

[`func index(before: JoinedByCollection<Base, Separator>.Index) -> JoinedByCollection<Base, Separator>.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/index(before:))

[`func joined(separator: String) -> String`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/joined(separator:)-9x2ff)

[`func last(where: (Self.Element) throws -> Bool) rethrows -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/last(where:))

[`func lastIndex(of: Self.Element) -> Self.Index?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/lastindex(of:))

[`func lastIndex(where: (Self.Element) throws -> Bool) rethrows -> Self.Index?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/lastindex(where:))

[`func startOfSuffix(while: (Self.Element) throws -> Bool) rethrows -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/startofsuffix(while:))

Returns the inclusive lower bound of the suffix of elements that satisfy the predicate.

[`func suffix(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/suffix(while:))

Returns a subsequence containing the elements from the end until `predicate` returns `false` and skipping the remaining elements.

[`func trimming(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/trimming(while:))

Returns a `SubSequence` formed by discarding all elements at the start and end of the collection which satisfy the given predicate.

[`func trimmingSuffix(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/trimmingsuffix(while:))

Returns a `SubSequence` formed by discarding all elements at the end of the collection which satisfy the given predicate.

Current page is BidirectionalCollection Implementations

|
|