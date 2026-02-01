---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/collection-implementations"
title: "Collection Implementations | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/collection-implementations#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Slicing and Splitting](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/slicingsplitting)
- [WindowsOfCountCollection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection)
- Collection Implementations

API Collection

# Collection Implementations

## [Topics](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/collection-implementations\#topics)

### [Structures](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/collection-implementations\#Structures)

[`struct Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/index)

A position in a `WindowsOfCountCollection` instance.

### [Instance Properties](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/collection-implementations\#Instance-Properties)

[`var count: Int`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/count)

[`var endIndex: WindowsOfCountCollection<Base>.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/endindex)

[`var first: Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/first)

[`var indices: DefaultIndices<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/indices)

[`var isEmpty: Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/isempty)

[`var startIndex: WindowsOfCountCollection<Base>.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/startindex)

[`var underestimatedCount: Int`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/underestimatedcount)

### [Instance Methods](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/collection-implementations\#Instance-Methods)

[`func adjacentPairs() -> AdjacentPairsCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/adjacentpairs())

Returns a collection of overlapping adjacent pairs of the elements of this collection.

[`func chunked(by: (Self.Element, Self.Element) throws -> Bool) rethrows -> [Self.SubSequence]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/chunked(by:))

Returns a collection of subsequences of this collection, chunked by the given predicate.

[`func chunked<Subject>(on: (Self.Element) throws -> Subject) rethrows -> [(Subject, Self.SubSequence)]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/chunked(on:)-9za2k)

Returns a collection of subsequences of this collection, chunked by grouping elements that project to equal values.

[`func chunks(ofCount: Int) -> ChunksOfCountCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/chunks(ofcount:))

Returns a collection of subsequences, each with up to the specified length.

[`func combinations(ofCount: Int) -> CombinationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/combinations(ofcount:))

Returns a collection of combinations of this collection’s elements, with each combination having the specified number of elements.

[`func compacted<Unwrapped>() -> CompactedCollection<Self, Unwrapped>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/compacted()-9dpjn)

Returns a new `Collection` that iterates over every non-nil element from the original `Collection`.

[`func contains<C>(C) -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/contains(_:)-wmsr)

[`func cycled() -> CycledSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/cycled())

Returns a sequence that repeats the elements of this collection forever.

