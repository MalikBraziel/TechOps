# Index

- `database(_:didcreate:using:)`
- `diacritics`
- `init()`
- `maketabledefinition(configuration:)`
- `modulearguments(for:in:)`
- `modulename`
- `tokenize(_:withtokenizer:)`
- `virtualtablemodule-implementations`

---


## `database(_:didcreate:using:)`

> Execute any relevant database statement after the virtual table has   been created.

```swift
func database(_ db: Database, didCreate tableName: String, using definition: FTS3TableDefinition)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `diacritics`

> Options for Latin script characters.

```swift
enum Diacritics
```

- **Symbol Kind:** enum

- **Role Heading:** Enumeration


---

## `init()`

> Creates an FTS3 module.

```swift
init()
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `maketabledefinition(configuration:)`

> Returns a table definition that is passed as the argument in the     closure.

```swift
func makeTableDefinition(configuration: VirtualTableConfiguration) -> FTS3TableDefinition
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `modulearguments(for:in:)`

> Returns the module arguments for the    query.

```swift
func moduleArguments(for definition: FTS3TableDefinition, in db: Database) -> [String]
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

## `tokenize(_:withtokenizer:)`

> Returns an array of tokens found in the string argument.

```swift
static func tokenize(_ string: String, withTokenizer tokenizer: FTS3TokenizerDescriptor = .simple) throws -> [String]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `virtualtablemodule-implementations`

- **Role Heading:** API Collection


---
