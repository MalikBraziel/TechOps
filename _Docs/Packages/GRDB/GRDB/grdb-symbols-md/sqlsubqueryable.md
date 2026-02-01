# Index

- `contains(_:)`
- `exists()`
- `sqlsubquery`

---


## `contains(_:)`

> Returns an expression that checks the inclusion of the expression in   the subquery.

```swift
func contains(_ element: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `exists()`

> Returns an expression that is true if and only if the subquery would   return one or more rows.

```swift
func exists() -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `sqlsubquery`

```swift
var sqlSubquery: SQLSubquery { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---
