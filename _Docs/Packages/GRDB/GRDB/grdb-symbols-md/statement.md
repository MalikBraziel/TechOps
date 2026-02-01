# Index

- `arguments`
- `columncount`
- `columnnames`
- `customstringconvertible-implementations`
- `databaseregion`
- `description`
- `execute(arguments:)`
- `index(ofcolumn:)`
- `isreadonly`
- `setarguments(_:)`
- `setuncheckedarguments(_:)`
- `sql`
- `sqlitestatement`
- `validatearguments(_:)`

---


## `arguments`

> The statement arguments.

```swift
var arguments: StatementArguments { get set }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `columncount`

> The number of columns in the resulting rows.

```swift
var columnCount: Int { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `columnnames`

> The column names, ordered from left to right.

```swift
lazy var columnNames: [String] { get set }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `customstringconvertible-implementations`

- **Role Heading:** API Collection


---

## `databaseregion`

> The database region that the statement looks into.

```swift
var databaseRegion: DatabaseRegion { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `description`

> Inherited from   .

```swift
var description: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `execute(arguments:)`

> Executes the prepared statement.

```swift
func execute(arguments: StatementArguments? = nil) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `index(ofcolumn:)`

> Returns the index of the leftmost column with the given name.

```swift
func index(ofColumn name: String) -> Int?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `isreadonly`

> A boolean value indicating if the prepared statement makes no direct   changes to the content of the database file.

```swift
var isReadonly: Bool { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `setarguments(_:)`

> Validates and sets the statement arguments.

```swift
func setArguments(_ arguments: StatementArguments) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `setuncheckedarguments(_:)`

> Set arguments without any validation. Trades safety for performance.

```swift
func setUncheckedArguments(_ arguments: StatementArguments)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `sql`

> The SQL query.

```swift
var sql: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `sqlitestatement`

> The raw SQLite statement, suitable for the SQLite C API.

```swift
let sqliteStatement: SQLiteStatement
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `validatearguments(_:)`

> Throws a    of code    if the provided   arguments do not provide all values expected by the statement.

```swift
func validateArguments(_ arguments: StatementArguments) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
