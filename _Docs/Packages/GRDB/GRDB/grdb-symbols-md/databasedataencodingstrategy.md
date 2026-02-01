# Index

- `custom(_:)`
- `deferredtodata`
- `text`

---


## `custom(_:)`

> Encodes    column as the result of the user-provided function.

```swift
case custom((Data) -> (any DatabaseValueConvertible)?)
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `deferredtodata`

> Encodes    columns as SQL blob.

```swift
case deferredToData
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `text`

> Encodes    columns as SQL text. Data must contain valid UTF8 bytes.

```swift
case text
```

- **Symbol Kind:** case

- **Role Heading:** Case


---
