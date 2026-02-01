---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/sequence-implementations"
title: "Sequence Implementations | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/sequence-implementations#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Reductions](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/reductions)
- [InclusiveReductionsSequence](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence)
- Sequence Implementations

API Collection

# Sequence Implementations

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/sequence-implementations\#topics)

### [Structures](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/sequence-implementations\#Structures)

[`struct Iterator`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/iterator)

### [Instance Properties](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/sequence-implementations\#Instance-Properties)

[`var underestimatedCount: Int`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/underestimatedcount)

### [Instance Methods](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/sequence-implementations\#Instance-Methods)

[`func adjacentPairs() -> AdjacentPairsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/adjacentpairs())

Returns a sequence of overlapping adjacent pairs of the elements of this sequence.

[`func allSatisfy((Self.Element) throws -> Bool) rethrows -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/allsatisfy(_:))

[`func compactMap<ElementOfResult>((Self.Element) throws -> ElementOfResult?) rethrows -> [ElementOfResult]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/compactmap(_:)-9awl8)

[`func compacted<Unwrapped>() -> CompactedSequence<Self, Unwrapped>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/compacted()-2q1ct)

Returns a new `Sequence` that iterates over every non-nil element from the original `Sequence`.

[`func contains(Self.Element) -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/contains(_:)-6q4n9)

[`func contains(where: (Self.Element) throws -> Bool) rethrows -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/contains(where:))

[`func count<E>(where: (Self.Element) throws(E) -> Bool) throws(E) -> Int`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/count(where:))

