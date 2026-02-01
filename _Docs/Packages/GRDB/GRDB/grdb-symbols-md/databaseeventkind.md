# Index

- `delete(tablename:)`
- `insert(tablename:)`
- `tablename`
- `update(tablename:columnnames:)`

---


## `delete(tablename:)`

> The deletion of a row in a database table.

```swift
case delete(tableName: String)
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `insert(tablename:)`

> The insertion of a row in a database table.

```swift
case insert(tableName: String)
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `tablename`

> The name of the impacted database table.

```swift
var tableName: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `update(tablename:columnnames:)`

> The update of a set of columns in a database table.

```swift
case update(tableName: String, columnNames: Set<String>)
```

- **Symbol Kind:** case

- **Role Heading:** Case


---
