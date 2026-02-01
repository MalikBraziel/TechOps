# Index

- `bind(to:at:)`
- `databasejsondecoder()`
- `databasejsonencoder()`
- `databasevalue`
- `databasevalueconvertible-implementations`
- `fetchall(_:_:)`
- `fetchall(_:arguments:adapter:)`
- `fetchall(_:sql:arguments:adapter:)`
- `fetchcursor(_:_:)`
- `fetchcursor(_:arguments:adapter:)`
- `fetchcursor(_:sql:arguments:adapter:)`
- `fetchone(_:_:)`
- `fetchone(_:arguments:adapter:)`
- `fetchone(_:sql:arguments:adapter:)`
- `fromdatabasevalue(_:)`
- `frommissingcolumn()`
- `init(matchingallprefixesin:)`
- `init(matchingalltokensin:)`
- `init(matchinganytokenin:)`
- `init(matchingphrase:)`
- `init(rawpattern:)`
- `rawpattern`
- `sqlexpression`
- `statementbinding-implementations`

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

> A database value.

```swift
var databaseValue: DatabaseValue { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `databasevalueconvertible-implementations`

- **Role Heading:** API Collection


---

## `fetchall(_:_:)`

> Returns an array of values fetched from a fetch request.

```swift
static func fetchAll(_ db: Database, _ request: some FetchRequest) throws -> [Self]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchall(_:arguments:adapter:)`

> Returns an array of values fetched from a prepared statement.

```swift
static func fetchAll(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> [Self]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchall(_:sql:arguments:adapter:)`

> Returns an array of values fetched from an SQL query.

```swift
static func fetchAll(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> [Self]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcursor(_:_:)`

> Returns a cursor over values fetched from a fetch request.

```swift
static func fetchCursor(_ db: Database, _ request: some FetchRequest) throws -> DatabaseValueCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcursor(_:arguments:adapter:)`

> Returns a cursor over values fetched from a prepared statement.

```swift
static func fetchCursor(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> DatabaseValueCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcursor(_:sql:arguments:adapter:)`

> Returns a cursor over values fetched from an SQL query.

```swift
static func fetchCursor(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> DatabaseValueCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchone(_:_:)`

> Returns a single value fetched from a fetch request.

```swift
static func fetchOne(_ db: Database, _ request: some FetchRequest) throws -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchone(_:arguments:adapter:)`

> Returns a single value fetched from a prepared statement.

```swift
static func fetchOne(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchone(_:sql:arguments:adapter:)`

> Returns a single value fetched from an SQL query.

```swift
static func fetchOne(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fromdatabasevalue(_:)`

> Creates an instance with the specified database value.

```swift
static func fromDatabaseValue(_ dbValue: DatabaseValue) -> FTS3Pattern?
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

## `init(matchingallprefixesin:)`

> Creates a pattern that matches all token prefixes found in the input   string.

```swift
init?(matchingAllPrefixesIn string: String)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(matchingalltokensin:)`

> Creates a pattern that matches all tokens found in the input string.

```swift
init?(matchingAllTokensIn string: String)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(matchinganytokenin:)`

> Creates a pattern that matches any token found in the input string.

```swift
init?(matchingAnyTokenIn string: String)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(matchingphrase:)`

> Creates a pattern that matches a contiguous string.

```swift
init?(matchingPhrase string: String)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(rawpattern:)`

> Creates a pattern from a raw pattern string.

```swift
init(rawPattern: String) throws
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `rawpattern`

> The raw pattern string.

```swift
let rawPattern: String
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


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
