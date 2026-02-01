# Index

- `async(onqueue:)`
- `immediate`
- `immediateinitialvalue()`
- `mainactor`
- `schedule(_:)-3dpzs`
- `schedule(_:)`
- `task(priority:)`
- `task`

---


## `async(onqueue:)`

> A scheduler that asynchronously notifies fresh value of the   given   .

```swift
static func async(onQueue queue: DispatchQueue) -> AsyncValueObservationScheduler
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `immediate`

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

## `mainactor`

> A scheduler that notifies all values on the main actor.

```swift
static var mainActor: DelayedMainActorValueObservationScheduler { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `schedule(_:)-3dpzs`

```swift
func schedule(_ action: @escaping () -> Void)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `schedule(_:)`

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

## `task`

> A scheduler that notifies all values from a new   .

```swift
static var task: TaskValueObservationScheduler { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---
