# Index

- `database(_:didcreate:using:)`
- `maketabledefinition(configuration:)`
- `modulearguments(for:in:)`
- `modulename`
- `tabledefinition`

---


## `database(_:didcreate:using:)`

> Execute any relevant database statement after the virtual table has   been created.

```swift
func database(_ db: Database, didCreate tableName: String, using definition: TableDefinition) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `maketabledefinition(configuration:)`

> Returns a table definition that is passed as the argument in the     closure.

```swift
func makeTableDefinition(configuration: VirtualTableConfiguration) -> TableDefinition
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `modulearguments(for:in:)`

> Returns the module arguments for the    query.

```swift
func moduleArguments(for definition: TableDefinition, in db: Database) throws -> [String]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `modulename`

> The name of the module.

```swift
var moduleName: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `tabledefinition`

> The type of the argument in the     closure.

```swift
associatedtype TableDefinition
```

- **Symbol Kind:** associatedtype

- **Role Heading:** Associated Type


---
