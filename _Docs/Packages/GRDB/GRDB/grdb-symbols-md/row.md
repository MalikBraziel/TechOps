# Index

- `!=(_:_:)`
- `==(_:_:)`
- `allsatisfy(_:)`
- `bidirectionalcollection-implementations`
- `coalesce(_:)-359k7`
- `coalesce(_:)-6nbah`
- `collection-implementations`
- `columnnames`
- `compactmap(_:)`
- `compare(_:_:)`
- `contains(where:)`
- `containsnonnullvalue`
- `copy()`
- `count(where:)`
- `count`
- `customdebugstringconvertible-implementations`
- `customstringconvertible-implementations`
- `databasevalues`
- `datanocopy(_:)`
- `datanocopy(atindex:)`
- `datanocopy(named:)`
- `debugdescription`
- `decode(_:atindex:)-33ykh`
- `decode(_:atindex:)-3btwn`
- `decode(_:forcolumn:)-1ljuo`
- `decode(_:forcolumn:)-47qeg`
- `decode(_:forcolumn:)-4i1o4`
- `decode(_:forcolumn:)-4rhs4`
- `decode(_:forkey:)-2soc2`
- `decode(_:forkey:)-2w6lc`
- `decode(_:forkey:)-9bbd3`
- `decodeifpresent(_:forkey:)`
- `description`
- `difference(from:by:)`
- `drop(while:)`
- `dropfirst(_:)`
- `droplast(_:)`
- `elementsequal(_:by:)`
- `endindex`
- `enumerated()`
- `equatable-implementations`
- `expressiblebydictionaryliteral-implementations`
- `fetchall(_:_:)`
- `fetchall(_:arguments:adapter:)`
- `fetchall(_:sql:arguments:adapter:)`
- `fetchcursor(_:_:)`
- `fetchcursor(_:arguments:adapter:)`
- `fetchcursor(_:sql:arguments:adapter:)`
- `fetchone(_:_:)`
- `fetchone(_:arguments:adapter:)`
- `fetchone(_:sql:arguments:adapter:)`
- `fetchset(_:_:)`
- `fetchset(_:arguments:adapter:)`
- `fetchset(_:sql:arguments:adapter:)`
- `filter(_:)`
- `first(where:)`
- `first`
- `firstindex(where:)`
- `flatmap(_:)-3er8o`
- `flatmap(_:)-3vdxj`
- `flatmap(_:)-7pj2w`
- `foreach(_:)`
- `formatted(_:)`
- `formindex(_:offsetby:)`
- `formindex(_:offsetby:limitedby:)`
- `formindex(after:)`
- `formindex(before:)`
- `hascolumn(_:)`
- `hash(into:)`
- `hashable-implementations`
- `hasnull(atindex:)`
- `index(_:offsetby:limitedby:)`
- `index`
- `indices(where:)`
- `init()`
- `init(_:)-5uezw`
- `init(_:)-65by6`
- `init(dictionaryliteral:)`
- `isempty`
- `last(where:)`
- `last`
- `lastindex(where:)`
- `lazy`
- `lexicographicallyprecedes(_:by:)`
- `makeiterator()`
- `map(_:)-43apn`
- `map(_:)-7v8pe`
- `max(by:)`
- `min(by:)`
- `prefetchedrows`
- `prefetchedrowsview`
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
- `scopes`
- `scopestree`
- `scopestreeview`
- `scopesview`
- `sequence-implementations`
- `shuffled()`
- `shuffled(using:)`
- `sorted(by:)`
- `sorted(using:)-1p122`
- `sorted(using:)-1vf0f`
- `split(maxsplits:omittingemptysubsequences:whereseparator:)`
- `startindex`
- `starts(with:by:)`
- `subscript(_:)-2esg7`
- `subscript(_:)-3jhwm`
- `subscript(_:)-3tp8o`
- `subscript(_:)-4dx01`
- `subscript(_:)-4ituo`
- `subscript(_:)-4k8od`
- `subscript(_:)-5wj08`
- `subscript(_:)-5ybfe`
- `subscript(_:)-68yae`
- `subscript(_:)-6ge6t`
- `subscript(_:)-7krrg`
- `subscript(_:)-8god3`
- `subscript(_:)-8jml6`
- `subscript(_:)-9c1fw`
- `subscript(_:)-9rbo7`
- `subscript(_:)-9txgm`
- `subscript(_:)-jwnx`
- `subscript(_:)-wl9a`
- `suffix(_:)`
- `suffix(from:)`
- `trimmingprefix(while:)`
- `unadapted`
- `underestimatedcount`
- `unscoped`
- `withcontiguousstorageifavailable(_:)`
- `withunsafedata(at:_:)`
- `withunsafedata(atindex:_:)`
- `withunsafedata(named:_:)`

