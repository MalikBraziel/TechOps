---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/lazysequenceprotocol-implementations"
title: "LazySequenceProtocol Implementations | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/lazysequenceprotocol-implementations#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Reductions](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/reductions)
- [InclusiveReductionsSequence](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence)
- LazySequenceProtocol Implementations

API Collection

# LazySequenceProtocol Implementations

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/lazysequenceprotocol-implementations\#topics)

### [Instance Properties](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/lazysequenceprotocol-implementations\#Instance-Properties)

[`var elements: Self`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/elements)

[`var lazy: Self.Elements`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/lazy)

### [Instance Methods](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/lazysequenceprotocol-implementations\#Instance-Methods)

[`func chunked(by: (Self.Element, Self.Element) -> Bool) -> ChunkedByCollection<Self.Elements, Self.Element>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/chunked(by:)-4ltyx)

Returns a lazy collection of subsequences of this collection, chunked by the given predicate.

[`func chunked<Subject>(on: (Self.Element) -> Subject) -> ChunkedOnCollection<Self.Elements, Subject>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/chunked(on:)-1xabl)

Returns a lazy collection of subsequences of this collection, chunked by grouping elements that project to equal values.

[`func compactMap<ElementOfResult>((Self.Elements.Element) -> ElementOfResult?) -> LazyMapSequence<LazyFilterSequence<LazyMapSequence<Self.Elements, ElementOfResult?>>, ElementOfResult>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/compactmap(_:)-9em18)

[`func drop(while: (Self.Elements.Element) -> Bool) -> LazyDropWhileSequence<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/drop(while:))

[`func filter((Self.Elements.Element) -> Bool) -> LazyFilterSequence<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/filter(_:))

[`func flatMap<SegmentOfResult>((Self.Elements.Element) -> SegmentOfResult) -> LazySequence<FlattenSequence<LazyMapSequence<Self.Elements, SegmentOfResult>>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/flatmap(_:)-2e1s6)

[`func flatMap<ElementOfResult>((Self.Elements.Element) -> ElementOfResult?) -> LazyMapSequence<LazyFilterSequence<LazyMapSequence<Self.Elements, ElementOfResult?>>, ElementOfResult>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/flatmap(_:)-51jed) Deprecated

[`func joined() -> LazySequence<FlattenSequence<Self.Elements>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/joined()-2k4ch)

[`func joined(by: (Self.Element, Self.Element) -> Self.Element.Element) -> JoinedByClosureSequence<Self.Elements, CollectionOfOne<Self.Element.Element>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/joined(by:)-3uqoq)

Returns the concatenation of the elements in this sequence of sequences, inserting the separator produced by the closure between each sequence.

[`func joined(by: (Self.Element, Self.Element) -> Self.Element.Element) -> JoinedByClosureCollection<Self.Elements, CollectionOfOne<Self.Element.Element>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/joined(by:)-78rhb)

Returns the concatenation of the elements in this collection of collections, inserting the separator produced by the closure between each sequence.

[`func joined<Separator>(by: (Self.Element, Self.Element) -> Separator) -> JoinedByClosureCollection<Self.Elements, Separator>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/joined(by:)-7hi3z)

Returns the concatenation of the elements in this collection of collections, inserting the separator produced by the closure between each sequence.

[`func joined<Separator>(by: (Self.Element, Self.Element) -> Separator) -> JoinedByClosureSequence<Self.Elements, Separator>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/joined(by:)-9a4z5)

Returns the concatenation of the elements in this sequence of sequences, inserting the separator produced by the closure between each sequence.

[`func map<U>((Self.Element) -> U) -> LazyMapSequence<Self.Elements, U>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/map(_:)-19nf4)

[`func prefix(while: (Self.Elements.Element) -> Bool) -> LazyPrefixWhileSequence<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/prefix(while:))

[`func reductions((Self.Element, Self.Element) -> Self.Element) -> InclusiveReductionsSequence<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/reductions(_:))

Returns a sequence containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reductions<Result>(Result, (Result, Self.Element) -> Result) -> ExclusiveReductionsSequence<Self.Elements, Result>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/reductions(_:_:)-2i28p)

Returns a sequence containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reductions<Result>(into: Result, (inout Result, Self.Element) -> Void) -> ExclusiveReductionsSequence<Self.Elements, Result>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/reductions(into:_:)-3pvg8)

Returns a sequence containing the accumulated results of combining the elements of the sequence using the given closure.

[`func scan((Self.Element, Self.Element) -> Self.Element) -> InclusiveReductionsSequence<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/scan(_:)) Deprecated

[`func scan<Result>(Result, (Result, Self.Element) -> Result) -> ExclusiveReductionsSequence<Self.Elements, Result>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/scan(_:_:)-2qpmw) Deprecated

[`func scan<Result>(into: Result, (inout Result, Self.Element) -> Void) -> ExclusiveReductionsSequence<Self.Elements, Result>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/scan(into:_:)-7c0lh) Deprecated

[`func split(maxSplits: Int, omittingEmptySubsequences: Bool, whereSeparator: (Self.Element) -> Bool) -> SplitSequence<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/split(maxsplits:omittingemptysubsequences:whereseparator:))

Lazily returns the longest possible subsequences of the sequence, in order, that don’t contain elements satisfying the given predicate.

[`func split(separator: Self.Element, maxSplits: Int, omittingEmptySubsequences: Bool) -> SplitSequence<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/split(separator:maxsplits:omittingemptysubsequences:)-93o4u)

Lazily returns the longest possible subsequences of the sequence, in order, around elements equal to the given element.

[`func split(separator: Self.Element, maxSplits: Int, omittingEmptySubsequences: Bool) -> SplitCollection<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/split(separator:maxsplits:omittingemptysubsequences:)-9d5fa)

Lazily returns the longest possible subsequences of the collection, in order, around elements equal to the given element.

[`func uniqued<Subject>(on: (Self.Element) -> Subject) -> UniquedSequence<Self, Subject>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/uniqued(on:)-3wabn)

Returns a lazy sequence with the unique elements of this sequence (as determined by the given projection), in the order of the first occurrence of each unique element.

Current page is LazySequenceProtocol Implementations

|
|