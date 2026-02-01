---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/collection-implementations"
title: "Collection Implementations | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/collection-implementations#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Reductions](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/reductions)
- [InclusiveReductionsSequence](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence)
- Collection Implementations

API Collection

# Collection Implementations

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/collection-implementations\#topics)

### [Structures](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/collection-implementations\#Structures)

[`struct Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/index)

### [Instance Properties](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/collection-implementations\#Instance-Properties)

[`var count: Int`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/count)

[`var endIndex: InclusiveReductionsSequence<Base>.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/endindex)

[`var indices: DefaultIndices<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/indices)

[`var isEmpty: Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/isempty)

[`var startIndex: InclusiveReductionsSequence<Base>.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/startindex)

### [Instance Methods](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/collection-implementations\#Instance-Methods)

[`func chunked(by: (Self.Element, Self.Element) throws -> Bool) rethrows -> [Self.SubSequence]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/chunked(by:)-41owb)

Returns a collection of subsequences of this collection, chunked by the given predicate.

[`func chunked<Subject>(on: (Self.Element) throws -> Subject) rethrows -> [(Subject, Self.SubSequence)]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/chunked(on:)-1022p)

Returns a collection of subsequences of this collection, chunked by grouping elements that project to equal values.

[`func chunks(ofCount: Int) -> ChunksOfCountCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/chunks(ofcount:))

Returns a collection of subsequences, each with up to the specified length.

[`func combinations<R>(ofCount: R) -> CombinationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/combinations(ofcount:)-3rxjz)

Returns a collection of combinations of this collection’s elements, with each combination having the specified number of elements.

[`func combinations(ofCount: Int) -> CombinationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/combinations(ofcount:)-8mrf9)

Returns a collection of combinations of this collection’s elements, with each combination having the specified number of elements.

[`func compacted<Unwrapped>() -> CompactedCollection<Self, Unwrapped>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/compacted()-4vdqp)

Returns a new `Collection` that iterates over every non-nil element from the original `Collection`.

[`func contains<C>(C) -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/contains(_:)-7rqcc)

[`func cycled() -> CycledSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/cycled())

Returns a sequence that repeats the elements of this collection forever.

[`func cycled(times: Int) -> CycledTimesCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/cycled(times:))

Returns a sequence that repeats the elements of this collection the specified number of times.

[`func distance(from: Self.Index, to: Self.Index) -> Int`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/distance(from:to:)-4hfjv)

[`func distance(from: InclusiveReductionsSequence<Base>.Index, to: InclusiveReductionsSequence<Base>.Index) -> Int`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/distance(from:to:)-4tuzi)

[`func endOfPrefix(while: (Self.Element) throws -> Bool) rethrows -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/endofprefix(while:))

Returns the exclusive upper bound of the prefix of elements that satisfy the predicate.

[`func evenlyChunked(in: Int) -> EvenlyChunkedCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/evenlychunked(in:))

Returns a collection of evenly divided consecutive subsequences of this collection.

[`func firstIndex(of: Self.Element) -> Self.Index?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/firstindex(of:))

[`func firstIndex(where: (Self.Element) throws -> Bool) rethrows -> Self.Index?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/firstindex(where:))

[`func firstRange<C>(of: C) -> Range<Self.Index>?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/firstrange(of:))

[`func formIndex(inout Self.Index, offsetBy: Int)`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/formindex(_:offsetby:))

[`func formIndex(inout Self.Index, offsetBy: Int, limitedBy: Self.Index) -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/formindex(_:offsetby:limitedby:))

[`func formIndex(after: inout Self.Index)`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/formindex(after:))

[`func index(Self.Index, offsetBy: Int) -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/index(_:offsetby:))

[`func index(Self.Index, offsetBy: Int, limitedBy: Self.Index) -> Self.Index?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/index(_:offsetby:limitedby:))

[`func index(after: InclusiveReductionsSequence<Base>.Index) -> InclusiveReductionsSequence<Base>.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/index(after:))

[`func index(of: Self.Element) -> Self.Index?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/index(of:)) Deprecated

[`func indexed() -> IndexedCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/indexed())

Returns a collection of pairs _(i, x)_, where _i_ represents an index of the collection, and _x_ represents an element.

[`func indices(of: Self.Element) -> RangeSet<Self.Index>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/indices(of:))

