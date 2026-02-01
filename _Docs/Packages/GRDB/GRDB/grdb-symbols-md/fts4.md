# Index

- `database(_:didcreate:using:)`
- `init()`
- `maketabledefinition(configuration:)`
- `modulearguments(for:in:)`
- `modulename`
- `virtualtablemodule-implementations`

---


## `database(_:didcreate:using:)`

> Execute any relevant database statement after the virtual table has   been created.

```swift
func database(_ db: Database, didCreate tableName: String, using definition: FTS4TableDefinition) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `init()`

> Creates an FTS4 module.

```swift
init()
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `maketabledefinition(configuration:)`

> Returns a table definition that is passed as the argument in the     closure.

```swift
func makeTableDefinition(configuration: VirtualTableConfiguration) -> FTS4TableDefinition
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `modulearguments(for:in:)`

> Returns the module arguments for the    query.

```swift
func moduleArguments(for definition: FTS4TableDefinition, in db: Database) -> [String]
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

## `virtualtablemodule-implementations`

- **Role Heading:** API Collection


---
