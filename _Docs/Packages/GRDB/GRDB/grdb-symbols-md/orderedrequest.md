# Index

- `databasecomponents`
- `order(_:)-5q7wj`
- `order(_:)-63rzl`
- `order(_:)-6co0m`
- `order(_:)-711zj`
- `order(literal:)`
- `order(sql:arguments:)`
- `orderwhenconnected(_:)-6vl7u`
- `orderwhenconnected(_:)`
- `reversed()-4152f`
- `reversed()`
- `unordered()-7gvna`
- `unordered()`
- `withstableorder()-8v0yd`
- `withstableorder()`

---


## `databasecomponents`

```swift
typealias DatabaseComponents = RowDecoder.DatabaseComponents
```

- **Symbol Kind:** typealias

- **Role Heading:** Type Alias


---

## `order(_:)-5q7wj`

> Sorts the fetched rows according to the given SQL ordering term.

```swift
func order(_ ordering: (DatabaseComponents) throws -> any SQLOrderingTerm) rethrows -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `order(_:)-63rzl`

> Sorts the fetched rows according to the given SQL ordering terms.

```swift
func order(_ orderings: any SQLOrderingTerm...) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `order(_:)-6co0m`

> Sorts the fetched rows according to the given SQL ordering terms.

```swift
func order(_ orderings: [any SQLOrderingTerm]) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `order(_:)-711zj`

> Sorts the fetched rows according to the given SQL ordering terms.

```swift
func order(_ orderings: (DatabaseComponents) throws -> [any SQLOrderingTerm]) rethrows -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `order(literal:)`

> Sorts the fetched rows according to the given    literal.

```swift
func order(literal sqlLiteral: SQL) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `order(sql:arguments:)`

> Sorts the fetched rows according to the given SQL string.

```swift
func order(sql: String, arguments: StatementArguments = StatementArguments()) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `orderwhenconnected(_:)-6vl7u`

> Sorts the fetched rows according to the given SQL ordering terms.

```swift
func orderWhenConnected(_ orderings: @escaping (Database) throws -> [any SQLOrderingTerm]) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `orderwhenconnected(_:)`

> Sorts the fetched rows according to the given SQL ordering terms.

```swift
func orderWhenConnected(_ orderings: @escaping (Database) throws -> [any SQLOrderingTerm]) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `reversed()-4152f`

> Returns a request with reversed ordering.

```swift
func reversed() -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `reversed()`

> Returns a request with reversed ordering.

```swift
func reversed() -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `unordered()-7gvna`

> Returns a request without any ordering.

```swift
func unordered() -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `unordered()`

> Returns a request without any ordering.

```swift
func unordered() -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `withstableorder()-8v0yd`

> Returns a request with a stable order.

```swift
func withStableOrder() -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `withstableorder()`

> Returns a request with a stable order.

```swift
func withStableOrder() -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
