# Index

- `arguments`
- `columncount`
- `columnnames`
- `compactmap(_:)`
- `contains(_:)`
- `contains(where:)`
- `cursor-implementations`
- `databasecursor-implementations`
- `databaseregion`
- `drop(while:)`
- `dropfirst()`
- `dropfirst(_:)`
- `droplast()`
- `droplast(_:)`
- `element`
- `enumerated()`
- `filter(_:)`
- `first(where:)`
- `flatmap(_:)-31x2l`
- `flatmap(_:)-4gybv`
- `foreach(_:)`
- `isempty`
- `joined()`
- `map(_:)`
- `max(by:)`
- `min(by:)`
- `next()`
- `prefix(_:)`
- `prefix(while:)`
- `reduce(_:_:)`
- `reduce(into:_:)`
- `sql`
- `suffix(_:)`

---


## `arguments`

> The statement arguments.

```swift
var arguments: StatementArguments { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `columncount`

> The number of columns in the resulting rows.

```swift
var columnCount: Int { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `columnnames`

> The column names, ordered from left to right.

```swift
var columnNames: [String] { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `compactmap(_:)`

> Returns a cursor over the concatenated non-nil results of mapping   transform over this cursor.

```swift
func compactMap<ElementOfResult>(_ transform: @escaping (Element) throws -> ElementOfResult?) -> MapCursor<FilterCursor<MapCursor<Self, ElementOfResult?>>, ElementOfResult>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `contains(_:)`

> Returns a Boolean value indicating whether the cursor contains the   given element.

```swift
func contains(_ element: Element) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `contains(where:)`

> Returns a Boolean value indicating whether the cursor contains an   element that satisfies the given predicate.

```swift
func contains(where predicate: (Element) throws -> Bool) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `cursor-implementations`

- **Role Heading:** API Collection


---

## `databasecursor-implementations`

- **Role Heading:** API Collection


---

## `databaseregion`

> The database region that the cursor looks into.

```swift
var databaseRegion: DatabaseRegion { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `drop(while:)`

> Returns a cursor that skips any initial elements that satisfy    .

```swift
func drop(while predicate: @escaping (Element) throws -> Bool) -> DropWhileCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `dropfirst()`

> Returns a cursor containing all but the first element of the cursor.

```swift
func dropFirst() -> DropFirstCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `dropfirst(_:)`

> Returns a cursor containing all but the given number of initial   elements.

```swift
func dropFirst(_ n: Int) -> DropFirstCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `droplast()`

> Returns an array containing all but the last element of the cursor.

```swift
func dropLast() throws -> [Element]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `droplast(_:)`

> Returns an array containing all but the given number of final   elements.

```swift
func dropLast(_ n: Int) throws -> [Element]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `element`

> The type of element traversed by the cursor.

```swift
typealias Element = Row
```

- **Symbol Kind:** typealias

- **Role Heading:** Type Alias


---

## `enumerated()`

> Returns a cursor of pairs (n, x), where n represents a consecutive   integer starting at zero, and x represents an element of the cursor.

```swift
func enumerated() -> EnumeratedCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(_:)`

> Returns the elements of the cursor that satisfy the given predicate.

```swift
func filter(_ isIncluded: @escaping (Element) throws -> Bool) -> FilterCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `first(where:)`

> Returns the first element of the cursor that satisfies the given   predicate or nil if no such element is found.

```swift
func first(where predicate: (Element) throws -> Bool) throws -> Element?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `flatmap(_:)-31x2l`

> Returns a cursor over the concatenated results of mapping transform   over self.

```swift
func flatMap<SegmentOfResult>(_ transform: @escaping (Element) throws -> SegmentOfResult) -> FlattenCursor<MapCursor<Self, SegmentOfResult>> where SegmentOfResult : Cursor
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `flatmap(_:)-4gybv`

> Returns a cursor over the concatenated results of mapping transform   over self.

```swift
func flatMap<SegmentOfResult>(_ transform: @escaping (Element) throws -> SegmentOfResult) -> FlattenCursor<MapCursor<Self, AnyCursor<SegmentOfResult.Element>>> where SegmentOfResult : Sequence
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `foreach(_:)`

> Inherited from   .

```swift
func forEach(_ body: (Element) throws -> Void) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `isempty`

> Returns a Boolean value indicating whether the cursor does not contain   any element.

```swift
var isEmpty: Bool { get throws }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `joined()`

> Returns the elements of this cursor of sequences, concatenated.

```swift
func joined() -> FlattenCursor<MapCursor<Self, AnyCursor<Element.Element>>>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `map(_:)`

> Returns a cursor over the results of the transform function applied to   this cursor’s elements.

```swift
func map<T>(_ transform: @escaping (Element) throws -> T) -> MapCursor<Self, T>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `max(by:)`

> Returns the maximum element in the cursor, using the given predicate as   the comparison between elements.

```swift
func max(by areInIncreasingOrder: (Element, Element) throws -> Bool) throws -> Element?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `min(by:)`

> Returns the minimum element in the cursor, using the given predicate as   the comparison between elements.

```swift
func min(by areInIncreasingOrder: (Element, Element) throws -> Bool) throws -> Element?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `next()`

> Advances to the next element and returns it, or nil if no next element   exists.

```swift
func next() throws -> Element?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `prefix(_:)`

> Returns a cursor, up to the specified maximum length, containing the   initial elements of the cursor.

```swift
func prefix(_ maxLength: Int) -> PrefixCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `prefix(while:)`

> Returns a cursor of the initial consecutive elements that satisfy    .

```swift
func prefix(while predicate: @escaping (Element) throws -> Bool) -> PrefixWhileCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `reduce(_:_:)`

> Returns the result of calling the given combining closure with each   element of this cursor and an accumulating value.

```swift
func reduce<Result>(_ initialResult: Result, _ nextPartialResult: (Result, Element) throws -> Result) throws -> Result
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `reduce(into:_:)`

> Returns the result of calling the given combining closure with each   element of this cursor and an accumulating value.

```swift
func reduce<Result>(into initialResult: Result, _ updateAccumulatingResult: (inout Result, Element) throws -> Void) throws -> Result
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `sql`

> The SQL query.

```swift
var sql: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `suffix(_:)`

> Returns an array, up to the given maximum length, containing the   final elements of the cursor.

```swift
func suffix(_ maxLength: Int) throws -> [Element]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
