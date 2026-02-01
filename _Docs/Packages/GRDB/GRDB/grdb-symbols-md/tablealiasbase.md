# Index

- `!=(_:_:)`
- `==(_:_:)`
- `equatable-implementations`
- `hash(into:)`
- `hashable-implementations`
- `subscript(_:)-11u0d`
- `subscript(_:)-1629z`
- `subscript(_:)-7n7o2`
- `subscript(_:)-fmgk`
- `subscript(_:)-sf7b`

---


## `!=(_:_:)`

> Inherited from   .

```swift
static func != (lhs: Self, rhs: Self) -> Bool
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)`

> Inherited from   .

```swift
static func == (lhs: TableAliasBase, rhs: TableAliasBase) -> Bool
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `equatable-implementations`

- **Role Heading:** API Collection


---

## `hash(into:)`

> Inherited from   .

```swift
func hash(into hasher: inout Hasher)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `hashable-implementations`

- **Role Heading:** API Collection


---

## `subscript(_:)-11u0d`

> Returns an SQL column that refers to the aliased table.

```swift
subscript(column: String) -> SQLExpression { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-1629z`

```swift
subscript(expression: some SQLJSONExpressible & SQLSpecificExpressible & SQLSelectable & SQLOrderingTerm) -> AnySQLJSONExpressible { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-7n7o2`

> Returns a result column that refers to the aliased table.

```swift
subscript(selectable: some SQLSelectable) -> SQLSelection { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-fmgk`

```swift
subscript(ordering: some SQLOrderingTerm) -> SQLOrdering { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---

## `subscript(_:)-sf7b`

> Returns an SQL expression that refers to the aliased table.

```swift
subscript(expression: some SQLSpecificExpressible & SQLSelectable & SQLOrderingTerm) -> SQLExpression { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---
