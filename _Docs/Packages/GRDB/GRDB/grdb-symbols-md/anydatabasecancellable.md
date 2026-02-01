# Index

- `cancel()`
- `init(_:)`
- `init(cancel:)`

---


## `cancel()`

> Cancel the activity.

```swift
func cancel()
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `init(_:)`

> Creates a cancellable object that forwards cancellation to   .

```swift
convenience init(_ base: some DatabaseCancellable)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(cancel:)`

> Initializes the cancellable object with the given cancel-time closure.

```swift
init(cancel: @escaping () -> Void)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---
