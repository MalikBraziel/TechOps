# Index

- `dumpformat-implementations`
- `finalize(_:statement:to:)`
- `header`
- `init(header:separator:)`
- `quote(header:separator:)`
- `separator`
- `writerow(_:statement:to:)`

---


## `dumpformat-implementations`

- **Role Heading:** API Collection


---

## `finalize(_:statement:to:)`

> All rows from the statement have been printed.

```swift
mutating func finalize(_ db: Database, statement: Statement, to stream: inout DumpStream)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `header`

> A boolean value indicating if column labels are printed as the first   line of output.

```swift
var header: Bool
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `init(header:separator:)`

> Creates a   .

```swift
init(header: Bool = false, separator: String = ",")
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `quote(header:separator:)`

> A format that prints one line per database row, formatting values   as SQL literals.

```swift
static func quote(header: Bool = false, separator: String = ",") -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `separator`

> The separator between values.

```swift
var separator: String
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `writerow(_:statement:to:)`

> Writes a row from the given statement.

```swift
mutating func writeRow(_ db: Database, statement: Statement, to stream: inout DumpStream)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
