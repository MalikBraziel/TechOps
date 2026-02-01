# Index

- `databasejsondecoder()-2d8ft`
- `databasejsondecoder()`
- `databasejsonencoder()-95ykz`
- `databasejsonencoder()`
- `databasevalue-50wqe`
- `databasevalue-56av9`
- `databasevalue-5df0f`
- `databasevalue-9g8yr`
- `databasevalue-9rn5o`
- `databasevalue`
- `fetchall(_:_:)-7tnun`
- `fetchall(_:_:)-9hkqs`
- `fetchall(_:arguments:adapter:)-3abuc`
- `fetchall(_:arguments:adapter:)-64gua`
- `fetchall(_:sql:arguments:adapter:)-1cqyb`
- `fetchall(_:sql:arguments:adapter:)-7bn2i`
- `fetchcursor(_:_:)-77a34`
- `fetchcursor(_:_:)-8q4r6`
- `fetchcursor(_:arguments:adapter:)-4l6af`
- `fetchcursor(_:arguments:adapter:)-81f9d`
- `fetchcursor(_:sql:arguments:adapter:)-4xfxh`
- `fetchcursor(_:sql:arguments:adapter:)-6elcz`
- `fetchone(_:_:)-94q4e`
- `fetchone(_:_:)-o6yj`
- `fetchone(_:arguments:adapter:)-3d7ax`
- `fetchone(_:arguments:adapter:)-8cbzp`
- `fetchone(_:sql:arguments:adapter:)-563lc`
- `fetchone(_:sql:arguments:adapter:)-qvqp`
- `fetchset(_:_:)-1foke`
- `fetchset(_:_:)-4bc1m`
- `fetchset(_:arguments:adapter:)-6y54n`
- `fetchset(_:arguments:adapter:)-9fh2b`
- `fetchset(_:sql:arguments:adapter:)-1ythd`
- `fetchset(_:sql:arguments:adapter:)-5jene`
- `fromdatabasevalue(_:)-1p6so`
- `fromdatabasevalue(_:)-2biqe`
- `fromdatabasevalue(_:)-4id0u`
- `fromdatabasevalue(_:)-78al5`
- `fromdatabasevalue(_:)-7f4hg`
- `fromdatabasevalue(_:)`
- `frommissingcolumn()-90xk8`
- `frommissingcolumn()`

---


## `databasejsondecoder()-2d8ft`

> Returns the    that decodes the value.

```swift
static func databaseJSONDecoder() -> JSONDecoder
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `databasejsondecoder()`

> Returns the    that decodes the value.

```swift
static func databaseJSONDecoder() -> JSONDecoder
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `databasejsonencoder()-95ykz`

> Returns the    that encodes the value.

```swift
static func databaseJSONEncoder() -> JSONEncoder
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `databasejsonencoder()`

> Returns the    that encodes the value.

```swift
static func databaseJSONEncoder() -> JSONEncoder
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `databasevalue-50wqe`

> A database value.

