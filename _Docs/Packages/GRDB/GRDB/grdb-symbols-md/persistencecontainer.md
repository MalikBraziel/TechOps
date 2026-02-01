# Index

- `allsatisfy(_:)`
- `bidirectionalcollection-implementations`
- `collection-implementations`
- `compactmap(_:)`
- `compare(_:_:)`
- `contains(where:)`
- `count(where:)`
- `count`
- `difference(from:by:)`
- `drop(while:)`
- `dropfirst(_:)`
- `droplast(_:)`
- `elementsequal(_:by:)`
- `endindex`
- `enumerated()`
- `filter(_:)`
- `first(where:)`
- `first`
- `firstindex(where:)`
- `flatmap(_:)-4u9l4`
- `flatmap(_:)-9fb5a`
- `flatmap(_:)-9uvnw`
- `foreach(_:)`
- `formatted(_:)`
- `formindex(_:offsetby:)`
- `formindex(_:offsetby:limitedby:)`
- `formindex(after:)`
- `formindex(before:)`
- `index(_:offsetby:limitedby:)`
- `index`
- `indices(where:)`
- `isempty`
- `last(where:)`
- `last`
- `lastindex(where:)`
- `lazy`
- `lexicographicallyprecedes(_:by:)`
- `makeiterator()`
- `map(_:)-3iou7`
- `map(_:)-6n10i`
- `max(by:)`
- `min(by:)`
- `prefix(_:)`
- `prefix(through:)`
- `prefix(upto:)`
- `prefix(while:)`
- `publisher`
- `randomaccesscollection-implementations`
- `randomelement()`
- `randomelement(using:)`
- `reduce(_:_:)`
- `reduce(into:_:)`
- `removingsubranges(_:)`
- `reversed()`
- `sequence-implementations`
- `shuffled()`
- `shuffled(using:)`
- `sorted(by:)`
- `sorted(using:)-2xgi2`
- `sorted(using:)-j56x`
- `split(maxsplits:omittingemptysubsequences:whereseparator:)`
- `startindex`
- `starts(with:by:)`
- `subscript(_:)-1fscb`
- `subscript(_:)-3hqaj`
- `subscript(_:)-3ve78`
- `subscript(_:)-42djq`
- `subscript(_:)-9ac3g`
- `subscript(_:)-9q5pl`
- `subscript(_:)-x4cg`
- `suffix(_:)`
- `suffix(from:)`
- `trimmingprefix(while:)`
- `underestimatedcount`
- `withcontiguousstorageifavailable(_:)`

---


## `allsatisfy(_:)`

> Inherited from   .

```swift
func allSatisfy(_ predicate: (Self.Element) throws -> Bool) rethrows -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `bidirectionalcollection-implementations`

- **Role Heading:** API Collection


---

## `collection-implementations`

- **Role Heading:** API Collection


---

## `compactmap(_:)`

> Inherited from   .

```swift
func compactMap<ElementOfResult>(_ transform: (Self.Element) throws -> ElementOfResult?) rethrows -> [ElementOfResult]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `compare(_:_:)`

> Inherited from   .

```swift
func compare<Comparator>(_ lhs: Comparator.Compared, _ rhs: Comparator.Compared) -> ComparisonResult where Comparator : SortComparator, Comparator == Self.Element
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `contains(where:)`

> Inherited from   .

```swift
func contains(where predicate: (Self.Element) throws -> Bool) rethrows -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `count(where:)`

> Inherited from   .

