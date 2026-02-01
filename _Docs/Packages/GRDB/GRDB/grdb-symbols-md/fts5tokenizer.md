# Index

- `tokenize(context:tokenization:ptext:ntext:tokencallback:)-9iye8`
- `tokenize(context:tokenization:ptext:ntext:tokencallback:)`
- `tokenize(document:)`
- `tokenize(query:)`

---


## `tokenize(context:tokenization:ptext:ntext:tokencallback:)-9iye8`

> Tokenizes the text described by    and   , and   notifies found tokens to the    function.

```swift
func tokenize(context: UnsafeMutableRawPointer?, tokenization: FTS5Tokenization, pText: UnsafePointer<CChar>?, nText: CInt, tokenCallback: @escaping FTS5TokenCallback) -> CInt
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `tokenize(context:tokenization:ptext:ntext:tokencallback:)`

> Tokenizes the text described by    and   , and   notifies found tokens to the    function.

```swift
func tokenize(context: UnsafeMutableRawPointer?, tokenization: FTS5Tokenization, pText: UnsafePointer<CChar>?, nText: CInt, tokenCallback: @escaping FTS5TokenCallback) -> CInt
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `tokenize(document:)`

> Tokenizes the string argument as a document that would be inserted into   an FTS5 table.

```swift
func tokenize(document string: String) throws -> [(token: String, flags: FTS5TokenFlags)]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `tokenize(query:)`

> Tokenizes the string argument as an FTS5 query.

```swift
func tokenize(query string: String) throws -> [(token: String, flags: FTS5TokenFlags)]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
