---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/sequence-implementations"
title: "Sequence Implementations | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/sequence-implementations#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Slicing and Splitting](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/slicingsplitting)
- [WindowsOfCountCollection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection)
- Sequence Implementations

API Collection

# Sequence Implementations

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/sequence-implementations\#topics)

### [Instance Properties](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/sequence-implementations\#Instance-Properties)

[`var lazy: LazySequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/lazy)

### [Instance Methods](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/sequence-implementations\#Instance-Methods)

[`func allSatisfy((Self.Element) throws -> Bool) rethrows -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/allsatisfy(_:))

[`func compactMap<ElementOfResult>((Self.Element) throws -> ElementOfResult?) rethrows -> [ElementOfResult]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/compactmap(_:)-825m1)

[`func compacted<Unwrapped>() -> CompactedSequence<Self, Unwrapped>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/compacted()-3l715)

Returns a new `Sequence` that iterates over every non-nil element from the original `Sequence`.

[`func contains(Self.Element) -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/contains(_:)-34tsw)

[`func contains(where: (Self.Element) throws -> Bool) rethrows -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/contains(where:))

[`func count<E>(where: (Self.Element) throws(E) -> Bool) throws(E) -> Int`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/count(where:))

[`func elementsEqual<OtherSequence>(OtherSequence) -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/elementsequal(_:))

[`func elementsEqual<OtherSequence>(OtherSequence, by: (Self.Element, OtherSequence.Element) throws -> Bool) rethrows -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/elementsequal(_:by:))

[`func enumerated() -> EnumeratedSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/enumerated())

[`func filter((Self.Element) throws -> Bool) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/filter(_:))

[`func first(where: (Self.Element) throws -> Bool) rethrows -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/first(where:))

[`func firstNonNil<Result>((Self.Element) throws -> Result?) rethrows -> Result?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/firstnonnil(_:))

Returns the first non- `nil` result obtained from applying the given transformation to the elements of the sequence.

[`func flatMap<SegmentOfResult>((Self.Element) throws -> SegmentOfResult) rethrows -> [SegmentOfResult.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/flatmap(_:)-23raj)

[`func flatMap<ElementOfResult>((Self.Element) throws -> ElementOfResult?) rethrows -> [ElementOfResult]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/flatmap(_:)-7ropt) Deprecated

[`func forEach((Self.Element) throws -> Void) rethrows`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/foreach(_:))

[`func grouped<GroupKey>(by: (Self.Element) throws -> GroupKey) rethrows -> [GroupKey : [Self.Element]]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/grouped(by:))

Groups up elements of `self` into a new Dictionary, whose values are Arrays of grouped elements, each keyed by the group key returned by the given closure.

[`func interspersed(with: Self.Element) -> InterspersedSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/interspersed(with:))

Returns a sequence containing elements of this sequence with the given separator inserted in between each element.

