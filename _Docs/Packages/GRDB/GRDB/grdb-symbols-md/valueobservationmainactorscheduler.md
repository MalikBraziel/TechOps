# Index

- `immediate`
- `scheduleonmainactor(_:)`

---


## `immediate`

> A scheduler that notifies all values on the main actor. The   first value is immediately notified when the     is started.

```swift
static var immediate: ImmediateValueObservationScheduler { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `scheduleonmainactor(_:)`

```swift
func scheduleOnMainActor(_ action: @escaping @MainActor () -> Void)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
