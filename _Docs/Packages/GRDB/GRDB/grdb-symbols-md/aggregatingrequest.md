# Index

- `databasecomponents`
- `group(_:)-32exm`
- `group(_:)-4216o`
- `group(_:)-5soxm`
- `group(_:)-edak`
- `group(literal:)`
- `group(sql:arguments:)`
- `groupwhenconnected(_:)-6i510`
- `groupwhenconnected(_:)`
- `having(_:)-27hlo`
- `having(_:)-2ssg9`
- `having(literal:)`
- `having(sql:arguments:)`
- `havingwhenconnected(_:)-4j6is`
- `havingwhenconnected(_:)`

---


## `databasecomponents`

```swift
typealias DatabaseComponents = RowDecoder.DatabaseComponents
```

- **Symbol Kind:** typealias

- **Role Heading:** Type Alias


---

## `group(_:)-32exm`

> Returns an aggregate request grouped on the given SQL expressions.

```swift
func group(_ expressions: (DatabaseComponents) throws -> [any SQLExpressible]) rethrows -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `group(_:)-4216o`

> Returns an aggregate request grouped on the given SQL expressions.

```swift
func group(_ expressions: [any SQLExpressible]) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `group(_:)-5soxm`

> Returns an aggregate request grouped on the given SQL expression.

```swift
func group(_ expression: (DatabaseComponents) throws -> any SQLExpressible) rethrows -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `group(_:)-edak`

> Returns an aggregate request grouped on the given SQL expressions.

```swift
func group(_ expressions: any SQLExpressible...) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `group(literal:)`

> Returns an aggregate request grouped on an    literal.

```swift
func group(literal sqlLiteral: SQL) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `group(sql:arguments:)`

> Returns an aggregate request grouped on an SQL string.

```swift
func group(sql: String, arguments: StatementArguments = StatementArguments()) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `groupwhenconnected(_:)-6i510`

> Returns an aggregate request grouped on the given SQL expressions.

```swift
func groupWhenConnected(_ expressions: @escaping (Database) throws -> [any SQLExpressible]) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `groupwhenconnected(_:)`

> Returns an aggregate request grouped on the given SQL expressions.

```swift
func groupWhenConnected(_ expressions: @escaping (Database) throws -> [any SQLExpressible]) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `having(_:)-27hlo`

> Filters the aggregated groups with a boolean SQL expression.

```swift
func having(_ predicate: (DatabaseComponents) throws -> any SQLExpressible) rethrows -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `having(_:)-2ssg9`

> Filters the aggregated groups with a boolean SQL expression.

```swift
func having(_ predicate: some SQLExpressible) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `having(literal:)`

> Filters the aggregated groups with an    literal.

```swift
func having(literal sqlLiteral: SQL) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `having(sql:arguments:)`

> Filters the aggregated groups with an SQL string.

```swift
func having(sql: String, arguments: StatementArguments = StatementArguments()) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `havingwhenconnected(_:)-4j6is`

> Filters the aggregated groups with a boolean SQL expression.

```swift
func havingWhenConnected(_ predicate: @escaping (Database) throws -> any SQLExpressible) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `havingwhenconnected(_:)`

> Filters the aggregated groups with a boolean SQL expression.

```swift
func havingWhenConnected(_ predicate: @escaping (Database) throws -> any SQLExpressible) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
