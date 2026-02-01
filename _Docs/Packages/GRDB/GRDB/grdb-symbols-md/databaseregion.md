# Index

- `!=(_:_:)`
- `==(_:_:)`
- `customstringconvertible-implementations`
- `databaseregion(_:)`
- `databaseregionconvertible-implementations`
- `description`
- `equatable-implementations`
- `formunion(_:)`
- `fulldatabase-4ei0v`
- `fulldatabase`
- `init()`
- `isempty`
- `isfulldatabase`
- `ismodified(by:)`
- `ismodified(byeventsofkind:)`
- `union(_:)`

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

> Inherited from   .

```swift
static func == (lhs: DatabaseRegion, rhs: DatabaseRegion) -> Bool
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `customstringconvertible-implementations`

- **Role Heading:** API Collection


---

## `databaseregion(_:)`

> Returns a database region.

```swift
func databaseRegion(_ db: Database) throws -> DatabaseRegion
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `databaseregionconvertible-implementations`

- **Role Heading:** API Collection


---

## `description`

> Inherited from   .

```swift
var description: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `equatable-implementations`

- **Role Heading:** API Collection


---

## `formunion(_:)`

> Inserts the given region into this region

```swift
mutating func formUnion(_ other: DatabaseRegion)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fulldatabase-4ei0v`

> The region that covers the full database: all columns and all rows   from all tables.

```swift
static var fullDatabase: Self { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `fulldatabase`

> The region that covers the full database.

```swift
static let fullDatabase: DatabaseRegion
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `init()`

> The empty database region.

```swift
init()
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `isempty`

> Returns whether the region is empty.

```swift
var isEmpty: Bool { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `isfulldatabase`

> Returns whether the region covers the full database.

```swift
var isFullDatabase: Bool { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `ismodified(by:)`

> Returns whether the content in the region is impacted by this event.

```swift
func isModified(by event: DatabaseEvent) -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `ismodified(byeventsofkind:)`

> Returns whether the content in the region would be impacted if the   database were modified by an event of this kind.

```swift
func isModified(byEventsOfKind eventKind: DatabaseEventKind) -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `union(_:)`

> Returns the union of this region and the given one.

```swift
func union(_ other: DatabaseRegion) -> DatabaseRegion
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
