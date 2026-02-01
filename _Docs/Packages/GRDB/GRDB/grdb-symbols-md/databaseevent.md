# Index

- `copy()`
- `databasename`
- `kind-swift.enum`
- `kind-swift.property`
- `rowid`
- `tablename`

---


## `copy()`

> Returns a copy of the event.

```swift
func copy() -> DatabaseEvent
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `databasename`

> The name of the changed database.

```swift
var databaseName: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `kind-swift.enum`

> An event kind.

```swift
enum Kind
```

- **Symbol Kind:** enum

- **Role Heading:** Enumeration


---

## `kind-swift.property`

> The event kind (insert, delete, or update).

```swift
let kind: Kind
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `rowid`

> The rowID of the changed row.

```swift
let rowID: Int64
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `tablename`

> The name of the changed database table.

```swift
var tableName: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---