[`func joined<Separator>(separator: Separator) -> JoinedSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/joined(separator:)-2jjzg)

[`func joined(separator: String) -> String`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/joined(separator:)-2kdlc)

[`func keyed<Key>(by: (Self.Element) throws -> Key) rethrows -> [Key : Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/keyed(by:))

Creates a new Dictionary from the elements of `self`, keyed by the results returned by the given `keyForValue` closure.

[`func keyed<Key>(by: (Self.Element) throws -> Key, resolvingConflictsWith: (Key, Self.Element, Self.Element) throws -> Self.Element) rethrows -> [Key : Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/keyed(by:resolvingconflictswith:))

Creates a new Dictionary from the elements of `self`, keyed by the results returned by the given `keyForValue` closure. As the dictionary is built, the initializer calls the `resolve` closure with the current and new values for any duplicate keys. Pass a closure as `resolve` that returns the value to use in the resulting dictionary: The closure can choose between the two values, combine them to produce a new value, or even throw an error.

[`func lexicographicallyPrecedes<OtherSequence>(OtherSequence) -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/lexicographicallyprecedes(_:))

[`func lexicographicallyPrecedes<OtherSequence>(OtherSequence, by: (Self.Element, Self.Element) throws -> Bool) rethrows -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/lexicographicallyprecedes(_:by:))

[`func map<T, E>((Self.Element) throws(E) -> T) throws(E) -> [T]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/map(_:)-7xqnl)

[`func max() -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/max())

[`func max(by: (Self.Element, Self.Element) throws -> Bool) rethrows -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/max(by:))

[`func max(count: Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/max(count:)-6i78x)

Returns the largest elements of this sequence.

[`func min() -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/min())

[`func min(by: (Self.Element, Self.Element) throws -> Bool) rethrows -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/min(by:))

[`func min(count: Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/min(count:)-9p0l2)

Returns the smallest elements of this sequence.

[`func minAndMax() -> (min: Self.Element, max: Self.Element)?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/minandmax())

Returns both the minimum and maximum elements in the sequence.

[`func minAndMax(by: (Self.Element, Self.Element) throws -> Bool) rethrows -> (min: Self.Element, max: Self.Element)?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/minandmax(by:))

Returns both the minimum and maximum elements in the sequence, using the given predicate as the comparison between elements.

[`func randomSample<G>(count: Int, using: inout G) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/randomsample(count:using:)-1ov2v)

Randomly selects the specified number of elements from this sequence.

[`func reduce<Result>(Result, (Result, Self.Element) throws -> Result) rethrows -> Result`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/reduce(_:_:))

[`func reduce<Result>(into: Result, (inout Result, Self.Element) throws -> ()) rethrows -> Result`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/reduce(into:_:))

[`func reductions((Self.Element, Self.Element) throws -> Self.Element) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/reductions(_:))

Returns an array containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reductions<Result>(Result, (Result, Self.Element) throws -> Result) rethrows -> [Result]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/reductions(_:_:)-49sxb)

Returns an array containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reductions<Result>(into: Result, (inout Result, Self.Element) throws -> Void) rethrows -> [Result]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/reductions(into:_:)-7dlcr)

Returns an array containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reversed() -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/reversed())

[`func scan((Self.Element, Self.Element) throws -> Self.Element) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/scan(_:)) Deprecated

[`func scan<Result>(Result, (Result, Self.Element) throws -> Result) rethrows -> [Result]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/scan(_:_:)-30z93) Deprecated

[`func scan<Result>(into: Result, (inout Result, Self.Element) throws -> Void) rethrows -> [Result]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/scan(into:_:)-3jan6) Deprecated

[`func shuffled() -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/shuffled())

[`func shuffled<T>(using: inout T) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/shuffled(using:))

[`func sorted() -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/sorted())

[`func sorted(by: (Self.Element, Self.Element) throws -> Bool) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/sorted(by:))

[`func split(separator: Self.Element, maxSplits: Int, omittingEmptySubsequences: Bool) -> [ArraySlice<Self.Element>]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/split(separator:maxsplits:omittingemptysubsequences:)-1xkta)

[`func starts<PossiblePrefix>(with: PossiblePrefix) -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/starts(with:))

[`func starts<PossiblePrefix>(with: PossiblePrefix, by: (Self.Element, PossiblePrefix.Element) throws -> Bool) rethrows -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/starts(with:by:))

[`func uniqued() -> UniquedSequence<Self, Self.Element>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/uniqued())

Returns a sequence with only the unique elements of this sequence, in the order of the first occurrence of each unique element.

[`func uniqued<Subject>(on: (Self.Element) throws -> Subject) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/uniqued(on:)-6vu0u)

Returns an array with the unique elements of this sequence (as determined by the given projection), in the order of the first occurrence of each unique element.

[`func withContiguousStorageIfAvailable<R>((UnsafeBufferPointer<Self.Element>) throws -> R) rethrows -> R?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/withcontiguousstorageifavailable(_:))

Current page is Sequence Implementations

|
|