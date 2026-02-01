# Index

- `debug(header:separator:nullvalue:)`
- `finalize(_:statement:to:)`
- `json(encoder:)`
- `line(nullvalue:)`
- `list(header:separator:nullvalue:)`
- `quote(header:separator:)`
- `writerow(_:statement:to:)`

---


## `debug(header:separator:nullvalue:)`

> A format that prints one line per database row, suitable   for debugging.

```swift
static func debug(header: Bool = false, separator: String = "|", nullValue: String = "") -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `finalize(_:statement:to:)`

> All rows from the statement have been printed.

```swift
mutating func finalize(_ db: Database, statement: Statement, to stream: inout DumpStream)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `json(encoder:)`

> A format that prints database rows as a JSON array.

```swift
static func json(encoder: JSONEncoder = JSONDumpFormat.defaultEncoder) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `line(nullvalue:)`

> A format that prints one line per database value. All blob values   are interpreted as strings.

```swift
static func line(nullValue: String = "") -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `list(header:separator:nullvalue:)`

> A format that prints one line per database row. All blob values   are interpreted as strings.

```swift
static func list(header: Bool = false, separator: String = "|", nullValue: String = "") -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `quote(header:separator:)`

> A format that prints one line per database row, formatting values   as SQL literals.

```swift
static func quote(header: Bool = false, separator: String = ",") -> Self
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
