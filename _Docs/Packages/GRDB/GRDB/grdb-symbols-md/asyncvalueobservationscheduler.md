# Index

- `async(onqueue:)`
- `immediateinitialvalue()`
- `init(queue:)`
- `schedule(_:)`
- `valueobservationscheduler-implementations`

---


## `async(onqueue:)`

> A scheduler that asynchronously notifies fresh value of the   given   .

```swift
static func async(onQueue queue: DispatchQueue) -> AsyncValueObservationScheduler
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `immediateinitialvalue()`

> Returns whether the initial value should be immediately notified.

```swift
func immediateInitialValue() -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `init(queue:)`

```swift
init(queue: DispatchQueue)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `schedule(_:)`

> Inherited from   .

```swift
func schedule(_ action: @escaping () -> Void)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `valueobservationscheduler-implementations`

- **Role Heading:** API Collection


---
