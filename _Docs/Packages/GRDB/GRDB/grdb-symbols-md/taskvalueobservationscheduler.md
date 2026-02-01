# Index

- `immediateinitialvalue()`
- `schedule(_:)`
- `task(priority:)`
- `valueobservationscheduler-implementations`

---


## `immediateinitialvalue()`

> Returns whether the initial value should be immediately notified.

```swift
func immediateInitialValue() -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `schedule(_:)`

> Inherited from   .

```swift
func schedule(_ action: @escaping () -> Void)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `task(priority:)`

> A scheduler that notifies all values from a new    with the   given priority.

```swift
static func task(priority: TaskPriority) -> TaskValueObservationScheduler
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `valueobservationscheduler-implementations`

- **Role Heading:** API Collection


---