[`func indices(where: (Self.Element) throws -> Bool) rethrows -> RangeSet<Self.Index>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/indices(where:))

[`func joined(by: Self.Element.Element) -> JoinedByCollection<Self, CollectionOfOne<Self.Element.Element>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/joined(by:)-4h8k5)

Returns the concatenation of the elements in this collection of collections, inserting the given separator between each collection.

[`func joined<Separator>(by: Separator) -> JoinedByCollection<Self, Separator>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/joined(by:)-q8qn)

Returns the concatenation of the elements in this collection of collections, inserting the given separator between each collection.

[`func map<T, E>((Self.Element) throws(E) -> T) throws(E) -> [T]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/map(_:)-3x1cf)

[`func max(count: Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/max(count:)-8ud4v)

Returns the largest elements of this collection.

[`func min(count: Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/min(count:)-10dii)

Returns the smallest elements of this collection.

[`func partitioningIndex(where: (Self.Element) throws -> Bool) rethrows -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/partitioningindex(where:))

Returns the start index of the partition of a collection that matches the given predicate.

[`func permutations(ofCount: Int?) -> PermutationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/permutations(ofcount:)-3qdbu)

Returns a collection of the permutations of this collection of the specified length.

[`func permutations<R>(ofCount: R) -> PermutationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/permutations(ofcount:)-5wz4b)

Returns a collection of the permutations of this collection with lengths in the specified range.

[`func prefix(through: Self.Index) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/prefix(through:))

[`func prefix(upTo: Self.Index) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/prefix(upto:))

[`func randomElement() -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/randomelement())

[`func randomElement<T>(using: inout T) -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/randomelement(using:))

[`func randomSample<G>(count: Int, using: inout G) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/randomsample(count:using:)-4mwm2)

Randomly selects the specified number of elements from this collection.

[`func randomStableSample(count: Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/randomstablesample(count:))

Randomly selects the specified number of elements from this collection, maintaining their relative order.

[`func randomStableSample<G>(count: Int, using: inout G) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/randomstablesample(count:using:))

Randomly selects the specified number of elements from this collection, maintaining their relative order.

[`func ranges<C>(of: C) -> [Range<Self.Index>]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/ranges(of:))

[`func removingSubranges(RangeSet<Self.Index>) -> DiscontiguousSlice<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/removingsubranges(_:))

[`func split(separator: Self.Element, maxSplits: Int, omittingEmptySubsequences: Bool) -> [Self.SubSequence]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/split(separator:maxsplits:omittingemptysubsequences:)-4ppqe)

[`func split<C>(separator: C, maxSplits: Int, omittingEmptySubsequences: Bool) -> [Self.SubSequence]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/split(separator:maxsplits:omittingemptysubsequences:)-75fav)

[`func suffix(from: Self.Index) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/suffix(from:))

[`func trimmingPrefix<Prefix>(Prefix) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/trimmingprefix(_:))

[`func trimmingPrefix(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/trimmingprefix(while:))

Returns a `SubSequence` formed by discarding all elements at the start of the collection which satisfy the given predicate.

[`func uniquePermutations(ofCount: Int?) -> UniquePermutationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/uniquepermutations(ofcount:)-3x3z)

Returns a sequence of the unique permutations of this sequence of the specified length.

[`func uniquePermutations<R>(ofCount: R) -> UniquePermutationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/uniquepermutations(ofcount:)-6y52d)

Returns a collection of the unique permutations of this sequence with lengths in the specified range.

[`func windows(ofCount: Int) -> WindowsOfCountCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/windows(ofcount:))

Returns a collection of all the overlapping slices of a given size.

### [Subscripts](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/collection-implementations\#Subscripts)

[`subscript(Range<Self.Index>) -> Slice<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/subscript(_:)-20lv1)

[`subscript((UnboundedRange_) -> ()) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/subscript(_:)-3cgmp)

[`subscript<R>(R) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/subscript(_:)-3qy1h)

[`subscript(RangeSet<Self.Index>) -> DiscontiguousSlice<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/subscript(_:)-80agh)

[`subscript(InclusiveReductionsSequence<Base>.Index) -> Base.Element`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/inclusivereductionssequence/subscript(_:)-95sa0)

Current page is Collection Implementations

|
|