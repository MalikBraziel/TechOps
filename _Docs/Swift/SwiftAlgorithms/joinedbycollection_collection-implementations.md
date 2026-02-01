---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/collection-implementations"
title: "Collection Implementations | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/collection-implementations#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Joining](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining)
- [JoinedByCollection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection)
- Collection Implementations

API Collection

# Collection Implementations

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/collection-implementations\#topics)

### [Structures](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/collection-implementations\#Structures)

[`struct Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/index)

### [Instance Properties](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/collection-implementations\#Instance-Properties)

[`var count: Int`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/count)

[`var endIndex: JoinedByCollection<Base, Separator>.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/endindex)

[`var first: Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/first)

[`var indices: DefaultIndices<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/indices)

[`var isEmpty: Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/isempty)

[`var startIndex: JoinedByCollection<Base, Separator>.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/startindex)

[`var underestimatedCount: Int`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/underestimatedcount)

### [Instance Methods](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/collection-implementations\#Instance-Methods)

[`func adjacentPairs() -> AdjacentPairsCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/adjacentpairs())

Returns a collection of overlapping adjacent pairs of the elements of this collection.

[`func chunked(by: (Self.Element, Self.Element) throws -> Bool) rethrows -> [Self.SubSequence]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/chunked(by:))

Returns a collection of subsequences of this collection, chunked by the given predicate.

[`func chunked<Subject>(on: (Self.Element) throws -> Subject) rethrows -> [(Subject, Self.SubSequence)]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/chunked(on:)-6xpp6)

Returns a collection of subsequences of this collection, chunked by grouping elements that project to equal values.

[`func chunks(ofCount: Int) -> ChunksOfCountCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/chunks(ofcount:))

Returns a collection of subsequences, each with up to the specified length.

[`func combinations(ofCount: Int) -> CombinationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/combinations(ofcount:))

Returns a collection of combinations of this collection’s elements, with each combination having the specified number of elements.

[`func compacted<Unwrapped>() -> CompactedCollection<Self, Unwrapped>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/compacted()-54jl4)

Returns a new `Collection` that iterates over every non-nil element from the original `Collection`.

[`func contains<C>(C) -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/contains(_:)-68dp5)

[`func cycled() -> CycledSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/cycled())

Returns a sequence that repeats the elements of this collection forever.