```swift
var databaseValue: DatabaseValue { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `databasevalue-56av9`

> A database value.

```swift
var databaseValue: DatabaseValue { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `databasevalue-5df0f`

> A database value.

```swift
var databaseValue: DatabaseValue { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `databasevalue-9g8yr`

> A database value.

```swift
var databaseValue: DatabaseValue { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `databasevalue-9rn5o`

> A database value.

```swift
var databaseValue: DatabaseValue { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `databasevalue`

> A database value.

```swift
var databaseValue: DatabaseValue { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `fetchall(_:_:)-7tnun`

> Returns an array of values fetched from a fetch request.

```swift
static func fetchAll(_ db: Database, _ request: some FetchRequest) throws -> [Self]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchall(_:_:)-9hkqs`

> Returns an array of values fetched from a fetch request.

```swift
static func fetchAll(_ db: Database, _ request: some FetchRequest) throws -> [Self]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchall(_:arguments:adapter:)-3abuc`

> Returns an array of values fetched from a prepared statement.

```swift
static func fetchAll(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> [Self]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchall(_:arguments:adapter:)-64gua`

> Returns an array of values fetched from a prepared statement.

```swift
static func fetchAll(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> [Self]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchall(_:sql:arguments:adapter:)-1cqyb`

> Returns an array of values fetched from an SQL query.

```swift
static func fetchAll(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> [Self]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchall(_:sql:arguments:adapter:)-7bn2i`

> Returns an array of values fetched from an SQL query.

```swift
static func fetchAll(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> [Self]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcursor(_:_:)-77a34`

> Returns a cursor over values fetched from a fetch request.

```swift
static func fetchCursor(_ db: Database, _ request: some FetchRequest) throws -> FastDatabaseValueCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcursor(_:_:)-8q4r6`

> Returns a cursor over values fetched from a fetch request.

```swift
static func fetchCursor(_ db: Database, _ request: some FetchRequest) throws -> DatabaseValueCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcursor(_:arguments:adapter:)-4l6af`

> Returns a cursor over values fetched from a prepared statement.

```swift
static func fetchCursor(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> DatabaseValueCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcursor(_:arguments:adapter:)-81f9d`

> Returns a cursor over values fetched from a prepared statement.

```swift
static func fetchCursor(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> FastDatabaseValueCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcursor(_:sql:arguments:adapter:)-4xfxh`

> Returns a cursor over values fetched from an SQL query.

```swift
static func fetchCursor(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> FastDatabaseValueCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcursor(_:sql:arguments:adapter:)-6elcz`

> Returns a cursor over values fetched from an SQL query.

```swift
static func fetchCursor(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> DatabaseValueCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchone(_:_:)-94q4e`

> Returns a single value fetched from a fetch request.

```swift
static func fetchOne(_ db: Database, _ request: some FetchRequest) throws -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchone(_:_:)-o6yj`

> Returns a single value fetched from a fetch request.

```swift
static func fetchOne(_ db: Database, _ request: some FetchRequest) throws -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchone(_:arguments:adapter:)-3d7ax`

> Returns a single value fetched from a prepared statement.

```swift
static func fetchOne(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchone(_:arguments:adapter:)-8cbzp`

> Returns a single value fetched from a prepared statement.

```swift
static func fetchOne(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchone(_:sql:arguments:adapter:)-563lc`

> Returns a single value fetched from an SQL query.

```swift
static func fetchOne(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchone(_:sql:arguments:adapter:)-qvqp`

> Returns a single value fetched from an SQL query.

```swift
static func fetchOne(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchset(_:_:)-1foke`

> Returns a set of values fetched from a fetch request.

```swift
static func fetchSet(_ db: Database, _ request: some FetchRequest) throws -> Set<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchset(_:_:)-4bc1m`

> Returns a set of values fetched from a fetch request.

```swift
static func fetchSet(_ db: Database, _ request: some FetchRequest) throws -> Set<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchset(_:arguments:adapter:)-6y54n`

> Returns a set of values fetched from a prepared statement.

```swift
static func fetchSet(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> Set<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchset(_:arguments:adapter:)-9fh2b`

> Returns a set of values fetched from a prepared statement.

```swift
static func fetchSet(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> Set<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchset(_:sql:arguments:adapter:)-1ythd`

> Returns a set of values fetched from an SQL query.

```swift
static func fetchSet(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> Set<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchset(_:sql:arguments:adapter:)-5jene`

> Returns a set of values fetched from an SQL query.

```swift
static func fetchSet(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> Set<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fromdatabasevalue(_:)-1p6so`

> Creates an instance with the specified database value.

```swift
static func fromDatabaseValue(_ dbValue: DatabaseValue) -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fromdatabasevalue(_:)-2biqe`

> Creates an instance with the specified database value.

```swift
static func fromDatabaseValue(_ databaseValue: DatabaseValue) -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fromdatabasevalue(_:)-4id0u`

> Creates an instance with the specified database value.

```swift
static func fromDatabaseValue(_ dbValue: DatabaseValue) -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fromdatabasevalue(_:)-78al5`

> Creates an instance with the specified database value.

```swift
static func fromDatabaseValue(_ databaseValue: DatabaseValue) -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fromdatabasevalue(_:)-7f4hg`

> Creates an instance with the specified database value.

```swift
static func fromDatabaseValue(_ databaseValue: DatabaseValue) -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fromdatabasevalue(_:)`

> Creates an instance with the specified database value.

```swift
static func fromDatabaseValue(_ dbValue: DatabaseValue) -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `frommissingcolumn()-90xk8`

> Default implementation fails to decode a value from a missing column.

```swift
static func fromMissingColumn() -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `frommissingcolumn()`

> Creates an instance from a missing column, if possible.

```swift
static func fromMissingColumn() -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---
