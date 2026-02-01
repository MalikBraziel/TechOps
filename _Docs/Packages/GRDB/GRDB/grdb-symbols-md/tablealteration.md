# Index

- `add(column:_:)`
- `addcolumn(literal:)`
- `addcolumn(sql:)`
- `drop(column:)`
- `rename(column:to:)`

---


## `add(column:_:)`

> Appends a column.

```swift
@discardableResult func add(column name: String, _ type: Database.ColumnType? = nil) -> ColumnDefinition
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `addcolumn(literal:)`

> Appends a column.

```swift
func addColumn(literal: SQL)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `addcolumn(sql:)`

> Appends a column.

```swift
func addColumn(sql: String)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `drop(column:)`

> Drops a column.

```swift
func drop(column name: String)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `rename(column:to:)`

> Renames a column.

```swift
func rename(column name: String, to newName: String)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
