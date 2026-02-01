# Index

- `init(tracking:)-2nqjd`
- `init(tracking:)-5ldbe`
- `publisher(in:)`
- `start(in:onerror:onchange:)`

---


## `init(tracking:)-2nqjd`

> Creates a    that notifies all transactions   that modify one of the provided regions.

```swift
init(tracking regions: [any DatabaseRegionConvertible])
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(tracking:)-5ldbe`

> Creates a    that notifies all transactions   that modify one of the provided regions.

```swift
init(tracking regions: any DatabaseRegionConvertible...)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `publisher(in:)`

> Returns a publisher that observes the database.

```swift
func publisher(in writer: any DatabaseWriter) -> DatabasePublishers.DatabaseRegion
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `start(in:onerror:onchange:)`

> Starts observing the database.

```swift
@preconcurrency func start(in writer: any DatabaseWriter, onError: @escaping (Error) -> Void, onChange: @escaping (Database) -> Void) -> AnyDatabaseCancellable
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
