# Index

- `custom(_:)`
- `default`
- `now(_:)`

---


## `custom(_:)`

> Returns a custom clock.

```swift
static func custom(_ now: @escaping (Database) throws -> Date) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `default`

> Returns the default clock.

```swift
static var `default`: Self { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `now(_:)`

> Returns the date of the current transaction.

```swift
func now(_ db: Database) throws -> Date
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