---


## `!=(_:_:)`

> Inherited from   .

```swift
static func != (lhs: Self, rhs: Self) -> Bool
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)`

> Returns true if and only if both rows have the same columns and values,   in the same order. Columns are compared in a case-sensitive way.

```swift
static func == (lhs: Row, rhs: Row) -> Bool
```

- **Symbol Kind:** op

- **Role Heading:** Operator


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

## `coalesce(_:)-359k7`

> Returns the first non-null value, if any. Identical to SQL    function.

```swift
func coalesce<T>(_ columns: some Collection<String>) -> T? where T : DatabaseValueConvertible
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `coalesce(_:)-6nbah`

> Returns the first non-null value, if any. Identical to SQL    function.

```swift
func coalesce<T>(_ columns: some Collection<any ColumnExpression>) -> T? where T : DatabaseValueConvertible
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `collection-implementations`

- **Role Heading:** API Collection


---

## `columnnames`

> The names of columns in the row, from left to right.

```swift
var columnNames: LazyMapCollection<Row, String> { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


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

## `containsnonnullvalue`

> Returns a boolean value indicating if the row contains one value this   is not   .

```swift
var containsNonNullValue: Bool { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `copy()`

> Returns an immutable copy of the row.

```swift
func copy() -> Row
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

> The number of columns in the row.

```swift
let count: Int
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `customdebugstringconvertible-implementations`

- **Role Heading:** API Collection


---

## `customstringconvertible-implementations`

- **Role Heading:** API Collection


---

## `databasevalues`

> The database values in the row, from left to right.

```swift
var databaseValues: LazyMapCollection<Row, DatabaseValue> { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `datanocopy(_:)`

> Returns the optional    at given column.

```swift
func dataNoCopy(_ column: some ColumnExpression) -> Data?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `datanocopy(atindex:)`

> Returns the optional    at given index.

```swift
func dataNoCopy(atIndex index: Int) -> Data?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `datanocopy(named:)`

> Returns the optional    at given column.

```swift
func dataNoCopy(named columnName: String) -> Data?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `debugdescription`

> Inherited from   .

```swift
var debugDescription: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `decode(_:atindex:)-33ykh`

> Returns the value at given index, converted to the requested type.

```swift
func decode<Value>(_ type: Value.Type = Value.self, atIndex index: Int) throws -> Value where Value : DatabaseValueConvertible
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `decode(_:atindex:)-3btwn`

> Returns the value at given index, converted to the requested type.

```swift
func decode<Value>(_ type: Value.Type = Value.self, atIndex index: Int) throws -> Value where Value : DatabaseValueConvertible, Value : StatementColumnConvertible
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `decode(_:forcolumn:)-1ljuo`

> Returns the value at given column, converted to the requested type.

```swift
func decode<Value>(_ type: Value.Type = Value.self, forColumn column: some ColumnExpression) throws -> Value where Value : DatabaseValueConvertible
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `decode(_:forcolumn:)-47qeg`

> Returns the value at given column, converted to the requested type.

```swift
func decode<Value>(_ type: Value.Type = Value.self, forColumn column: some ColumnExpression) throws -> Value where Value : DatabaseValueConvertible, Value : StatementColumnConvertible
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `decode(_:forcolumn:)-4i1o4`

> Returns the value at given column, converted to the requested type.

```swift
func decode<Value>(_ type: Value.Type = Value.self, forColumn columnName: String) throws -> Value where Value : DatabaseValueConvertible
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `decode(_:forcolumn:)-4rhs4`

> Returns the value at given column, converted to the requested type.

```swift
func decode<Value>(_ type: Value.Type = Value.self, forColumn columnName: String) throws -> Value where Value : DatabaseValueConvertible, Value : StatementColumnConvertible
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `decode(_:forkey:)-2soc2`

> Returns the set of prefetched records associated to the given   association key.

```swift
func decode<Record>(_ type: Set<Record>.Type = Set<Record>.self, forKey key: String) throws -> Set<Record> where Record : FetchableRecord, Record : Hashable
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `decode(_:forkey:)-2w6lc`

> Returns a collection of prefetched records associated to the given   association key.

```swift
func decode<Collection>(_ type: Collection.Type = Collection.self, forKey key: String) throws -> Collection where Collection : RangeReplaceableCollection, Collection.Element : FetchableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `decode(_:forkey:)-9bbd3`

> Returns the record associated to the given key.

```swift
func decode<Record>(_ type: Record.Type = Record.self, forKey scope: String) throws -> Record where Record : FetchableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `decodeifpresent(_:forkey:)`

> Returns the eventual record associated to the given key.

```swift
func decodeIfPresent<Record>(_ type: Record.Type = Record.self, forKey scope: String) throws -> Record? where Record : FetchableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `description`

> Inherited from   .

```swift
var description: String { get }
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
var endIndex: Index { get }
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

## `equatable-implementations`

- **Role Heading:** API Collection


---

## `expressiblebydictionaryliteral-implementations`

- **Role Heading:** API Collection


---

## `fetchall(_:_:)`

> Returns an array of rows fetched from a fetch request.

```swift
static func fetchAll(_ db: Database, _ request: some FetchRequest) throws -> [Row]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchall(_:arguments:adapter:)`

> Returns an array of rows fetched from a prepared statement.

```swift
static func fetchAll(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> [Row]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchall(_:sql:arguments:adapter:)`

> Returns an array of rows fetched from an SQL query.

```swift
static func fetchAll(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> [Row]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcursor(_:_:)`

> Returns a cursor over rows fetched from a fetch request.

```swift
static func fetchCursor(_ db: Database, _ request: some FetchRequest) throws -> RowCursor
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcursor(_:arguments:adapter:)`

> Returns a cursor over rows fetched from a prepared statement.

```swift
static func fetchCursor(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> RowCursor
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcursor(_:sql:arguments:adapter:)`

> Returns a cursor over rows fetched from an SQL query.

```swift
static func fetchCursor(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> RowCursor
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchone(_:_:)`

> Returns a single row fetched from a fetch request.

```swift
static func fetchOne(_ db: Database, _ request: some FetchRequest) throws -> Row?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchone(_:arguments:adapter:)`

> Returns a single row fetched from a prepared statement.

```swift
static func fetchOne(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> Row?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchone(_:sql:arguments:adapter:)`

> Returns a single row fetched from an SQL query.

```swift
static func fetchOne(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> Row?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchset(_:_:)`

> Returns a set of rows fetched from a fetch request.

```swift
static func fetchSet(_ db: Database, _ request: some FetchRequest) throws -> Set<Row>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchset(_:arguments:adapter:)`

> Returns a set of rows fetched from a prepared statement.

```swift
static func fetchSet(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> Set<Row>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchset(_:sql:arguments:adapter:)`

> Returns a set of rows fetched from an SQL query.

```swift
static func fetchSet(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> Set<Row>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


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

## `flatmap(_:)-3er8o`

> Inherited from   .

```swift
func flatMap<SegmentOfResult>(_ transform: (Self.Element) throws -> SegmentOfResult) rethrows -> [SegmentOfResult.Element] where SegmentOfResult : Sequence
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `flatmap(_:)-3vdxj`

> Inherited from   .

```swift
func flatMap<ElementOfResult>(_ transform: (Self.Element) throws -> ElementOfResult?) rethrows -> [ElementOfResult]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `flatmap(_:)-7pj2w`

> Returns a cursor over the concatenated results of mapping transform   over self.

```swift
func flatMap<SegmentOfResult>(_ transform: @escaping (Iterator.Element) throws -> SegmentOfResult) -> FlattenCursor<MapCursor<AnyCursor<Iterator.Element>, SegmentOfResult>> where SegmentOfResult : Cursor
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

## `hascolumn(_:)`

> Returns whether the row has one column with the given name   (case-insensitive).

```swift
func hasColumn(_ columnName: String) -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `hash(into:)`

> Inherited from   .

```swift
func hash(into hasher: inout Hasher)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `hashable-implementations`

- **Role Heading:** API Collection


---

## `hasnull(atindex:)`

> Returns whether the row has a    value at given index.

```swift
func hasNull(atIndex index: Int) -> Bool
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

> An index to a (column, value) pair in a   .

```swift
struct Index
```

- **Symbol Kind:** struct

- **Role Heading:** Structure


---

## `indices(where:)`

> Inherited from   .

```swift
func indices(where predicate: (Self.Element) throws -> Bool) rethrows -> RangeSet<Self.Index>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `init()`

> Creates an empty row.

```swift
convenience init()
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(_:)-5uezw`

> Creates a row from a dictionary of database values.

```swift
convenience init(_ dictionary: [String : (any DatabaseValueConvertible)?])
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(_:)-65by6`

> Creates a row from a dictionary.

```swift
convenience init?(_ dictionary: [AnyHashable : Any])
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(dictionaryliteral:)`

> Creates a row initialized with elements. Column order is preserved, and   duplicated columns names are allowed.

```swift
convenience init(dictionaryLiteral elements: (String, (any DatabaseValueConvertible)?)...)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


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

## `map(_:)-43apn`

> Inherited from   .

```swift
func map<T, E>(_ transform: (Self.Element) throws(E) -> T) throws(E) -> [T] where E : Error
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `map(_:)-7v8pe`

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

## `prefetchedrows`

> A view on the prefetched associated rows.

```swift
var prefetchedRows: Row.PrefetchedRowsView { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `prefetchedrowsview`

> A view on the prefetched associated rows.

```swift
struct PrefetchedRowsView
```

- **Symbol Kind:** struct

- **Role Heading:** Structure


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

## `scopes`

> A view on the scopes defined by row adapters.

```swift
var scopes: ScopesView { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `scopestree`

> A view on the scopes tree defined by row adapters.

```swift
var scopesTree: ScopesTreeView { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `scopestreeview`

> A view on the scopes tree defined by row adapters.

```swift
struct ScopesTreeView
```

- **Symbol Kind:** struct

- **Role Heading:** Structure


---

## `scopesview`

> A view on the scopes defined by row adapters.

```swift
struct ScopesView
```

- **Symbol Kind:** struct

- **Role Heading:** Structure


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

## `sorted(using:)-1p122`

> Inherited from   .

```swift
func sorted<Comparator>(using comparator: Comparator) -> [Self.Element] where Comparator : SortComparator, Self.Element == Comparator.Compared
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `sorted(using:)-1vf0f`

> Inherited from   .

```swift
func sorted<S, Comparator>(using comparators: S) -> [Self.Element] where S : Sequence, Comparator : SortComparator, Comparator == S.Element, Self.Element == Comparator.Compared
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
var startIndex: Index { get }
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

## `subscript(_:)-2esg7`

> Returns the value at given column, converted to the requested type.

```swift
subscript<Value>(column: some ColumnExpression) -> Value where Value : DatabaseValueConvertible { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-3jhwm`

> Returns the value at given index, converted to the requested type.

```swift
subscript<Value>(index: Int) -> Value where Value : DatabaseValueConvertible { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-3tp8o`

> Returns   ,   ,   ,    or nil, depending on the   value stored at the given column.

```swift
subscript(columnName: String) -> (any DatabaseValueConvertible)? { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-4dx01`

> Returns the eventual record associated to the given key.

```swift
subscript<Record>(scope: String) -> Record? where Record : FetchableRecord { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-4ituo`

> Inherited from   .

```swift
subscript(x: (UnboundedRange_) -> ()) -> Self.SubSequence { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-4k8od`

> Returns the value at given column, converted to the requested type.

```swift
subscript<Value>(columnName: String) -> Value where Value : DatabaseValueConvertible { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-5wj08`

> Inherited from   .

```swift
subscript(bounds: Range<Self.Index>) -> Slice<Self> { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-5ybfe`

> Inherited from   .

```swift
subscript<R>(r: R) -> Self.SubSequence where R : RangeExpression, Self.Index == R.Bound { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-68yae`

> Returns the (column, value) pair at given index.

```swift
subscript(position: Index) -> (String, DatabaseValue) { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-6ge6t`

> Returns the set of prefetched records associated to the given   association key.

```swift
subscript<Record>(key: String) -> Set<Record> where Record : FetchableRecord, Record : Hashable { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-7krrg`

> Returns the value at given index, converted to the requested type.

```swift
subscript<Value>(index: Int) -> Value where Value : DatabaseValueConvertible, Value : StatementColumnConvertible { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-8god3`

> Returns the record associated to the given key.

```swift
subscript<Record>(scope: String) -> Record where Record : FetchableRecord { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-8jml6`

> Inherited from   .

```swift
subscript(subranges: RangeSet<Self.Index>) -> DiscontiguousSlice<Self> { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-9c1fw`

> Returns   ,   ,   ,    or nil, depending on the   value stored at the given index.

```swift
subscript(index: Int) -> (any DatabaseValueConvertible)? { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-9rbo7`

> Returns the value at given column, converted to the requested type.

```swift
subscript<Value>(columnName: String) -> Value where Value : DatabaseValueConvertible, Value : StatementColumnConvertible { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-9txgm`

> Returns   ,   ,   ,    or nil, depending on the   value stored at the given column.

```swift
subscript(column: some ColumnExpression) -> (any DatabaseValueConvertible)? { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-jwnx`

> Returns a collection of prefetched records associated to the given   association key.

```swift
subscript<Records>(key: String) -> Records where Records : RangeReplaceableCollection, Records.Element : FetchableRecord { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-wl9a`

> Returns the value at given column, converted to the requested type.

```swift
subscript<Value>(column: some ColumnExpression) -> Value where Value : DatabaseValueConvertible, Value : StatementColumnConvertible { get }
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

## `unadapted`

> The raw row fetched from the database.

```swift
var unadapted: Row { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `underestimatedcount`

> Inherited from   .

```swift
var underestimatedCount: Int { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `unscoped`

> The row, without any scope of prefetched rows.

```swift
var unscoped: Row { get }
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

## `withunsafedata(at:_:)`

> Calls the given closure with the    at the given column.

```swift
func withUnsafeData<T>(at column: some ColumnExpression, _ body: (Data?) throws -> T) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `withunsafedata(atindex:_:)`

> Calls the given closure with the    at given index.

```swift
func withUnsafeData<T>(atIndex index: Int, _ body: (Data?) throws -> T) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `withunsafedata(named:_:)`

> Calls the given closure with the    at the given column.

```swift
func withUnsafeData<T>(named columnName: String, _ body: (Data?) throws -> T) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
