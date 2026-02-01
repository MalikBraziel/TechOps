# Index

- `!=(_:_:)`
- `equatable-implementations`
- `observationlifetime`
- `whileobserved`

---


## `!=(_:_:)`

> Inherited from   .

```swift
static func != (lhs: Self, rhs: Self) -> Bool
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `equatable-implementations`

- **Role Heading:** API Collection


---

## `observationlifetime`

> The    starts a single database observation,   which stops when the    is deallocated and all   subscriptions terminated.

```swift
case observationLifetime
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `whileobserved`

> The    stops database observation when the   number of subscriptions drops down to zero. Database observation   restarts on the next subscription.

```swift
case whileObserved
```

- **Symbol Kind:** case

- **Role Heading:** Case


---
