# Index

- `immediateinitialvalue()`
- `mainactor`
- `schedule(_:)`
- `scheduleonmainactor(_:)`
- `valueobservationmainactorscheduler-implementations`
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

## `mainactor`

> A scheduler that notifies all values on the main actor.

```swift
static var mainActor: DelayedMainActorValueObservationScheduler { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `schedule(_:)`

> Inherited from   .

```swift
func schedule(_ action: @escaping () -> Void)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `scheduleonmainactor(_:)`

> Inherited from   .

```swift
func scheduleOnMainActor(_ action: @escaping @MainActor () -> Void)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `valueobservationmainactorscheduler-implementations`

- **Role Heading:** API Collection


---

## `valueobservationscheduler-implementations`

- **Role Heading:** API Collection


---
