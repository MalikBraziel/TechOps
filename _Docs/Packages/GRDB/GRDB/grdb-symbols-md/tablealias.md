# Index

- `databasecomponents`
- `exists`
- `init(name:)`
- `init(name:for:)`
- `subscript(dynamicmember:)-4314x`
- `subscript(dynamicmember:)-7p5s8`
- `subscript(dynamicmember:)-8iskv`
- `subscript(dynamicmember:)-9tytk`

---


## `databasecomponents`

```swift
typealias DatabaseComponents = RowDecoder.DatabaseComponents
```

- **Symbol Kind:** typealias

- **Role Heading:** Type Alias


---

## `exists`

> A boolean SQL expression indicating whether this alias refers to some   rows, or not.

```swift
var exists: SQLExpression { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `init(name:)`

> Creates an anonymous TableAlias.

```swift
init(name: String? = nil) where RowDecoder == ()
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(name:for:)`

> Creates a TableAlias for the specified record type.

```swift
init(name: String? = nil, for record: RowDecoder.Type = RowDecoder.self)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `subscript(dynamicmember:)-4314x`

> Returns an SQL expression that refers to the aliased table.

```swift
subscript<T>(dynamicMember keyPath: KeyPath<DatabaseComponents, T>) -> SQLExpression where T : SQLSpecificExpressible { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(dynamicmember:)-7p5s8`

> Returns a result column that refers to the aliased table.

```swift
subscript<T>(dynamicMember keyPath: KeyPath<DatabaseComponents, T>) -> SQLSelection where T : SQLSelectable { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(dynamicmember:)-8iskv`

```swift
subscript<T>(dynamicMember keyPath: KeyPath<DatabaseComponents, T>) -> AnySQLJSONExpressible where T : SQLJSONExpressible { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(dynamicmember:)-9tytk`

```swift
subscript<T>(dynamicMember keyPath: KeyPath<DatabaseComponents, T>) -> SQLOrdering where T : SQLOrderingTerm { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---
