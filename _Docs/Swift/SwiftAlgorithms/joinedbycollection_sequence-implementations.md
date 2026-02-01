---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/sequence-implementations"
title: "Sequence Implementations | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/sequence-implementations#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Joining](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining)
- [JoinedByCollection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection)
- Sequence Implementations

API Collection

# Sequence Implementations

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/sequence-implementations\#topics)

### [Instance Properties](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/sequence-implementations\#Instance-Properties)

[`var lazy: LazySequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/lazy)

### [Instance Methods](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/sequence-implementations\#Instance-Methods)

[`func allSatisfy((Self.Element) throws -> Bool) rethrows -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/allsatisfy(_:))

[`func compactMap<ElementOfResult>((Self.Element) throws -> ElementOfResult?) rethrows -> [ElementOfResult]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/compactmap(_:)-1c52y)

[`func compacted<Unwrapped>() -> CompactedSequence<Self, Unwrapped>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/compacted()-100bm)

Returns a new `Sequence` that iterates over every non-nil element from the original `Sequence`.

[`func contains(Self.Element) -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/contains(_:)-961z3)

[`func contains(where: (Self.Element) throws -> Bool) rethrows -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/contains(where:))

[`func count<E>(where: (Self.Element) throws(E) -> Bool) throws(E) -> Int`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/count(where:))

[`func elementsEqual<OtherSequence>(OtherSequence) -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/elementsequal(_:))

[`func elementsEqual<OtherSequence>(OtherSequence, by: (Self.Element, OtherSequence.Element) throws -> Bool) rethrows -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/elementsequal(_:by:))

[`func enumerated() -> EnumeratedSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/enumerated())

[`func filter((Self.Element) throws -> Bool) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/filter(_:))

[`func first(where: (Self.Element) throws -> Bool) rethrows -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/first(where:))

[`func firstNonNil<Result>((Self.Element) throws -> Result?) rethrows -> Result?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/firstnonnil(_:))

Returns the first non- `nil` result obtained from applying the given transformation to the elements of the sequence.

