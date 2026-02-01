# Index

- `decode(_:from:)`
- `init()`

---


## `decode(_:from:)`

> Returns a record of the type you specify, decoded from a   database row.

```swift
func decode<T>(_ type: T.Type, from row: Row) throws -> T where T : FetchableRecord, T : Decodable
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `init()`

> Creates a decoder for fetchable records.

```swift
init()
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---
