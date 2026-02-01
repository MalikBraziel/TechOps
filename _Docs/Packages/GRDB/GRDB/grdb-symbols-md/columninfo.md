# Index

- `databasecolumndecodingstrategy`
- `databasedatadecodingstrategy(for:)`
- `databasedatedecodingstrategy(for:)`
- `databasedecodinguserinfo`
- `databasejsondecoder(for:)`
- `defaultvaluesql`
- `fetchablerecord-implementations`
- `fetchall(_:_:)`
- `fetchall(_:arguments:adapter:)`
- `fetchall(_:sql:arguments:adapter:)`
- `fetchcursor(_:_:)`
- `fetchcursor(_:arguments:adapter:)`
- `fetchcursor(_:sql:arguments:adapter:)`
- `fetchone(_:_:)`
- `fetchone(_:arguments:adapter:)`
- `fetchone(_:sql:arguments:adapter:)`
- `init(row:)`
- `isnotnull`
- `name`
- `primarykeyindex`
- `type`

---


## `databasecolumndecodingstrategy`

> The default strategy for converting column names to coding keys is    .

```swift
static var databaseColumnDecodingStrategy: DatabaseColumnDecodingStrategy { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `databasedatadecodingstrategy(for:)`

> The default strategy for decoding    columns is    .

```swift
static func databaseDataDecodingStrategy(for column: String) -> DatabaseDataDecodingStrategy
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `databasedatedecodingstrategy(for:)`

> The default strategy for decoding    columns is    .

```swift
static func databaseDateDecodingStrategy(for column: String) -> DatabaseDateDecodingStrategy
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `databasedecodinguserinfo`

> Contextual information made available to the     initializer.

```swift
static var databaseDecodingUserInfo: [CodingUserInfoKey : Any] { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `databasejsondecoder(for:)`

> Returns the    that decodes the value for a given column.

```swift
static func databaseJSONDecoder(for column: String) -> JSONDecoder
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `defaultvaluesql`

> The SQL snippet that defines the default value, if any.

```swift
let defaultValueSQL: String?
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `fetchablerecord-implementations`

- **Role Heading:** API Collection


---

## `fetchall(_:_:)`

> Returns an array of records fetched from a fetch request.

```swift
static func fetchAll(_ db: Database, _ request: some FetchRequest) throws -> [Self]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchall(_:arguments:adapter:)`

> Returns an array of records fetched from a prepared statement.

```swift
static func fetchAll(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> [Self]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchall(_:sql:arguments:adapter:)`

> Returns an array of records fetched from an SQL query.

```swift
static func fetchAll(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> [Self]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcursor(_:_:)`

> Returns a cursor over records fetched from a fetch request.

```swift
static func fetchCursor(_ db: Database, _ request: some FetchRequest) throws -> RecordCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcursor(_:arguments:adapter:)`

> Returns a cursor over records fetched from a prepared statement.

```swift
static func fetchCursor(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> RecordCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcursor(_:sql:arguments:adapter:)`

> Returns a cursor over records fetched from an SQL query.

```swift
static func fetchCursor(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> RecordCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchone(_:_:)`

> Returns a single record fetched from a fetch request.

```swift
static func fetchOne(_ db: Database, _ request: some FetchRequest) throws -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchone(_:arguments:adapter:)`

> Returns a single record fetched from a prepared statement.

```swift
static func fetchOne(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchone(_:sql:arguments:adapter:)`

> Returns a single record fetched from an SQL query.

```swift
static func fetchOne(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `init(row:)`

> Creates a record from   .

```swift
init(row: Row)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `isnotnull`

> A boolean value indicating if the column is constrained to be not null.

```swift
let isNotNull: Bool
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `name`

> The column name.

```swift
let name: String
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `primarykeyindex`

> The one-based index of the column in the primary key.

```swift
var primaryKeyIndex: Int { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `type`

> The column data type.

```swift
let type: String
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---
