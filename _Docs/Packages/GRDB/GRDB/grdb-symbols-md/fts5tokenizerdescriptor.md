# Index

- `ascii(separators:tokencharacters:)`
- `components`
- `init(components:)`
- `porter(wrapping:)`
- `unicode61(diacritics:categories:separators:tokencharacters:)`

---


## `ascii(separators:tokencharacters:)`

> The “ascii” tokenizer.

```swift
static func ascii(separators: Set<Character> = [], tokenCharacters: Set<Character> = []) -> FTS5TokenizerDescriptor
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `components`

> The tokenizer components.

```swift
let components: [String]
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `init(components:)`

> Creates an FTS5 tokenizer descriptor.

```swift
init(components: [String])
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `porter(wrapping:)`

> The “porter” tokenizer.

```swift
static func porter(wrapping base: FTS5TokenizerDescriptor? = nil) -> FTS5TokenizerDescriptor
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `unicode61(diacritics:categories:separators:tokencharacters:)`

> The “unicode61” tokenizer.

```swift
static func unicode61(diacritics: FTS5.Diacritics = .removeLegacy, categories: String = "", separators: Set<Character> = [], tokenCharacters: Set<Character> = []) -> FTS5TokenizerDescriptor
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---