[`func cycled(times: Int) -> CycledTimesCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/cycled(times:))

Returns a sequence that repeats the elements of this collection the specified number of times.

[`func distance(from: JoinedByCollection<Base, Separator>.Index, to: JoinedByCollection<Base, Separator>.Index) -> Int`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/distance(from:to:))

[`func drop(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/drop(while:))

[`func dropFirst(Int) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/dropfirst(_:))

[`func dropLast(Int) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/droplast(_:))

[`func endOfPrefix(while: (Self.Element) throws -> Bool) rethrows -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/endofprefix(while:))

Returns the exclusive upper bound of the prefix of elements that satisfy the predicate.

[`func evenlyChunked(in: Int) -> EvenlyChunkedCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/evenlychunked(in:))

Returns a collection of evenly divided consecutive subsequences of this collection.

[`func firstIndex(of: Self.Element) -> Self.Index?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/firstindex(of:))

[`func firstIndex(where: (Self.Element) throws -> Bool) rethrows -> Self.Index?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/firstindex(where:))

[`func firstRange<C>(of: C) -> Range<Self.Index>?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/firstrange(of:)-9er2l)

[`func formIndex(inout Self.Index, offsetBy: Int)`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/formindex(_:offsetby:))

[`func formIndex(inout Self.Index, offsetBy: Int, limitedBy: Self.Index) -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/formindex(_:offsetby:limitedby:))

[`func formIndex(after: inout Self.Index)`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/formindex(after:))

[`func index(JoinedByCollection<Base, Separator>.Index, offsetBy: Int) -> JoinedByCollection<Base, Separator>.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/index(_:offsetby:))

[`func index(JoinedByCollection<Base, Separator>.Index, offsetBy: Int, limitedBy: JoinedByCollection<Base, Separator>.Index) -> JoinedByCollection<Base, Separator>.Index?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/index(_:offsetby:limitedby:))

[`func index(after: JoinedByCollection<Base, Separator>.Index) -> JoinedByCollection<Base, Separator>.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/index(after:))

[`func index(of: Self.Element) -> Self.Index?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/index(of:)) Deprecated

[`func indexed() -> IndexedCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/indexed())

Returns a collection of pairs _(i, x)_, where _i_ represents an index of the collection, and _x_ represents an element.

[`func indices(of: Self.Element) -> RangeSet<Self.Index>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/indices(of:))

[`func indices(where: (Self.Element) throws -> Bool) rethrows -> RangeSet<Self.Index>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/indices(where:))

[`func joined(by: Self.Element.Element) -> JoinedByCollection<Self, CollectionOfOne<Self.Element.Element>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/joined(by:)-3y10a)

Returns the concatenation of the elements in this collection of collections, inserting the given separator between each collection.

[`func joined<Separator>(by: Separator) -> JoinedByCollection<Self, Separator>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/joined(by:)-9cwrb)

Returns the concatenation of the elements in this collection of collections, inserting the given separator between each collection.

[`func makeIterator() -> IndexingIterator<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/makeiterator())

[`func map<T, E>((Self.Element) throws(E) -> T) throws(E) -> [T]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/map(_:)-7j1wy)

[`func max(count: Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/max(count:)-47l4p)

Returns the largest elements of this collection.

[`func max(count: Int, sortedBy: (Self.Element, Self.Element) throws -> Bool) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/max(count:sortedby:))

Returns the largest elements of this collection, as sorted by the given predicate.

[`func min(count: Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/min(count:)-59ztp)

Returns the smallest elements of this collection.

[`func min(count: Int, sortedBy: (Self.Element, Self.Element) throws -> Bool) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/min(count:sortedby:))

Returns the smallest elements of this collection, as sorted by the given predicate.

[`func partitioned(by: (Self.Element) throws -> Bool) rethrows -> (falseElements: [Self.Element], trueElements: [Self.Element])`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/partitioned(by:))

Returns two arrays containing the elements of the collection that don’t and do satisfy the given predicate, respectively.

[`func partitioningIndex(where: (Self.Element) throws -> Bool) rethrows -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/partitioningindex(where:))

Returns the start index of the partition of a collection that matches the given predicate.

[`func permutations(ofCount: Int?) -> PermutationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/permutations(ofcount:))

Returns a collection of the permutations of this collection of the specified length.

[`func prefix(Int) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/prefix(_:))

[`func prefix(through: Self.Index) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/prefix(through:))

[`func prefix(upTo: Self.Index) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/prefix(upto:))

[`func prefix(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/prefix(while:))

[`func randomElement() -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/randomelement())

[`func randomElement<T>(using: inout T) -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/randomelement(using:))

[`func randomSample(count: Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/randomsample(count:))

Randomly selects the specified number of elements from this collection.

[`func randomSample<G>(count: Int, using: inout G) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/randomsample(count:using:)-8eva0)

Randomly selects the specified number of elements from this collection.

[`func randomStableSample(count: Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/randomstablesample(count:))

Randomly selects the specified number of elements from this collection, maintaining their relative order.

[`func randomStableSample<G>(count: Int, using: inout G) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/randomstablesample(count:using:))

Randomly selects the specified number of elements from this collection, maintaining their relative order.

[`func ranges<C>(of: C) -> [Range<Self.Index>]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/ranges(of:))

[`func removingSubranges(RangeSet<Self.Index>) -> DiscontiguousSlice<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/removingsubranges(_:))

[`func split(maxSplits: Int, omittingEmptySubsequences: Bool, whereSeparator: (Self.Element) throws -> Bool) rethrows -> [Self.SubSequence]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/split(maxsplits:omittingemptysubsequences:whereseparator:))

[`func split<C>(separator: C, maxSplits: Int, omittingEmptySubsequences: Bool) -> [Self.SubSequence]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/split(separator:maxsplits:omittingemptysubsequences:)-5pxsu)

[`func split(separator: Self.Element, maxSplits: Int, omittingEmptySubsequences: Bool) -> [Self.SubSequence]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/split(separator:maxsplits:omittingemptysubsequences:)-84ixa)

[`func striding(by: Int) -> StridingCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/striding(by:))

Returns a sequence stepping through the elements every `step` starting at the first value. Any remainders of the stride will be trimmed.

[`func suffix(Int) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/suffix(_:))

[`func suffix(from: Self.Index) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/suffix(from:))

[`func trimmingPrefix<Prefix>(Prefix) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/trimmingprefix(_:))

[`func trimmingPrefix(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/trimmingprefix(while:))

Returns a `SubSequence` formed by discarding all elements at the start of the collection which satisfy the given predicate.

[`func uniquePermutations<R>(ofCount: R) -> UniquePermutationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/uniquepermutations(ofcount:)-4faxz)

Returns a collection of the unique permutations of this sequence with lengths in the specified range.

[`func uniquePermutations(ofCount: Int?) -> UniquePermutationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/uniquepermutations(ofcount:)-62h6j)

Returns a sequence of the unique permutations of this sequence of the specified length.

[`func windows(ofCount: Int) -> WindowsOfCountCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/windows(ofcount:))

Returns a collection of all the overlapping slices of a given size.

### [Subscripts](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/collection-implementations\#Subscripts)

[`subscript(JoinedByCollection<Base, Separator>.Index) -> Base.Element.Element`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joinedbycollection/subscript(_:))

Current page is Collection Implementations

|
|