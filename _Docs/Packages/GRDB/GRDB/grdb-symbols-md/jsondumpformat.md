# Index

- `defaultencoder`
- `dumpformat-implementations`
- `encoder`
- `finalize(_:statement:to:)`
- `init(encoder:)`
- `json(encoder:)`
- `writerow(_:statement:to:)`

---


## `defaultencoder`

> The default    for database values.

```swift
static var defaultEncoder: JSONEncoder { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `dumpformat-implementations`

- **Role Heading:** API Collection


---

## `encoder`

> The JSONEncoder that formats individual database values.

```swift
var encoder: JSONEncoder
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `finalize(_:statement:to:)`

> All rows from the statement have been printed.

```swift
mutating func finalize(_ db: Database, statement: Statement, to stream: inout DumpStream)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `init(encoder:)`

> Creates a   .

```swift
init(encoder: JSONEncoder = JSONDumpFormat.defaultEncoder)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `json(encoder:)`

> A format that prints database rows as a JSON array.

```swift
static func json(encoder: JSONEncoder = JSONDumpFormat.defaultEncoder) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `writerow(_:statement:to:)`

> Writes a row from the given statement.

```swift
mutating func writeRow(_ db: Database, statement: Statement, to stream: inout DumpStream) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
