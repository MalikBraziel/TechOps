---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/collection-implementations"
title: "Collection Implementations | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/collection-implementations#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Selecting Elements](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/selecting)
- [StridingCollection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection)
- Collection Implementations

API Collection

# Collection Implementations

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/collection-implementations\#topics)

### [Structures](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/collection-implementations\#Structures)

[`struct Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/index)

A position in a `StridingCollection` instance.

### [Instance Properties](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/collection-implementations\#Instance-Properties)

[`var count: Int`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/count)

[`var endIndex: StridingCollection<Base>.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/endindex)

[`var first: Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/first)

[`var indices: DefaultIndices<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/indices)

[`var isEmpty: Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/isempty)

[`var startIndex: StridingCollection<Base>.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/startindex)

[`var underestimatedCount: Int`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/underestimatedcount)

### [Instance Methods](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/collection-implementations\#Instance-Methods)

[`func adjacentPairs() -> AdjacentPairsCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/adjacentpairs())

Returns a collection of overlapping adjacent pairs of the elements of this collection.

[`func chunked(by: (Self.Element, Self.Element) throws -> Bool) rethrows -> [Self.SubSequence]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/chunked(by:))

Returns a collection of subsequences of this collection, chunked by the given predicate.

[`func chunked<Subject>(on: (Self.Element) throws -> Subject) rethrows -> [(Subject, Self.SubSequence)]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/chunked(on:)-80jpl)

Returns a collection of subsequences of this collection, chunked by grouping elements that project to equal values.

[`func chunks(ofCount: Int) -> ChunksOfCountCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/chunks(ofcount:))

Returns a collection of subsequences, each with up to the specified length.

[`func combinations(ofCount: Int) -> CombinationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/combinations(ofcount:))

Returns a collection of combinations of this collection’s elements, with each combination having the specified number of elements.

[`func compacted<Unwrapped>() -> CompactedCollection<Self, Unwrapped>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/compacted()-3q55r)

Returns a new `Collection` that iterates over every non-nil element from the original `Collection`.

[`func contains<C>(C) -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/contains(_:)-1po44)

[`func cycled() -> CycledSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/cycled())

Returns a sequence that repeats the elements of this collection forever.