[`func cycled(times: Int) -> CycledTimesCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/cycled(times:))

Returns a sequence that repeats the elements of this collection the specified number of times.

[`func distance(from: WindowsOfCountCollection<Base>.Index, to: WindowsOfCountCollection<Base>.Index) -> Int`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/distance(from:to:))

[`func drop(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/drop(while:))

[`func dropFirst(Int) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/dropfirst(_:))

[`func dropLast(Int) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/droplast(_:))

[`func endOfPrefix(while: (Self.Element) throws -> Bool) rethrows -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/endofprefix(while:))

Returns the exclusive upper bound of the prefix of elements that satisfy the predicate.

[`func evenlyChunked(in: Int) -> EvenlyChunkedCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/evenlychunked(in:))

Returns a collection of evenly divided consecutive subsequences of this collection.

[`func firstIndex(of: Self.Element) -> Self.Index?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/firstindex(of:))

[`func firstIndex(where: (Self.Element) throws -> Bool) rethrows -> Self.Index?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/firstindex(where:))

[`func firstRange<C>(of: C) -> Range<Self.Index>?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/firstrange(of:)-2vttc)

[`func formIndex(inout Self.Index, offsetBy: Int)`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/formindex(_:offsetby:))

[`func formIndex(inout Self.Index, offsetBy: Int, limitedBy: Self.Index) -> Bool`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/formindex(_:offsetby:limitedby:))

[`func formIndex(after: inout Self.Index)`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/formindex(after:))

[`func index(WindowsOfCountCollection<Base>.Index, offsetBy: Int) -> WindowsOfCountCollection<Base>.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/index(_:offsetby:))

[`func index(WindowsOfCountCollection<Base>.Index, offsetBy: Int, limitedBy: WindowsOfCountCollection<Base>.Index) -> WindowsOfCountCollection<Base>.Index?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/index(_:offsetby:limitedby:))

[`func index(after: WindowsOfCountCollection<Base>.Index) -> WindowsOfCountCollection<Base>.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/index(after:))

[`func index(of: Self.Element) -> Self.Index?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/index(of:)) Deprecated

[`func indexed() -> IndexedCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/indexed())

Returns a collection of pairs _(i, x)_, where _i_ represents an index of the collection, and _x_ represents an element.

[`func indices(of: Self.Element) -> RangeSet<Self.Index>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/indices(of:))

[`func indices(where: (Self.Element) throws -> Bool) rethrows -> RangeSet<Self.Index>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/indices(where:))

[`func joined(by: Self.Element.Element) -> JoinedByCollection<Self, CollectionOfOne<Self.Element.Element>>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/joined(by:))

Returns the concatenation of the elements in this collection of collections, inserting the given separator between each collection.

[`func makeIterator() -> IndexingIterator<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/makeiterator())

[`func map<T, E>((Self.Element) throws(E) -> T) throws(E) -> [T]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/map(_:)-3wyh6)

[`func max(count: Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/max(count:)-7mtqi)

Returns the largest elements of this collection.

[`func max(count: Int, sortedBy: (Self.Element, Self.Element) throws -> Bool) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/max(count:sortedby:))

Returns the largest elements of this collection, as sorted by the given predicate.

[`func min(count: Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/min(count:)-9ii1l)

Returns the smallest elements of this collection.

[`func min(count: Int, sortedBy: (Self.Element, Self.Element) throws -> Bool) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/min(count:sortedby:))

Returns the smallest elements of this collection, as sorted by the given predicate.

[`func partitioned(by: (Self.Element) throws -> Bool) rethrows -> (falseElements: [Self.Element], trueElements: [Self.Element])`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/partitioned(by:))

Returns two arrays containing the elements of the collection that don’t and do satisfy the given predicate, respectively.

[`func partitioningIndex(where: (Self.Element) throws -> Bool) rethrows -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/partitioningindex(where:))

Returns the start index of the partition of a collection that matches the given predicate.

[`func permutations(ofCount: Int?) -> PermutationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/permutations(ofcount:))

Returns a collection of the permutations of this collection of the specified length.

[`func prefix(Int) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/prefix(_:))

[`func prefix(through: Self.Index) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/prefix(through:))

[`func prefix(upTo: Self.Index) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/prefix(upto:))

[`func prefix(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/prefix(while:))

[`func randomElement() -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/randomelement())

[`func randomElement<T>(using: inout T) -> Self.Element?`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/randomelement(using:))

[`func randomSample(count: Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/randomsample(count:))

Randomly selects the specified number of elements from this collection.

[`func randomSample<G>(count: Int, using: inout G) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/randomsample(count:using:)-6pv7w)

Randomly selects the specified number of elements from this collection.

[`func randomStableSample(count: Int) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/randomstablesample(count:))

Randomly selects the specified number of elements from this collection, maintaining their relative order.

[`func randomStableSample<G>(count: Int, using: inout G) -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/randomstablesample(count:using:))

Randomly selects the specified number of elements from this collection, maintaining their relative order.

[`func ranges<C>(of: C) -> [Range<Self.Index>]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/ranges(of:))

[`func removingSubranges(RangeSet<Self.Index>) -> DiscontiguousSlice<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/removingsubranges(_:))

[`func split(maxSplits: Int, omittingEmptySubsequences: Bool, whereSeparator: (Self.Element) throws -> Bool) rethrows -> [Self.SubSequence]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/split(maxsplits:omittingemptysubsequences:whereseparator:))

[`func split<C>(separator: C, maxSplits: Int, omittingEmptySubsequences: Bool) -> [Self.SubSequence]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/split(separator:maxsplits:omittingemptysubsequences:)-595l1)

[`func split(separator: Self.Element, maxSplits: Int, omittingEmptySubsequences: Bool) -> [Self.SubSequence]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/split(separator:maxsplits:omittingemptysubsequences:)-73iyb)

[`func striding(by: Int) -> StridingCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/striding(by:))

Returns a sequence stepping through the elements every `step` starting at the first value. Any remainders of the stride will be trimmed.

[`func suffix(Int) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/suffix(_:))

[`func suffix(from: Self.Index) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/suffix(from:))

[`func trimmingPrefix<Prefix>(Prefix) -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/trimmingprefix(_:))

[`func trimmingPrefix(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/trimmingprefix(while:))

Returns a `SubSequence` formed by discarding all elements at the start of the collection which satisfy the given predicate.

[`func uniquePermutations<R>(ofCount: R) -> UniquePermutationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/uniquepermutations(ofcount:)-37k66)

Returns a collection of the unique permutations of this sequence with lengths in the specified range.

[`func uniquePermutations(ofCount: Int?) -> UniquePermutationsSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/uniquepermutations(ofcount:)-6szli)

Returns a sequence of the unique permutations of this sequence of the specified length.

[`func windows(ofCount: Int) -> WindowsOfCountCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/windows(ofcount:))

Returns a collection of all the overlapping slices of a given size.

### [Subscripts](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/collection-implementations\#Subscripts)

[`subscript(WindowsOfCountCollection<Base>.Index) -> Base.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection/subscript(_:))

Current page is Collection Implementations

|
|