[`func dropFirst(Int) -> DropFirstSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/dropfirst(_:))

[`func dropLast(Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/droplast(_:))

[`func elementsEqual<OtherSequence>(OtherSequence) -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/elementsequal(_:))

[`func elementsEqual<OtherSequence>(OtherSequence, by: (Self.Element, OtherSequence.Element) throws -> Bool) rethrows -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/elementsequal(_:by:))

[`func enumerated() -> EnumeratedSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/enumerated())

[`func first(where: (Self.Element) throws -> Bool) rethrows -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/first(where:))

[`func firstNonNil<Result>((Self.Element) throws -> Result?) rethrows -> Result?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/firstnonnil(_:))

Returns the first non- `nil` result obtained from applying the given transformation to the elements of the sequence.

[`func flatMap<ElementOfResult>((Self.Element) throws -> ElementOfResult?) rethrows -> [ElementOfResult]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/flatmap(_:)-5drx6) Deprecated

[`func flatMap<SegmentOfResult>((Self.Element) throws -> SegmentOfResult) rethrows -> [SegmentOfResult.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/flatmap(_:)-5r86g)

[`func forEach((Self.Element) throws -> Void) rethrows`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/foreach(_:))

[`func grouped<GroupKey>(by: (Self.Element) throws -> GroupKey) rethrows -> [GroupKey : [Self.Element]]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/grouped(by:))

Groups up elements of `self` into a new Dictionary, whose values are Arrays of grouped elements, each keyed by the group key returned by the given closure.

[`func interspersed(with: Self.Element) -> InterspersedSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/interspersed(with:))

Returns a sequence containing elements of this sequence with the given separator inserted in between each element.

[`func joined() -> FlattenSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/joined()-38pen)

[`func joined<Separator>(by: (Self.Element, Self.Element) throws -> Separator) rethrows -> [Self.Element.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/joined(by:)-3iaxd)

Returns the concatenation of the elements in this sequence of sequences, inserting the separator produced by the closure between each sequence.

[`func joined<Separator>(by: Separator) -> JoinedBySequence<Self, Separator>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/joined(by:)-5h8kk)

Returns the concatenation of the elements in this sequence of sequences, inserting the given separator between each sequence.

[`func joined(by: Self.Element.Element) -> JoinedBySequence<Self, CollectionOfOne<Self.Element.Element>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/joined(by:)-8cup2)

Returns the concatenation of the elements in this sequence of sequences, inserting the given separator between each sequence.

[`func joined(by: (Self.Element, Self.Element) throws -> Self.Element.Element) rethrows -> [Self.Element.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/joined(by:)-eyvc)

Returns the concatenation of the elements in this sequence of sequences, inserting the separator produced by the closure between each sequence.

[`func joined(separator: String) -> String`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/joined(separator:)-5nqsj)

[`func joined<Separator>(separator: Separator) -> JoinedSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/joined(separator:)-9j18a)

[`func keyed<Key>(by: (Self.Element) throws -> Key) rethrows -> [Key : Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/keyed(by:))

Creates a new Dictionary from the elements of `self`, keyed by the results returned by the given `keyForValue` closure.

[`func keyed<Key>(by: (Self.Element) throws -> Key, resolvingConflictsWith: (Key, Self.Element, Self.Element) throws -> Self.Element) rethrows -> [Key : Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/keyed(by:resolvingconflictswith:))

Creates a new Dictionary from the elements of `self`, keyed by the results returned by the given `keyForValue` closure. As the dictionary is built, the initializer calls the `resolve` closure with the current and new values for any duplicate keys. Pass a closure as `resolve` that returns the value to use in the resulting dictionary: The closure can choose between the two values, combine them to produce a new value, or even throw an error.

[`func lexicographicallyPrecedes<OtherSequence>(OtherSequence) -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/lexicographicallyprecedes(_:))

[`func lexicographicallyPrecedes<OtherSequence>(OtherSequence, by: (Self.Element, Self.Element) throws -> Bool) rethrows -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/lexicographicallyprecedes(_:by:))

[`func makeIterator() -> InclusiveReductionsSequence<Base>.Iterator`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/makeiterator())

[`func map<T, E>((Self.Element) throws(E) -> T) throws(E) -> [T]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/map(_:)-2lvwo)

[`func max() -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/max())

[`func max(by: (Self.Element, Self.Element) throws -> Bool) rethrows -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/max(by:))

[`func max(count: Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/max(count:)-4pxwh)

Returns the largest elements of this sequence.

[`func max(count: Int, sortedBy: (Self.Element, Self.Element) throws -> Bool) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/max(count:sortedby:))

Returns the largest elements of this sequence, as sorted by the given predicate.

[`func min() -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/min())

[`func min(by: (Self.Element, Self.Element) throws -> Bool) rethrows -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/min(by:))

[`func min(count: Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/min(count:)-4fw77)

Returns the smallest elements of this sequence.

[`func min(count: Int, sortedBy: (Self.Element, Self.Element) throws -> Bool) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/min(count:sortedby:))

Returns the smallest elements of this sequence, as sorted by the given predicate.

[`func minAndMax() -> (min: Self.Element, max: Self.Element)?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/minandmax())

Returns both the minimum and maximum elements in the sequence.

[`func minAndMax(by: (Self.Element, Self.Element) throws -> Bool) rethrows -> (min: Self.Element, max: Self.Element)?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/minandmax(by:))

Returns both the minimum and maximum elements in the sequence, using the given predicate as the comparison between elements.

[`func partitioned(by: (Self.Element) throws -> Bool) rethrows -> (falseElements: [Self.Element], trueElements: [Self.Element])`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/partitioned(by:))

Returns two arrays containing the elements of the sequence that don’t and do satisfy the given predicate, respectively.

[`func prefix(Int) -> PrefixSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/prefix(_:))

[`func randomSample(count: Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/randomsample(count:))

Randomly selects the specified number of elements from this sequence.

[`func randomSample<G>(count: Int, using: inout G) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/randomsample(count:using:)-97lly)

Randomly selects the specified number of elements from this sequence.

[`func reduce<Result>(Result, (Result, Self.Element) throws -> Result) rethrows -> Result`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/reduce(_:_:))

[`func reduce<Result>(into: Result, (inout Result, Self.Element) throws -> ()) rethrows -> Result`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/reduce(into:_:))

[`func reductions<Result>(Result, (Result, Self.Element) throws -> Result) rethrows -> [Result]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/reductions(_:_:)-7f9pz)

Returns an array containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reductions<Result>(into: Result, (inout Result, Self.Element) throws -> Void) rethrows -> [Result]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/reductions(into:_:)-4ptw6)

Returns an array containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reversed() -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/reversed())

[`func scan<Result>(Result, (Result, Self.Element) throws -> Result) rethrows -> [Result]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/scan(_:_:)-95now) Deprecated

[`func scan<Result>(into: Result, (inout Result, Self.Element) throws -> Void) rethrows -> [Result]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/scan(into:_:)-9ctrd) Deprecated

[`func shuffled() -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/shuffled())

[`func shuffled<T>(using: inout T) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/shuffled(using:))

[`func sorted() -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/sorted())

[`func sorted(by: (Self.Element, Self.Element) throws -> Bool) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/sorted(by:))

[`func split(separator: Self.Element, maxSplits: Int, omittingEmptySubsequences: Bool) -> [ArraySlice<Self.Element>]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/split(separator:maxsplits:omittingemptysubsequences:)-qj9i)

[`func starts<PossiblePrefix>(with: PossiblePrefix) -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/starts(with:))

[`func starts<PossiblePrefix>(with: PossiblePrefix, by: (Self.Element, PossiblePrefix.Element) throws -> Bool) rethrows -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/starts(with:by:))

[`func striding(by: Int) -> StridingSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/striding(by:))

Returns a sequence stepping through the elements every `step` starting at the first value. Any remainders of the stride will be trimmed.

[`func suffix(Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/suffix(_:))

[`func uniqued() -> UniquedSequence<Self, Self.Element>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/uniqued())

Returns a sequence with only the unique elements of this sequence, in the order of the first occurrence of each unique element.

[`func uniqued<Subject>(on: (Self.Element) throws -> Subject) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/uniqued(on:)-9gj5c)

Returns an array with the unique elements of this sequence (as determined by the given projection), in the order of the first occurrence of each unique element.

[`func withContiguousStorageIfAvailable<R>((UnsafeBufferPointer<Self.Element>) throws -> R) rethrows -> R?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/withcontiguousstorageifavailable(_:))

Current page is Sequence Implementations

|
|