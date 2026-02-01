# Index

- `api(_:)`
- `database(_:didcreate:using:)`
- `diacritics`
- `init()`
- `maketabledefinition(configuration:)`
- `modulearguments(for:in:)`
- `modulename`
- `virtualtablemodule-implementations`

---


## `api(_:)`

> Returns a pointer to the    structure.

```swift
static func api(_ db: Database) -> UnsafePointer<fts5_api>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `database(_:didcreate:using:)`

> Reserved; part of the VirtualTableModule protocol.

```swift
func database(_ db: Database, didCreate tableName: String, using definition: FTS5TableDefinition) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `diacritics`

> Options for Latin script characters. Matches the raw “remove_diacritics”   tokenizer argument.

```swift
enum Diacritics
```

- **Symbol Kind:** enum

- **Role Heading:** Enumeration


---

## `init()`

> Creates an FTS5 module.

```swift
init()
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `maketabledefinition(configuration:)`

> Reserved; part of the VirtualTableModule protocol.

```swift
func makeTableDefinition(configuration: VirtualTableConfiguration) -> FTS5TableDefinition
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `modulearguments(for:in:)`

> Don’t use this method.

```swift
func moduleArguments(for definition: FTS5TableDefinition, in db: Database) throws -> [String]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `modulename`

> The virtual table module name

```swift
var moduleName: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `virtualtablemodule-implementations`

- **Role Heading:** API Collection


---
