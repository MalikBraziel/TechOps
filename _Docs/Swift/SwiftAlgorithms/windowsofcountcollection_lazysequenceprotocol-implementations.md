---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/lazysequenceprotocol-implementations"
title: "LazySequenceProtocol Implementations | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/lazysequenceprotocol-implementations#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Slicing and Splitting](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/slicingsplitting)
- [WindowsOfCountCollection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection)
- LazySequenceProtocol Implementations

API Collection

# LazySequenceProtocol Implementations

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/lazysequenceprotocol-implementations\#topics)

### [Instance Properties](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/lazysequenceprotocol-implementations\#Instance-Properties)

[`var elements: Self`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/elements)

### [Instance Methods](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/lazysequenceprotocol-implementations\#Instance-Methods)

[`func chunked<Subject>(on: (Self.Element) -> Subject) -> ChunkedOnCollection<Self.Elements, Subject>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/chunked(on:)-303zi)

Returns a lazy collection of subsequences of this collection, chunked by grouping elements that project to equal values.

[`func compactMap<ElementOfResult>((Self.Elements.Element) -> ElementOfResult?) -> LazyMapSequence<LazyFilterSequence<LazyMapSequence<Self.Elements, ElementOfResult?>>, ElementOfResult>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/compactmap(_:)-8plfp)

[`func flatMap<SegmentOfResult>((Self.Elements.Element) -> SegmentOfResult) -> LazySequence<FlattenSequence<LazyMapSequence<Self.Elements, SegmentOfResult>>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/flatmap(_:)-1u95c)

[`func flatMap<ElementOfResult>((Self.Elements.Element) -> ElementOfResult?) -> LazyMapSequence<LazyFilterSequence<LazyMapSequence<Self.Elements, ElementOfResult?>>, ElementOfResult>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/flatmap(_:)-6ra7u) Deprecated

[`func map<U>((Self.Element) -> U) -> LazyMapSequence<Self.Elements, U>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/map(_:)-3gvlg)

[`func reductions<Result>(Result, (Result, Self.Element) -> Result) -> ExclusiveReductionsSequence<Self.Elements, Result>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/reductions(_:_:)-8770k)

Returns a sequence containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reductions<Result>(into: Result, (inout Result, Self.Element) -> Void) -> ExclusiveReductionsSequence<Self.Elements, Result>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/reductions(into:_:)-k5sp)

Returns a sequence containing the accumulated results of combining the elements of the sequence using the given closure.

[`func scan<Result>(Result, (Result, Self.Element) -> Result) -> ExclusiveReductionsSequence<Self.Elements, Result>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/scan(_:_:)-3c0rp) Deprecated

[`func scan<Result>(into: Result, (inout Result, Self.Element) -> Void) -> ExclusiveReductionsSequence<Self.Elements, Result>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/scan(into:_:)-36hl3) Deprecated

[`func split(separator: Self.Element, maxSplits: Int, omittingEmptySubsequences: Bool) -> SplitCollection<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/split(separator:maxsplits:omittingemptysubsequences:)-8cik7)

Lazily returns the longest possible subsequences of the collection, in order, around elements equal to the given element.

[`func split(separator: Self.Element, maxSplits: Int, omittingEmptySubsequences: Bool) -> SplitSequence<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/split(separator:maxsplits:omittingemptysubsequences:)-8dx6p)

Lazily returns the longest possible subsequences of the sequence, in order, around elements equal to the given element.

[`func uniqued<Subject>(on: (Self.Element) -> Subject) -> UniquedSequence<Self, Subject>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/uniqued(on:)-7qpgp)

Returns a lazy sequence with the unique elements of this sequence (as determined by the given projection), in the order of the first occurrence of each unique element.

Current page is LazySequenceProtocol Implementations

|
|