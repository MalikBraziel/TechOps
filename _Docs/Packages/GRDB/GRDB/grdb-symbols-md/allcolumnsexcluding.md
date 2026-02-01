# Index

- `allcolumns(excluding:)-522iq`
- `allcolumns(excluding:)-sfce`
- `init(_:)`
- `sqlselectable-implementations`
- `sqlselection`

---


## `allcolumns(excluding:)-522iq`

> All columns of the requested table, excluding the provided columns.

```swift
static func allColumns(excluding excludedColumns: some Collection<any ColumnExpression>) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `allcolumns(excluding:)-sfce`

> All columns of the requested table, excluding the provided columns.

```swift
static func allColumns(excluding excludedColumns: some Collection<String>) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `init(_:)`

```swift
init(_ excludedColumns: some Collection<String>)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `sqlselectable-implementations`

- **Role Heading:** API Collection


---

## `sqlselection`

> Returns an SQL selection.

```swift
var sqlSelection: SQLSelection { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---
