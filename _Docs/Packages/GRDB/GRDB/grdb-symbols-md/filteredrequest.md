# Index

- `all()`
- `databasecomponents`
- `filter(_:)-48a4t`
- `filter(_:)-7j0nw`
- `filter(literal:)`
- `filter(sql:arguments:)`
- `filterwhenconnected(_:)-4t411`
- `filterwhenconnected(_:)`
- `none()`

---


## `all()`

> Returns   : a request that fetches all rows from this request.

```swift
func all() -> Self
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

## `filter(_:)-48a4t`

> Filters the fetched rows with a boolean SQL expression.

```swift
func filter(_ predicate: some SQLSpecificExpressible) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(_:)-7j0nw`

> Filters the fetched rows with a boolean SQL expression.

```swift
func filter(_ predicate: (DatabaseComponents) throws -> any SQLSpecificExpressible) rethrows -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(literal:)`

> Filters the fetched rows with an    literal.

```swift
func filter(literal sqlLiteral: SQL) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(sql:arguments:)`

> Filters the fetched rows with an SQL string.

```swift
func filter(sql: String, arguments: StatementArguments = StatementArguments()) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filterwhenconnected(_:)-4t411`

> Filters the fetched rows with a boolean SQL expression.

```swift
func filterWhenConnected(_ predicate: @escaping (Database) throws -> any SQLExpressible) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filterwhenconnected(_:)`

> Filters the fetched rows with a boolean SQL expression.

```swift
func filterWhenConnected(_ predicate: @escaping (Database) throws -> any SQLExpressible) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `none()`

> Returns an empty request that fetches no row.

```swift
func none() -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
