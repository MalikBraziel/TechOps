# Index

- `!=(_:_:)`
- `attached(_:)`
- `equatable-implementations`
- `main`
- `name`
- `schematablename`
- `temp`

---


## `!=(_:_:)`

> Inherited from   .

```swift
static func != (lhs: Self, rhs: Self) -> Bool
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `attached(_:)`

> The identifier of an attached database schema.

```swift
static func attached(_ name: String) -> DatabaseSchemaID
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `equatable-implementations`

- **Role Heading:** API Collection


---

## `main`

> The identifier of the “main” database schema.

```swift
static let main: DatabaseSchemaID
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `name`

> The name of the schema, suitable for inclusion in SQL queries.

```swift
var name: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `schematablename`

> The name of the schema sqlite table.

```swift
var schemaTableName: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `temp`

> The identifier of the “temp” database schema.

```swift
static let temp: DatabaseSchemaID
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---
