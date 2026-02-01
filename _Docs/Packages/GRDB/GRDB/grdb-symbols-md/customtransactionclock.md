# Index

- `custom(_:)`
- `init(_:)`
- `now(_:)`
- `transactionclock-implementations`

---


## `custom(_:)`

> Returns a custom clock.

```swift
static func custom(_ now: @escaping (Database) throws -> Date) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `init(_:)`

```swift
init(_ now: @escaping (Database) throws -> Date)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `now(_:)`

> Returns the date of the current transaction.

```swift
func now(_ db: Database) throws -> Date
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `transactionclock-implementations`

- **Role Heading:** API Collection


---
