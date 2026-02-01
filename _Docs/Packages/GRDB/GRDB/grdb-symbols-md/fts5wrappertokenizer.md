# Index

- `accept(token:flags:for:tokencallback:)`
- `wrappedtokenizer`

---


## `accept(token:flags:for:tokencallback:)`

> Given a token produced by the wrapped tokenizer, notifies customized   tokens to the    function.

```swift
func accept(token: String, flags: FTS5TokenFlags, for tokenization: FTS5Tokenization, tokenCallback: FTS5WrapperTokenCallback) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `wrappedtokenizer`

> The wrapped tokenizer

```swift
var wrappedTokenizer: any FTS5Tokenizer { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---
