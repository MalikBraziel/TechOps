# Index

- `publisher()`
- `start(onerror:onchange:)`
- `values(bufferingpolicy:)`

---


## `publisher()`

> Returns a publisher of observed values.

```swift
func publisher() -> DatabasePublishers.Value<Element>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `start(onerror:onchange:)`

> Starts observing the database.

```swift
@preconcurrency func start(onError: @escaping (Error) -> Void, onChange: @escaping (Element) -> Void) -> AnyDatabaseCancellable
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `values(bufferingpolicy:)`

> Returns an asynchronous sequence of observed values.

```swift
func values(bufferingPolicy: AsyncValueObservation<Element>.BufferingPolicy = .unbounded) -> AsyncValueObservation<Element>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
