# Index

- `init(db:arguments:)`
- `name`
- `tokenizerdescriptor(arguments:)`

---


## `init(db:arguments:)`

> Creates a custom tokenizer.

```swift
init(db: Database, arguments: [String]) throws
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `name`

> The name of the tokenizer.

```swift
static var name: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `tokenizerdescriptor(arguments:)`

> Creates an FTS5 tokenizer descriptor.

```swift
static func tokenizerDescriptor(arguments: [String] = []) -> FTS5TokenizerDescriptor
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---
