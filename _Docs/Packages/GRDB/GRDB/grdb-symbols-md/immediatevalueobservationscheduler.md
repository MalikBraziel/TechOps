# Index

- `immediate-52g34`
- `immediate-7xqxj`
- `immediateinitialvalue()`
- `init()`
- `schedule(_:)`
- `scheduleonmainactor(_:)`
- `valueobservationmainactorscheduler-implementations`
- `valueobservationscheduler-implementations`

---


## `immediate-52g34`

> A scheduler that notifies all values on the main actor. The   first value is immediately notified when the     is started.

```swift
static var immediate: ImmediateValueObservationScheduler { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `immediate-7xqxj`

> A scheduler that notifies all values on the main actor. The   first value is immediately notified when the     is started.

```swift
static var immediate: ImmediateValueObservationScheduler { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `immediateinitialvalue()`

> Returns whether the initial value should be immediately notified.

```swift
func immediateInitialValue() -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `init()`

```swift
init()
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
