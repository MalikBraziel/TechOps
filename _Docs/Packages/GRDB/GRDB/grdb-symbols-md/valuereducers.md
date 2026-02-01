# Index

- `fetch`
- `map`
- `removeduplicates`
- `trace`

---


## `fetch`

> A    that perform database fetches.

```swift
struct Fetch<Value> where Value : Sendable
```

- **Symbol Kind:** struct

- **Role Heading:** Structure


---

## `map`

> A    whose values consist of those in a    reducer   passed through a transform function.

```swift
struct Map<Base, Value> where Base : _ValueReducer, Value : Sendable
```

- **Symbol Kind:** struct

- **Role Heading:** Structure


---

## `removeduplicates`

> A    that notifies only values that don’t match the   previously observed value.

```swift
struct RemoveDuplicates<Base> where Base : ValueReducer
```

- **Symbol Kind:** struct

- **Role Heading:** Structure


---

## `trace`

> A    that handles    events.

```swift
struct Trace<Base> where Base : ValueReducer
```

- **Symbol Kind:** struct

- **Role Heading:** Structure


---
