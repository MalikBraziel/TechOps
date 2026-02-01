# Index

- `annotated(with:)-74xfs`
- `annotated(with:)-8snn4`
- `distinct()-6g1dw`
- `distinct()`
- `having(_:)`
- `with(_:)-5pus9`
- `with(_:)`

---


## `annotated(with:)-74xfs`

> Appends association aggregates to the selected columns.

```swift
func annotated(with aggregates: AssociationAggregate<RowDecoder>...) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `annotated(with:)-8snn4`

> Appends association aggregates to the selected columns.

```swift
func annotated(with aggregates: [AssociationAggregate<RowDecoder>]) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `distinct()-6g1dw`

> Returns a request which returns distinct rows.

```swift
func distinct() -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `distinct()`

> Returns a request which returns distinct rows.

```swift
func distinct() -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `having(_:)`

> Filters the fetched records with an association aggregate.

```swift
func having(_ predicate: AssociationAggregate<RowDecoder>) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `with(_:)-5pus9`

> Embeds a common table expression.

```swift
func with<RowDecoder>(_ cte: CommonTableExpression<RowDecoder>) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `with(_:)`

> Embeds a common table expression.

```swift
func with<RowDecoder>(_ cte: CommonTableExpression<RowDecoder>) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