[`func flatMap<ElementOfResult>((Self.Element) throws -> ElementOfResult?) rethrows -> [ElementOfResult]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/flatmap(_:)-6lose) Deprecated

[`func flatMap<SegmentOfResult>((Self.Element) throws -> SegmentOfResult) rethrows -> [SegmentOfResult.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/flatmap(_:)-7y4l9)

[`func forEach((Self.Element) throws -> Void) rethrows`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/foreach(_:))

[`func grouped<GroupKey>(by: (Self.Element) throws -> GroupKey) rethrows -> [GroupKey : [Self.Element]]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/grouped(by:))

Groups up elements of `self` into a new Dictionary, whose values are Arrays of grouped elements, each keyed by the group key returned by the given closure.

[`func interspersed(with: Self.Element) -> InterspersedSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/interspersed(with:))

Returns a sequence containing elements of this sequence with the given separator inserted in between each element.

[`func joined() -> FlattenSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/joined()-d85b)

[`func joined(by: (Self.Element, Self.Element) throws -> Self.Element.Element) rethrows -> [Self.Element.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/joined(by:)-6e9zn)

Returns the concatenation of the elements in this sequence of sequences, inserting the separator produced by the closure between each sequence.

[`func joined<Separator>(by: Separator) -> JoinedBySequence<Self, Separator>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/joined(by:)-6ph1k)

Returns the concatenation of the elements in this sequence of sequences, inserting the given separator between each sequence.

[`func joined(by: Self.Element.Element) -> JoinedBySequence<Self, CollectionOfOne<Self.Element.Element>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/joined(by:)-83xjf)

Returns the concatenation of the elements in this sequence of sequences, inserting the given separator between each sequence.

[`func joined<Separator>(by: (Self.Element, Self.Element) throws -> Separator) rethrows -> [Self.Element.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/joined(by:)-d6oo)

Returns the concatenation of the elements in this sequence of sequences, inserting the separator produced by the closure between each sequence.

[`func joined<Separator>(separator: Separator) -> JoinedSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/joined(separator:)-6vnr1)

[`func joined(separator: String) -> String`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/joined(separator:)-9lfx4)

[`func keyed<Key>(by: (Self.Element) throws -> Key) rethrows -> [Key : Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/keyed(by:))

Creates a new Dictionary from the elements of `self`, keyed by the results returned by the given `keyForValue` closure.

[`func keyed<Key>(by: (Self.Element) throws -> Key, resolvingConflictsWith: (Key, Self.Element, Self.Element) throws -> Self.Element) rethrows -> [Key : Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/keyed(by:resolvingconflictswith:))

Creates a new Dictionary from the elements of `self`, keyed by the results returned by the given `keyForValue` closure. As the dictionary is built, the initializer calls the `resolve` closure with the current and new values for any duplicate keys. Pass a closure as `resolve` that returns the value to use in the resulting dictionary: The closure can choose between the two values, combine them to produce a new value, or even throw an error.

[`func lexicographicallyPrecedes<OtherSequence>(OtherSequence) -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/lexicographicallyprecedes(_:))

[`func lexicographicallyPrecedes<OtherSequence>(OtherSequence, by: (Self.Element, Self.Element) throws -> Bool) rethrows -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/lexicographicallyprecedes(_:by:))

[`func map<T, E>((Self.Element) throws(E) -> T) throws(E) -> [T]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/map(_:)-5nxgt)

[`func max() -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/max())

[`func max(by: (Self.Element, Self.Element) throws -> Bool) rethrows -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/max(by:))

[`func max(count: Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/max(count:)-5otbq)

Returns the largest elements of this sequence.

[`func min() -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/min())

[`func min(by: (Self.Element, Self.Element) throws -> Bool) rethrows -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/min(by:))

[`func min(count: Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/min(count:)-18pzf)

Returns the smallest elements of this sequence.

[`func minAndMax() -> (min: Self.Element, max: Self.Element)?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/minandmax())

Returns both the minimum and maximum elements in the sequence.

[`func minAndMax(by: (Self.Element, Self.Element) throws -> Bool) rethrows -> (min: Self.Element, max: Self.Element)?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/minandmax(by:))

Returns both the minimum and maximum elements in the sequence, using the given predicate as the comparison between elements.

[`func randomSample<G>(count: Int, using: inout G) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/randomsample(count:using:)-4o1cu)

Randomly selects the specified number of elements from this sequence.

[`func reduce<Result>(Result, (Result, Self.Element) throws -> Result) rethrows -> Result`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/reduce(_:_:))

[`func reduce<Result>(into: Result, (inout Result, Self.Element) throws -> ()) rethrows -> Result`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/reduce(into:_:))

[`func reductions((Self.Element, Self.Element) throws -> Self.Element) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/reductions(_:))

Returns an array containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reductions<Result>(Result, (Result, Self.Element) throws -> Result) rethrows -> [Result]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/reductions(_:_:)-2ensv)

Returns an array containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reductions<Result>(into: Result, (inout Result, Self.Element) throws -> Void) rethrows -> [Result]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/reductions(into:_:)-8i6dl)

Returns an array containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reversed() -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/reversed())

[`func scan((Self.Element, Self.Element) throws -> Self.Element) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/scan(_:)) Deprecated

[`func scan<Result>(Result, (Result, Self.Element) throws -> Result) rethrows -> [Result]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/scan(_:_:)-5tnt7) Deprecated

[`func scan<Result>(into: Result, (inout Result, Self.Element) throws -> Void) rethrows -> [Result]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/scan(into:_:)-330rp) Deprecated

[`func shuffled() -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/shuffled())

[`func shuffled<T>(using: inout T) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/shuffled(using:))

[`func sorted() -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/sorted())

[`func sorted(by: (Self.Element, Self.Element) throws -> Bool) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/sorted(by:))

[`func split(separator: Self.Element, maxSplits: Int, omittingEmptySubsequences: Bool) -> [ArraySlice<Self.Element>]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/split(separator:maxsplits:omittingemptysubsequences:)-62m9e)

[`func starts<PossiblePrefix>(with: PossiblePrefix) -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/starts(with:))

[`func starts<PossiblePrefix>(with: PossiblePrefix, by: (Self.Element, PossiblePrefix.Element) throws -> Bool) rethrows -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/starts(with:by:))

[`func uniqued() -> UniquedSequence<Self, Self.Element>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/uniqued())

Returns a sequence with only the unique elements of this sequence, in the order of the first occurrence of each unique element.

[`func uniqued<Subject>(on: (Self.Element) throws -> Subject) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/uniqued(on:)-2vekc)

Returns an array with the unique elements of this sequence (as determined by the given projection), in the order of the first occurrence of each unique element.

[`func withContiguousStorageIfAvailable<R>((UnsafeBufferPointer<Self.Element>) throws -> R) rethrows -> R?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/withcontiguousstorageifavailable(_:))

Current page is Sequence Implementations

|
|