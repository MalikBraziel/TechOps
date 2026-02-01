# Index

- `annotated(with:)-4qcem`
- `annotated(with:)-69r3`
- `annotated(with:)-6ehs4`
- `annotated(with:)-9wodv`
- `annotatedwhenconnected(with:)-5l37q`
- `annotatedwhenconnected(with:)`
- `databasecomponents`
- `select(_:)-270ge`
- `select(_:)-30yzl`
- `select(_:)-4jw13`
- `select(_:)-7e2y5`
- `select(literal:)`
- `select(sql:arguments:)`
- `selectwhenconnected(_:)-45qpp`
- `selectwhenconnected(_:)`

---


## `annotated(with:)-4qcem`

> Appends result columns to the selected columns.

```swift
func annotated(with selection: [any SQLSelectable]) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `annotated(with:)-69r3`

> Appends result columns to the selected columns.

```swift
func annotated(with selection: (DatabaseComponents) throws -> [any SQLSelectable]) rethrows -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `annotated(with:)-6ehs4`

> Appends result columns to the selected columns.

```swift
func annotated(with selection: any SQLSelectable...) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `annotated(with:)-9wodv`

> Appends a result column to the selected columns.

```swift
func annotated(with selection: (DatabaseComponents) throws -> any SQLSelectable) rethrows -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `annotatedwhenconnected(with:)-5l37q`

> Appends result columns to the selected columns.

```swift
func annotatedWhenConnected(with selection: @escaping (Database) throws -> [any SQLSelectable]) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `annotatedwhenconnected(with:)`

> Appends result columns to the selected columns.

```swift
func annotatedWhenConnected(with selection: @escaping (Database) throws -> [any SQLSelectable]) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `databasecomponents`

```swift
typealias DatabaseComponents = RowDecoder.DatabaseComponents
```

- **Symbol Kind:** typealias

- **Role Heading:** Type Alias


---

## `select(_:)-270ge`

> Defines the result column.

```swift
func select(_ selection: (DatabaseComponents) throws -> any SQLSelectable) rethrows -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `select(_:)-30yzl`

> Defines the result columns.

```swift
func select(_ selection: any SQLSelectable...) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `select(_:)-4jw13`

> Defines the result columns.

```swift
func select(_ selection: (DatabaseComponents) throws -> [any SQLSelectable]) rethrows -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `select(_:)-7e2y5`

> Defines the result columns.

```swift
func select(_ selection: [any SQLSelectable]) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `select(literal:)`

> Defines the result columns with an    literal.

```swift
func select(literal sqlLiteral: SQL) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `select(sql:arguments:)`

> Defines the result columns with an SQL string.

```swift
func select(sql: String, arguments: StatementArguments = StatementArguments()) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `selectwhenconnected(_:)-45qpp`

> Defines the result columns.

```swift
func selectWhenConnected(_ selection: @escaping (Database) throws -> [any SQLSelectable]) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `selectwhenconnected(_:)`

> Defines the result columns.

```swift
func selectWhenConnected(_ selection: @escaping (Database) throws -> [any SQLSelectable]) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
