# Index

- `column(_:)`
- `columnsize`
- `content`
- `contentrowid`
- `detail`
- `prefixes`
- `synchronize(withtable:)`
- `tokenizer`

---


## `column(_:)`

> Appends a table column.

```swift
@discardableResult func column(_ name: String) -> FTS5ColumnDefinition
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `columnsize`

> The FTS5    option.

```swift
var columnSize: Int?
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `content`

> The FTS5    option.

```swift
var content: String? { get set }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `contentrowid`

> The FTS5    option

```swift
var contentRowID: String? { get set }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `detail`

> The FTS5    option.

```swift
var detail: String?
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `prefixes`

> The FTS5    option.

```swift
var prefixes: Set<Int>?
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `synchronize(withtable:)`

> Synchronizes the full-text table with the content of an external   table.

```swift
func synchronize(withTable tableName: String)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `tokenizer`

> The virtual table tokenizer.

```swift
var tokenizer: FTS5TokenizerDescriptor?
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---
