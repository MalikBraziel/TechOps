# Index

- `finalize()`
- `init()`
- `step(_:)`

---


## `finalize()`

> Returns the aggregated value.

```swift
func finalize() throws -> (any DatabaseValueConvertible)?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `init()`

> Creates an aggregate.

```swift
init()
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `step(_:)`

> Updates the aggregated value for one step of the aggregation.

```swift
mutating func step(_ dbValues: [DatabaseValue]) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