[`func cycled(times: Int) -> CycledTimesCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/cycled(times:))

Returns a sequence that repeats the elements of this collection the specified number of times.

[`func distance(from: StridingCollection<Base>.Index, to: StridingCollection<Base>.Index) -> Int`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/distance(from:to:))

[`func drop(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/drop(while:))

[`func dropFirst(Int) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/dropfirst(_:))

[`func dropLast(Int) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/droplast(_:))

[`func endOfPrefix(while: (Self.Element) throws -> Bool) rethrows -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/endofprefix(while:))

Returns the exclusive upper bound of the prefix of elements that satisfy the predicate.

[`func evenlyChunked(in: Int) -> EvenlyChunkedCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/evenlychunked(in:))

Returns a collection of evenly divided consecutive subsequences of this collection.

[`func firstIndex(of: Self.Element) -> Self.Index?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/firstindex(of:))

[`func firstIndex(where: (Self.Element) throws -> Bool) rethrows -> Self.Index?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/firstindex(where:))

[`func firstRange<C>(of: C) -> Range<Self.Index>?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/firstrange(of:)-93fva)

[`func formIndex(inout Self.Index, offsetBy: Int)`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/formindex(_:offsetby:))

[`func formIndex(inout Self.Index, offsetBy: Int, limitedBy: Self.Index) -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/formindex(_:offsetby:limitedby:))

[`func formIndex(after: inout Self.Index)`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/formindex(after:))

[`func index(StridingCollection<Base>.Index, offsetBy: Int) -> StridingCollection<Base>.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/index(_:offsetby:))

[`func index(StridingCollection<Base>.Index, offsetBy: Int, limitedBy: StridingCollection<Base>.Index) -> StridingCollection<Base>.Index?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/index(_:offsetby:limitedby:))

[`func index(after: StridingCollection<Base>.Index) -> StridingCollection<Base>.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/index(after:))

[`func index(of: Self.Element) -> Self.Index?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/index(of:)) Deprecated

[`func indexed() -> IndexedCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/indexed())

Returns a collection of pairs _(i, x)_, where _i_ represents an index of the collection, and _x_ represents an element.

[`func indices(of: Self.Element) -> RangeSet<Self.Index>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/indices(of:))

[`func indices(where: (Self.Element) throws -> Bool) rethrows -> RangeSet<Self.Index>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/indices(where:))

[`func joined<Separator>(by: Separator) -> JoinedByCollection<Self, Separator>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/joined(by:)-4wzkc)

Returns the concatenation of the elements in this collection of collections, inserting the given separator between each collection.

[`func joined(by: Self.Element.Element) -> JoinedByCollection<Self, CollectionOfOne<Self.Element.Element>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/joined(by:)-9olbs)

Returns the concatenation of the elements in this collection of collections, inserting the given separator between each collection.

[`func makeIterator() -> IndexingIterator<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/makeiterator())

[`func map<T, E>((Self.Element) throws(E) -> T) throws(E) -> [T]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/map(_:)-6h1mw)

[`func max(count: Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/max(count:)-842y5)

Returns the largest elements of this collection.

[`func max(count: Int, sortedBy: (Self.Element, Self.Element) throws -> Bool) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/max(count:sortedby:))

Returns the largest elements of this collection, as sorted by the given predicate.

[`func min(count: Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/min(count:)-xug9)

Returns the smallest elements of this collection.

[`func min(count: Int, sortedBy: (Self.Element, Self.Element) throws -> Bool) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/min(count:sortedby:))

Returns the smallest elements of this collection, as sorted by the given predicate.

[`func partitioned(by: (Self.Element) throws -> Bool) rethrows -> (falseElements: [Self.Element], trueElements: [Self.Element])`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/partitioned(by:))

Returns two arrays containing the elements of the collection that don’t and do satisfy the given predicate, respectively.

[`func partitioningIndex(where: (Self.Element) throws -> Bool) rethrows -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/partitioningindex(where:))

Returns the start index of the partition of a collection that matches the given predicate.

[`func permutations(ofCount: Int?) -> PermutationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/permutations(ofcount:))

Returns a collection of the permutations of this collection of the specified length.

[`func prefix(Int) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/prefix(_:))

[`func prefix(through: Self.Index) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/prefix(through:))

[`func prefix(upTo: Self.Index) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/prefix(upto:))

[`func prefix(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/prefix(while:))

[`func randomElement() -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/randomelement())

[`func randomElement<T>(using: inout T) -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/randomelement(using:))

[`func randomSample(count: Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/randomsample(count:))

Randomly selects the specified number of elements from this collection.

[`func randomSample<G>(count: Int, using: inout G) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/randomsample(count:using:)-49zk2)

Randomly selects the specified number of elements from this collection.

[`func randomStableSample(count: Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/randomstablesample(count:))

Randomly selects the specified number of elements from this collection, maintaining their relative order.

[`func randomStableSample<G>(count: Int, using: inout G) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/randomstablesample(count:using:))

Randomly selects the specified number of elements from this collection, maintaining their relative order.

[`func ranges<C>(of: C) -> [Range<Self.Index>]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/ranges(of:))

[`func removingSubranges(RangeSet<Self.Index>) -> DiscontiguousSlice<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/removingsubranges(_:))

[`func split(maxSplits: Int, omittingEmptySubsequences: Bool, whereSeparator: (Self.Element) throws -> Bool) rethrows -> [Self.SubSequence]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/split(maxsplits:omittingemptysubsequences:whereseparator:))

[`func split<C>(separator: C, maxSplits: Int, omittingEmptySubsequences: Bool) -> [Self.SubSequence]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/split(separator:maxsplits:omittingemptysubsequences:)-3tnoe)

[`func split(separator: Self.Element, maxSplits: Int, omittingEmptySubsequences: Bool) -> [Self.SubSequence]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/split(separator:maxsplits:omittingemptysubsequences:)-4ly1s)

[`func suffix(Int) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/suffix(_:))

[`func suffix(from: Self.Index) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/suffix(from:))

[`func trimmingPrefix<Prefix>(Prefix) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/trimmingprefix(_:))

[`func trimmingPrefix(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/trimmingprefix(while:))

Returns a `SubSequence` formed by discarding all elements at the start of the collection which satisfy the given predicate.

[`func uniquePermutations(ofCount: Int?) -> UniquePermutationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/uniquepermutations(ofcount:)-8r445)

Returns a sequence of the unique permutations of this sequence of the specified length.

[`func uniquePermutations<R>(ofCount: R) -> UniquePermutationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/uniquepermutations(ofcount:)-9w3w0)

Returns a collection of the unique permutations of this sequence with lengths in the specified range.

[`func windows(ofCount: Int) -> WindowsOfCountCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/windows(ofcount:))

Returns a collection of all the overlapping slices of a given size.

### [Subscripts](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/collection-implementations\#Subscripts)

[`subscript(StridingCollection<Base>.Index) -> Base.Element`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection/subscript(_:))

Current page is Collection Implementations

|
|