```swift
func count<E>(where predicate: (Self.Element) throws(E) -> Bool) throws(E) -> Int where E : Error
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `count`

> Inherited from   .

```swift
var count: Int { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `difference(from:by:)`

> Inherited from   .

```swift
func difference<C>(from other: C, by areEquivalent: (C.Element, Self.Element) -> Bool) -> CollectionDifference<Self.Element> where C : BidirectionalCollection, Self.Element == C.Element
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `drop(while:)`

> Inherited from   .

```swift
func drop(while predicate: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `dropfirst(_:)`

> Inherited from   .

```swift
func dropFirst(_ k: Int = 1) -> Self.SubSequence
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `droplast(_:)`

> Inherited from   .

```swift
func dropLast(_ k: Int) -> Self.SubSequence
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `elementsequal(_:by:)`

> Inherited from   .

```swift
func elementsEqual<OtherSequence>(_ other: OtherSequence, by areEquivalent: (Self.Element, OtherSequence.Element) throws -> Bool) rethrows -> Bool where OtherSequence : Sequence
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `endindex`

> Inherited from   .

```swift
var endIndex: Int { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `enumerated()`

> Inherited from   .

```swift
func enumerated() -> EnumeratedSequence<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(_:)`

> Inherited from   .

```swift
func filter(_ isIncluded: (Self.Element) throws -> Bool) rethrows -> [Self.Element]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `first(where:)`

> Inherited from   .

```swift
func first(where predicate: (Self.Element) throws -> Bool) rethrows -> Self.Element?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `first`

> Inherited from   .

```swift
var first: Self.Element? { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `firstindex(where:)`

> Inherited from   .

```swift
func firstIndex(where predicate: (Self.Element) throws -> Bool) rethrows -> Self.Index?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `flatmap(_:)-4u9l4`

> Inherited from   .

```swift
func flatMap<SegmentOfResult>(_ transform: (Self.Element) throws -> SegmentOfResult) rethrows -> [SegmentOfResult.Element] where SegmentOfResult : Sequence
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `flatmap(_:)-9fb5a`

> Returns a cursor over the concatenated results of mapping transform   over self.

```swift
func flatMap<SegmentOfResult>(_ transform: @escaping (Iterator.Element) throws -> SegmentOfResult) -> FlattenCursor<MapCursor<AnyCursor<Iterator.Element>, SegmentOfResult>> where SegmentOfResult : Cursor
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `flatmap(_:)-9uvnw`

> Inherited from   .

```swift
func flatMap<ElementOfResult>(_ transform: (Self.Element) throws -> ElementOfResult?) rethrows -> [ElementOfResult]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `foreach(_:)`

> Inherited from   .

```swift
func forEach(_ body: (Self.Element) throws -> Void) rethrows
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `formatted(_:)`

> Inherited from   .

```swift
func formatted<S>(_ style: S) -> S.FormatOutput where Self == S.FormatInput, S : FormatStyle
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `formindex(_:offsetby:)`

> Inherited from   .

```swift
func formIndex(_ i: inout Self.Index, offsetBy distance: Int)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `formindex(_:offsetby:limitedby:)`

> Inherited from   .

```swift
func formIndex(_ i: inout Self.Index, offsetBy distance: Int, limitedBy limit: Self.Index) -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `formindex(after:)`

> Inherited from   .

```swift
func formIndex(after i: inout Self.Index)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `formindex(before:)`

> Inherited from   .

```swift
func formIndex(before i: inout Self.Index)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `index(_:offsetby:limitedby:)`

> Inherited from   .

```swift
func index(_ i: Self.Index, offsetBy distance: Int, limitedBy limit: Self.Index) -> Self.Index?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `index`

> Inherited from   .

```swift
typealias Index = Int
```

- **Symbol Kind:** typealias

- **Role Heading:** Type Alias


---

## `indices(where:)`

> Inherited from   .

```swift
func indices(where predicate: (Self.Element) throws -> Bool) rethrows -> RangeSet<Self.Index>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `isempty`

> Inherited from   .

```swift
var isEmpty: Bool { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `last(where:)`

> Inherited from   .

```swift
func last(where predicate: (Self.Element) throws -> Bool) rethrows -> Self.Element?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `last`

> Inherited from   .

```swift
var last: Self.Element? { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `lastindex(where:)`

> Inherited from   .

```swift
func lastIndex(where predicate: (Self.Element) throws -> Bool) rethrows -> Self.Index?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `lazy`

> Inherited from   .

```swift
var lazy: LazySequence<Self> { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `lexicographicallyprecedes(_:by:)`

> Inherited from   .

```swift
func lexicographicallyPrecedes<OtherSequence>(_ other: OtherSequence, by areInIncreasingOrder: (Self.Element, Self.Element) throws -> Bool) rethrows -> Bool where OtherSequence : Sequence, Self.Element == OtherSequence.Element
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `makeiterator()`

> Inherited from   .

```swift
func makeIterator() -> IndexingIterator<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `map(_:)-3iou7`

> Inherited from   .

```swift
func map<T, E>(_ transform: (Self.Element) throws(E) -> T) throws(E) -> [T] where E : Error
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `map(_:)-6n10i`

> Inherited from   .

```swift
func map<T, E>(_ transform: (Self.Element) throws(E) -> T) throws(E) -> [T] where E : Error
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `max(by:)`

> Inherited from   .

```swift
@warn_unqualified_access func max(by areInIncreasingOrder: (Self.Element, Self.Element) throws -> Bool) rethrows -> Self.Element?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `min(by:)`

> Inherited from   .

```swift
@warn_unqualified_access func min(by areInIncreasingOrder: (Self.Element, Self.Element) throws -> Bool) rethrows -> Self.Element?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `prefix(_:)`

> Inherited from   .

```swift
func prefix(_ maxLength: Int) -> Self.SubSequence
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `prefix(through:)`

> Inherited from   .

```swift
func prefix(through position: Self.Index) -> Self.SubSequence
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `prefix(upto:)`

> Inherited from   .

```swift
func prefix(upTo end: Self.Index) -> Self.SubSequence
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `prefix(while:)`

> Inherited from   .

```swift
func prefix(while predicate: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `publisher`

> Inherited from   .

```swift
var publisher: Publishers.Sequence<Self, Never> { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `randomaccesscollection-implementations`

- **Role Heading:** API Collection


---

## `randomelement()`

> Inherited from   .

```swift
func randomElement() -> Self.Element?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `randomelement(using:)`

> Inherited from   .

```swift
func randomElement<T>(using generator: inout T) -> Self.Element? where T : RandomNumberGenerator
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `reduce(_:_:)`

> Inherited from   .

```swift
func reduce<Result>(_ initialResult: Result, _ nextPartialResult: (Result, Self.Element) throws -> Result) rethrows -> Result
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `reduce(into:_:)`

> Inherited from   .

```swift
func reduce<Result>(into initialResult: Result, _ updateAccumulatingResult: (inout Result, Self.Element) throws -> ()) rethrows -> Result
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `removingsubranges(_:)`

> Inherited from   .

```swift
func removingSubranges(_ subranges: RangeSet<Self.Index>) -> DiscontiguousSlice<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `reversed()`

> Inherited from   .

```swift
func reversed() -> ReversedCollection<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `sequence-implementations`

- **Role Heading:** API Collection


---

## `shuffled()`

> Inherited from   .

```swift
func shuffled() -> [Self.Element]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `shuffled(using:)`

> Inherited from   .

```swift
func shuffled<T>(using generator: inout T) -> [Self.Element] where T : RandomNumberGenerator
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `sorted(by:)`

> Inherited from   .

```swift
func sorted(by areInIncreasingOrder: (Self.Element, Self.Element) throws -> Bool) rethrows -> [Self.Element]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `sorted(using:)-2xgi2`

> Inherited from   .

```swift
func sorted<S, Comparator>(using comparators: S) -> [Self.Element] where S : Sequence, Comparator : SortComparator, Comparator == S.Element, Self.Element == Comparator.Compared
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `sorted(using:)-j56x`

> Inherited from   .

```swift
func sorted<Comparator>(using comparator: Comparator) -> [Self.Element] where Comparator : SortComparator, Self.Element == Comparator.Compared
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `split(maxsplits:omittingemptysubsequences:whereseparator:)`

> Inherited from   .

```swift
func split(maxSplits: Int = Int.max, omittingEmptySubsequences: Bool = true, whereSeparator isSeparator: (Self.Element) throws -> Bool) rethrows -> [Self.SubSequence]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `startindex`

> Inherited from   .

```swift
var startIndex: Int { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `starts(with:by:)`

> Inherited from   .

```swift
func starts<PossiblePrefix>(with possiblePrefix: PossiblePrefix, by areEquivalent: (Self.Element, PossiblePrefix.Element) throws -> Bool) rethrows -> Bool where PossiblePrefix : Sequence
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `subscript(_:)-1fscb`

> Inherited from   .

```swift
subscript<R>(r: R) -> Self.SubSequence where R : RangeExpression, Self.Index == R.Bound { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-3hqaj`

> Inherited from   .

```swift
subscript(x: (UnboundedRange_) -> ()) -> Self.SubSequence { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-3ve78`

> Inherited from   .

```swift
subscript(subranges: RangeSet<Self.Index>) -> DiscontiguousSlice<Self> { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-42djq`

> The value associated with the given column.

```swift
subscript(column: some ColumnExpression) -> (any DatabaseValueConvertible)? { get set }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-9ac3g`

> Returns the (column, value) pair at given index.

```swift
subscript(position: Int) -> (String, DatabaseValue) { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-9q5pl`

> Inherited from   .

```swift
subscript(bounds: Range<Self.Index>) -> Slice<Self> { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-x4cg`

> The value associated with the given column.

```swift
subscript(column: String) -> (any DatabaseValueConvertible)? { get set }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `suffix(_:)`

> Inherited from   .

```swift
func suffix(_ maxLength: Int) -> Self.SubSequence
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `suffix(from:)`

> Inherited from   .

```swift
func suffix(from start: Self.Index) -> Self.SubSequence
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `trimmingprefix(while:)`

> Inherited from   .

```swift
func trimmingPrefix(while predicate: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `underestimatedcount`

> Inherited from   .

```swift
var underestimatedCount: Int { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `withcontiguousstorageifavailable(_:)`

> Inherited from   .

```swift
func withContiguousStorageIfAvailable<R>(_ body: (UnsafeBufferPointer<Self.Element>) throws -> R) rethrows -> R?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
