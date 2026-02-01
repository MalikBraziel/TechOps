# Index

- `dumpformat-implementations`
- `finalize(_:statement:to:)`
- `init(nullvalue:)`
- `line(nullvalue:)`
- `nullvalue`
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

## `init(nullvalue:)`

> Creates a   .

```swift
init(nullValue: String = "")
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `line(nullvalue:)`

> A format that prints one line per database value. All blob values   are interpreted as strings.

```swift
static func line(nullValue: String = "") -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `nullvalue`

> The string to print for NULL values.

```swift
var nullValue: String
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
