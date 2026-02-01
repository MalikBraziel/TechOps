---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/lazysequenceprotocol-implementations"
title: "LazySequenceProtocol Implementations | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/lazysequenceprotocol-implementations#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Joining](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining)
- [JoinedByCollection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection)
- LazySequenceProtocol Implementations

API Collection

# LazySequenceProtocol Implementations

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/lazysequenceprotocol-implementations\#topics)

### [Instance Properties](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/lazysequenceprotocol-implementations\#Instance-Properties)

[`var elements: Self`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/elements)

### [Instance Methods](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/lazysequenceprotocol-implementations\#Instance-Methods)

[`func chunked<Subject>(on: (Self.Element) -> Subject) -> ChunkedOnCollection<Self.Elements, Subject>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/chunked(on:)-1l0n8)

Returns a lazy collection of subsequences of this collection, chunked by grouping elements that project to equal values.

[`func compactMap<ElementOfResult>((Self.Elements.Element) -> ElementOfResult?) -> LazyMapSequence<LazyFilterSequence<LazyMapSequence<Self.Elements, ElementOfResult?>>, ElementOfResult>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/compactmap(_:)-6nzqx)

[`func flatMap<SegmentOfResult>((Self.Elements.Element) -> SegmentOfResult) -> LazySequence<FlattenSequence<LazyMapSequence<Self.Elements, SegmentOfResult>>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/flatmap(_:)-2igtu)

[`func flatMap<ElementOfResult>((Self.Elements.Element) -> ElementOfResult?) -> LazyMapSequence<LazyFilterSequence<LazyMapSequence<Self.Elements, ElementOfResult?>>, ElementOfResult>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/flatmap(_:)-9upmk) Deprecated

[`func joined() -> LazySequence<FlattenSequence<Self.Elements>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/joined()-601uh)

[`func joined(by: (Self.Element, Self.Element) -> Self.Element.Element) -> JoinedByClosureCollection<Self.Elements, CollectionOfOne<Self.Element.Element>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/joined(by:)-2858)

Returns the concatenation of the elements in this collection of collections, inserting the separator produced by the closure between each sequence.

[`func joined(by: (Self.Element, Self.Element) -> Self.Element.Element) -> JoinedByClosureSequence<Self.Elements, CollectionOfOne<Self.Element.Element>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/joined(by:)-291n1)

Returns the concatenation of the elements in this sequence of sequences, inserting the separator produced by the closure between each sequence.

[`func joined<Separator>(by: (Self.Element, Self.Element) -> Separator) -> JoinedByClosureCollection<Self.Elements, Separator>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/joined(by:)-60b5b)

Returns the concatenation of the elements in this collection of collections, inserting the separator produced by the closure between each sequence.

[`func joined<Separator>(by: (Self.Element, Self.Element) -> Separator) -> JoinedByClosureSequence<Self.Elements, Separator>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/joined(by:)-chic)

Returns the concatenation of the elements in this sequence of sequences, inserting the separator produced by the closure between each sequence.

[`func map<U>((Self.Element) -> U) -> LazyMapSequence<Self.Elements, U>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/map(_:)-45my5)

[`func reductions<Result>(Result, (Result, Self.Element) -> Result) -> ExclusiveReductionsSequence<Self.Elements, Result>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/reductions(_:_:)-4cpj2)

Returns a sequence containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reductions<Result>(into: Result, (inout Result, Self.Element) -> Void) -> ExclusiveReductionsSequence<Self.Elements, Result>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/reductions(into:_:)-4wcsa)

Returns a sequence containing the accumulated results of combining the elements of the sequence using the given closure.

[`func scan<Result>(Result, (Result, Self.Element) -> Result) -> ExclusiveReductionsSequence<Self.Elements, Result>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/scan(_:_:)-64kr3) Deprecated

[`func scan<Result>(into: Result, (inout Result, Self.Element) -> Void) -> ExclusiveReductionsSequence<Self.Elements, Result>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/scan(into:_:)-8wzcb) Deprecated

[`func split(separator: Self.Element, maxSplits: Int, omittingEmptySubsequences: Bool) -> SplitCollection<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/split(separator:maxsplits:omittingemptysubsequences:)-29mys)

Lazily returns the longest possible subsequences of the collection, in order, around elements equal to the given element.

[`func split(separator: Self.Element, maxSplits: Int, omittingEmptySubsequences: Bool) -> SplitSequence<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/split(separator:maxsplits:omittingemptysubsequences:)-39jzp)

Lazily returns the longest possible subsequences of the sequence, in order, around elements equal to the given element.

[`func uniqued<Subject>(on: (Self.Element) -> Subject) -> UniquedSequence<Self, Subject>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/uniqued(on:)-3qi9c)

Returns a lazy sequence with the unique elements of this sequence (as determined by the given projection), in the order of the first occurrence of each unique element.

Current page is LazySequenceProtocol Implementations

|
|