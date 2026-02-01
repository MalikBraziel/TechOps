# Index

- `addingscopes(_:)`
- `init(_:)`
- `init(base:scopes:)`
- `rowadapter-implementations`

---


## `addingscopes(_:)`

> Returns an adapter based on self, with added scopes.

```swift
func addingScopes(_ scopes: [String : any RowAdapter]) -> any RowAdapter
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `init(_:)`

> Creates an adapter that preserves row contents and add scoped rows.

```swift
init(_ scopes: [String : any RowAdapter])
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(base:scopes:)`

> Creates an adapter based on the base adapter, and add scoped rows.

```swift
init(base: some RowAdapter, scopes: [String : any RowAdapter])
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `rowadapter-implementations`

- **Role Heading:** API Collection


---
