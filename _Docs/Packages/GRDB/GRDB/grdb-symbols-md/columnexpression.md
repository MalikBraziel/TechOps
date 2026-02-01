# Index

- `&=(_:_:)`
- `*=(_:_:)`
- `+=(_:_:)`
- `-=(_:_:)`
- `_=(_:_:)-7p11b`
- `_=(_:_:)-c3wg`
- `__=(_:_:)-1omf9`
- `__=(_:_:)-64146`
- `detached`
- `match(_:)-1vvo8`
- `match(_:)-727nk`
- `name-159px`
- `name`
- `nooverwrite`
- `rowid`
- `set(to:)`

---


## `&=(_:_:)`

> Creates an assignment that applies a bitwise and.

```swift
static func &= (column: Self, value: some SQLExpressible) -> ColumnAssignment
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `*=(_:_:)`

> Creates an assignment that multiplies by an SQL expression.

```swift
static func *= (column: Self, value: some SQLExpressible) -> ColumnAssignment
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+=(_:_:)`

> Creates an assignment that adds an SQL expression.

```swift
static func += (column: Self, value: some SQLExpressible) -> ColumnAssignment
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `-=(_:_:)`

> Creates an assignment that subtracts an SQL expression.

```swift
static func -= (column: Self, value: some SQLExpressible) -> ColumnAssignment
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-7p11b`

> Creates an assignment that applies a bitwise or.

```swift
static func |= (column: Self, value: some SQLExpressible) -> ColumnAssignment
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-c3wg`

> Creates an assignment that divides by an SQL expression.

```swift
static func /= (column: Self, value: some SQLExpressible) -> ColumnAssignment
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__=(_:_:)-1omf9`

> Creates an assignment that applies a bitwise left shift.

```swift
static func <<= (column: Self, value: some SQLExpressible) -> ColumnAssignment
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__=(_:_:)-64146`

> Creates an assignment that applies a bitwise right shift.

```swift
static func >>= (column: Self, value: some SQLExpressible) -> ColumnAssignment
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `detached`

> An SQL expression that refers to an aliased column   (  ).

```swift
var detached: SQLExpression { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `match(_:)-1vvo8`

> A matching SQL expression with the    SQL operator.

```swift
func match(_ pattern: FTS5Pattern) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `match(_:)-727nk`

> A matching SQL expression with the    SQL operator.

```swift
func match(_ pattern: FTS3Pattern?) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `name-159px`

> The column name.

```swift
var name: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `name`

> The column name.

```swift
var name: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `nooverwrite`

> An assignment that does not modify this column.

```swift
var noOverwrite: ColumnAssignment { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `rowid`

> The hidden rowID column.

```swift
static var rowID: Self { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `set(to:)`

> Returns an assignment of this column to an SQL expression.

```swift
func set(to value: (any SQLExpressible)?) -> ColumnAssignment
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
