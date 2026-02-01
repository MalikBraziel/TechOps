# Index

- `bind(to:at:)`
- `databasejsondecoder()`
- `databasejsonencoder()`
- `databasevalue`
- `databasevalueconvertible-implementations`
- `datecomponents`
- `decodable-implementations`
- `encodable-implementations`
- `encode(to:)`
- `fetchall(_:_:)-21c20`
- `fetchall(_:_:)-3u4sw`
- `fetchall(_:arguments:adapter:)-55jmd`
- `fetchall(_:arguments:adapter:)-j0cv`
- `fetchall(_:sql:arguments:adapter:)-65sg7`
- `fetchall(_:sql:arguments:adapter:)-73b0e`
- `fetchcursor(_:_:)-3wazg`
- `fetchcursor(_:_:)-lll4`
- `fetchcursor(_:arguments:adapter:)-4xcix`
- `fetchcursor(_:arguments:adapter:)-6i2mm`
- `fetchcursor(_:sql:arguments:adapter:)-3ja10`
- `fetchcursor(_:sql:arguments:adapter:)-3xzqf`
- `fetchone(_:_:)-7q35q`
- `fetchone(_:_:)-9byie`
- `fetchone(_:arguments:adapter:)-36rwu`
- `fetchone(_:arguments:adapter:)-5h6rx`
- `fetchone(_:sql:arguments:adapter:)-1e29j`
- `fetchone(_:sql:arguments:adapter:)-8ymho`
- `format-swift.enum`
- `format-swift.property`
- `fromdatabasevalue(_:)-1fx9l`
- `fromdatabasevalue(_:)`
- `frommissingcolumn()`
- `fromstatement(_:atuncheckedindex:)`
- `init(_:format:)`
- `init(from:)`
- `init(sqlitestatement:index:)`
- `sqlexpression`
- `statementbinding-implementations`
- `statementcolumnconvertible-implementations`

---


## `bind(to:at:)`

> Binds a statement argument.

```swift
func bind(to sqliteStatement: SQLiteStatement, at index: CInt) -> CInt
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `databasejsondecoder()`

> Returns the    that decodes the value.

```swift
static func databaseJSONDecoder() -> JSONDecoder
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

## `databasevalue`

> Returns a TEXT database value.

```swift
var databaseValue: DatabaseValue { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `databasevalueconvertible-implementations`

- **Role Heading:** API Collection


---

## `datecomponents`

> The date components

```swift
let dateComponents: DateComponents
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `decodable-implementations`

- **Role Heading:** API Collection


---

## `encodable-implementations`

- **Role Heading:** API Collection


---

## `encode(to:)`

> Inherited from   .

```swift
func encode(to encoder: Encoder) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchall(_:_:)-21c20`

> Returns an array of values fetched from a fetch request.

```swift
static func fetchAll(_ db: Database, _ request: some FetchRequest) throws -> [Self]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchall(_:_:)-3u4sw`

> Returns an array of values fetched from a fetch request.

```swift
static func fetchAll(_ db: Database, _ request: some FetchRequest) throws -> [Self]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchall(_:arguments:adapter:)-55jmd`

> Returns an array of values fetched from a prepared statement.

```swift
static func fetchAll(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> [Self]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchall(_:arguments:adapter:)-j0cv`

> Returns an array of values fetched from a prepared statement.

```swift
static func fetchAll(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> [Self]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchall(_:sql:arguments:adapter:)-65sg7`

> Returns an array of values fetched from an SQL query.

```swift
static func fetchAll(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> [Self]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchall(_:sql:arguments:adapter:)-73b0e`

> Returns an array of values fetched from an SQL query.

```swift
static func fetchAll(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> [Self]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcursor(_:_:)-3wazg`

> Returns a cursor over values fetched from a fetch request.

```swift
static func fetchCursor(_ db: Database, _ request: some FetchRequest) throws -> DatabaseValueCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcursor(_:_:)-lll4`

> Returns a cursor over values fetched from a fetch request.

```swift
static func fetchCursor(_ db: Database, _ request: some FetchRequest) throws -> FastDatabaseValueCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcursor(_:arguments:adapter:)-4xcix`

> Returns a cursor over values fetched from a prepared statement.

```swift
static func fetchCursor(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> FastDatabaseValueCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcursor(_:arguments:adapter:)-6i2mm`

> Returns a cursor over values fetched from a prepared statement.

```swift
static func fetchCursor(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> DatabaseValueCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcursor(_:sql:arguments:adapter:)-3ja10`

> Returns a cursor over values fetched from an SQL query.

```swift
static func fetchCursor(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> DatabaseValueCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcursor(_:sql:arguments:adapter:)-3xzqf`

> Returns a cursor over values fetched from an SQL query.

```swift
static func fetchCursor(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> FastDatabaseValueCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchone(_:_:)-7q35q`

> Returns a single value fetched from a fetch request.

```swift
static func fetchOne(_ db: Database, _ request: some FetchRequest) throws -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchone(_:_:)-9byie`

> Returns a single value fetched from a fetch request.

```swift
static func fetchOne(_ db: Database, _ request: some FetchRequest) throws -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchone(_:arguments:adapter:)-36rwu`

> Returns a single value fetched from a prepared statement.

```swift
static func fetchOne(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchone(_:arguments:adapter:)-5h6rx`

> Returns a single value fetched from a prepared statement.

```swift
static func fetchOne(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchone(_:sql:arguments:adapter:)-1e29j`

> Returns a single value fetched from an SQL query.

```swift
static func fetchOne(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchone(_:sql:arguments:adapter:)-8ymho`

> Returns a single value fetched from an SQL query.

```swift
static func fetchOne(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `format-swift.enum`

> The SQLite formats for date components.

```swift
enum Format
```

- **Symbol Kind:** enum

- **Role Heading:** Enumeration


---

## `format-swift.property`

> The database format

```swift
let format: Format
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `fromdatabasevalue(_:)-1fx9l`

> Creates an instance with the specified database value.

```swift
static func fromDatabaseValue(_ databaseValue: DatabaseValue) -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fromdatabasevalue(_:)`

> Creates a    from the specified database value.

```swift
static func fromDatabaseValue(_ dbValue: DatabaseValue) -> DatabaseDateComponents?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `frommissingcolumn()`

> Default implementation fails to decode a value from a missing column.

```swift
static func fromMissingColumn() -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fromstatement(_:atuncheckedindex:)`

> Default implementation fails on decoding NULL.

```swift
static func fromStatement(_ sqliteStatement: SQLiteStatement, atUncheckedIndex index: CInt) -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `init(_:format:)`

> Creates a DatabaseDateComponents from a DateComponents and a format.

```swift
init(_ dateComponents: DateComponents, format: Format)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(from:)`

> Inherited from   .

```swift
init(from decoder: Decoder) throws
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(sqlitestatement:index:)`

> Returns a value initialized from a raw SQLite statement pointer.

```swift
init?(sqliteStatement: SQLiteStatement, index: CInt)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `sqlexpression`

> Inherited from   .

```swift
var sqlExpression: SQLExpression { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `statementbinding-implementations`

- **Role Heading:** API Collection


---

## `statementcolumnconvertible-implementations`

- **Role Heading:** API Collection


---
