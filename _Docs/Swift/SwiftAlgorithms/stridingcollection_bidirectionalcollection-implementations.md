---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/bidirectionalcollection-implementations"
title: "BidirectionalCollection Implementations | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/bidirectionalcollection-implementations#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Selecting Elements](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/selecting)
- [StridingCollection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection)
- BidirectionalCollection Implementations

API Collection

# BidirectionalCollection Implementations

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/bidirectionalcollection-implementations\#topics)

### [Instance Properties](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/bidirectionalcollection-implementations\#Instance-Properties)

[`var last: Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/last)

### [Instance Methods](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/bidirectionalcollection-implementations\#Instance-Methods)

[`func difference<C>(from: C) -> CollectionDifference<Self.Element>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/difference(from:))

[`func difference<C>(from: C, by: (C.Element, Self.Element) -> Bool) -> CollectionDifference<Self.Element>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/difference(from:by:))

[`func firstRange<C>(of: C) -> Range<Self.Index>?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/firstrange(of:)-1xwil)

[`func formIndex(before: inout Self.Index)`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/formindex(before:))

[`func index(before: StridingCollection<Base>.Index) -> StridingCollection<Base>.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/index(before:))

[`func joined(separator: String) -> String`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/joined(separator:)-92fnp)

[`func last(where: (Self.Element) throws -> Bool) rethrows -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/last(where:))

[`func lastIndex(of: Self.Element) -> Self.Index?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/lastindex(of:))

[`func lastIndex(where: (Self.Element) throws -> Bool) rethrows -> Self.Index?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/lastindex(where:))

[`func startOfSuffix(while: (Self.Element) throws -> Bool) rethrows -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/startofsuffix(while:))

Returns the inclusive lower bound of the suffix of elements that satisfy the predicate.

[`func suffix(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/suffix(while:))

Returns a subsequence containing the elements from the end until `predicate` returns `false` and skipping the remaining elements.

[`func trimming(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/trimming(while:))

Returns a `SubSequence` formed by discarding all elements at the start and end of the collection which satisfy the given predicate.

[`func trimmingSuffix(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/trimmingsuffix(while:))

Returns a `SubSequence` formed by discarding all elements at the end of the collection which satisfy the given predicate.

Current page is BidirectionalCollection Implementations

|
|