---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/bidirectionalcollection-implementations"
title: "BidirectionalCollection Implementations | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/bidirectionalcollection-implementations#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Slicing and Splitting](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/slicingsplitting)
- [WindowsOfCountCollection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection)
- BidirectionalCollection Implementations

API Collection

# BidirectionalCollection Implementations

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/bidirectionalcollection-implementations\#topics)

### [Instance Properties](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/bidirectionalcollection-implementations\#Instance-Properties)

[`var last: Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/last)

### [Instance Methods](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/bidirectionalcollection-implementations\#Instance-Methods)

[`func difference<C>(from: C) -> CollectionDifference<Self.Element>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/difference(from:))

[`func difference<C>(from: C, by: (C.Element, Self.Element) -> Bool) -> CollectionDifference<Self.Element>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/difference(from:by:))

[`func firstRange<C>(of: C) -> Range<Self.Index>?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/firstrange(of:)-6vj5t)

[`func formIndex(before: inout Self.Index)`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/formindex(before:))

[`func index(before: WindowsOfCountCollection<Base>.Index) -> WindowsOfCountCollection<Base>.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/index(before:))

[`func joined(separator: String) -> String`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/joined(separator:)-52kuo)

[`func last(where: (Self.Element) throws -> Bool) rethrows -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/last(where:))

[`func lastIndex(of: Self.Element) -> Self.Index?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/lastindex(of:))

[`func lastIndex(where: (Self.Element) throws -> Bool) rethrows -> Self.Index?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/lastindex(where:))

[`func startOfSuffix(while: (Self.Element) throws -> Bool) rethrows -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/startofsuffix(while:))

Returns the inclusive lower bound of the suffix of elements that satisfy the predicate.

[`func suffix(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/suffix(while:))

Returns a subsequence containing the elements from the end until `predicate` returns `false` and skipping the remaining elements.

[`func trimming(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/trimming(while:))

Returns a `SubSequence` formed by discarding all elements at the start and end of the collection which satisfy the given predicate.

[`func trimmingSuffix(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/trimmingsuffix(while:))

Returns a `SubSequence` formed by discarding all elements at the end of the collection which satisfy the given predicate.

Current page is BidirectionalCollection Implementations

|
|