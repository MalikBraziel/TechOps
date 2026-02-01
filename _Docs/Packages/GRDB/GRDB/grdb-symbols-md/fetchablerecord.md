# Index

- `databasecolumndecodingstrategy-674c7`
- `databasecolumndecodingstrategy`
- `databasedatadecodingstrategy(for:)-urbz`
- `databasedatadecodingstrategy(for:)`
- `databasedatedecodingstrategy(for:)-3jmms`
- `databasedatedecodingstrategy(for:)`
- `databasedecodinguserinfo-1xpb1`
- `databasedecodinguserinfo`
- `databasejsondecoder(for:)-1yrhs`
- `databasejsondecoder(for:)`
- `fetchall(_:)`
- `fetchall(_:_:)`
- `fetchall(_:arguments:adapter:)`
- `fetchall(_:ids:)`
- `fetchall(_:keys:)-2addp`
- `fetchall(_:keys:)-60fah`
- `fetchall(_:sql:arguments:adapter:)`
- `fetchcursor(_:)`
- `fetchcursor(_:_:)`
- `fetchcursor(_:arguments:adapter:)`
- `fetchcursor(_:ids:)`
- `fetchcursor(_:keys:)-1x4ja`
- `fetchcursor(_:keys:)-5u9hu`
- `fetchcursor(_:sql:arguments:adapter:)`
- `fetchone(_:)`
- `fetchone(_:_:)`
- `fetchone(_:arguments:adapter:)`
- `fetchone(_:id:)`
- `fetchone(_:key:)-3f3hc`
- `fetchone(_:key:)-92b9m`
- `fetchone(_:sql:arguments:adapter:)`
- `fetchset(_:)`
- `fetchset(_:_:)`
- `fetchset(_:arguments:adapter:)`
- `fetchset(_:ids:)`
- `fetchset(_:keys:)-7lhcn`
- `fetchset(_:keys:)-8no3x`
- `fetchset(_:sql:arguments:adapter:)`
- `find(_:id:)`
- `find(_:key:)-1dfbe`
- `find(_:key:)-4kry5`
- `init(row:)-4ptlh`
- `init(row:)`

---


## `databasecolumndecodingstrategy-674c7`

> The default strategy for converting column names to coding keys is    .

```swift
static var databaseColumnDecodingStrategy: DatabaseColumnDecodingStrategy { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `databasecolumndecodingstrategy`

> The strategy for converting column names to coding keys.

```swift
static var databaseColumnDecodingStrategy: DatabaseColumnDecodingStrategy { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `databasedatadecodingstrategy(for:)-urbz`

> The default strategy for decoding    columns is    .

```swift
static func databaseDataDecodingStrategy(for column: String) -> DatabaseDataDecodingStrategy
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `databasedatadecodingstrategy(for:)`

> The strategy for decoding    columns.

```swift
static func databaseDataDecodingStrategy(for column: String) -> DatabaseDataDecodingStrategy
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `databasedatedecodingstrategy(for:)-3jmms`

> The default strategy for decoding    columns is    .

```swift
static func databaseDateDecodingStrategy(for column: String) -> DatabaseDateDecodingStrategy
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `databasedatedecodingstrategy(for:)`

> The strategy for decoding    columns.

```swift
static func databaseDateDecodingStrategy(for column: String) -> DatabaseDateDecodingStrategy
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `databasedecodinguserinfo-1xpb1`

> Contextual information made available to the     initializer.

```swift
static var databaseDecodingUserInfo: [CodingUserInfoKey : Any] { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `databasedecodinguserinfo`

> Contextual information made available to the     initializer.

```swift
static var databaseDecodingUserInfo: [CodingUserInfoKey : Any] { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `databasejsondecoder(for:)-1yrhs`

> Returns the    that decodes the value for a given column.

```swift
static func databaseJSONDecoder(for column: String) -> JSONDecoder
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `databasejsondecoder(for:)`

> Returns the    that decodes the value for a given column.

```swift
static func databaseJSONDecoder(for column: String) -> JSONDecoder
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchall(_:)`

> Returns an array of all records fetched from the database.

```swift
static func fetchAll(_ db: Database) throws -> [Self]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


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

## `fetchall(_:ids:)`

> Returns an array of records identified by their primary keys.

```swift
static func fetchAll(_ db: Database, ids: some Collection<ID>) throws -> [Self]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchall(_:keys:)-2addp`

> Returns an array of records identified by the provided unique keys   (primary key or any key with a unique index on it).

```swift
static func fetchAll(_ db: Database, keys: [[String : (any DatabaseValueConvertible)?]]) throws -> [Self]
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchall(_:keys:)-60fah`

> Returns an array of records identified by their primary keys.

```swift
static func fetchAll(_ db: Database, keys: some Collection<some DatabaseValueConvertible>) throws -> [Self]
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

## `fetchcursor(_:)`

> Returns a cursor over all records fetched from the database.

```swift
static func fetchCursor(_ db: Database) throws -> RecordCursor<Self>
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

## `fetchcursor(_:ids:)`

> Returns a cursor over records identified by their primary keys.

```swift
static func fetchCursor(_ db: Database, ids: some Collection<ID>) throws -> RecordCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcursor(_:keys:)-1x4ja`

> Returns a cursor over records identified by their primary keys.

```swift
static func fetchCursor(_ db: Database, keys: some Collection<some DatabaseValueConvertible>) throws -> RecordCursor<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcursor(_:keys:)-5u9hu`

> Returns a cursor over records identified by the provided unique keys   (primary key or any key with a unique index on it).

```swift
static func fetchCursor(_ db: Database, keys: [[String : (any DatabaseValueConvertible)?]]) throws -> RecordCursor<Self>
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

## `fetchone(_:)`

> Returns a single record fetched from the database.

```swift
static func fetchOne(_ db: Database) throws -> Self?
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

## `fetchone(_:id:)`

> Returns the record identified by a primary key.

```swift
static func fetchOne(_ db: Database, id: ID) throws -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchone(_:key:)-3f3hc`

> Returns the record identified by a primary key.

```swift
static func fetchOne(_ db: Database, key: some DatabaseValueConvertible) throws -> Self?
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchone(_:key:)-92b9m`

> Returns the record identified by a unique key (the primary key or   any key with a unique index on it).

```swift
static func fetchOne(_ db: Database, key: [String : (any DatabaseValueConvertible)?]?) throws -> Self?
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

## `fetchset(_:)`

> Returns a set of all records fetched from the database.

```swift
static func fetchSet(_ db: Database) throws -> Set<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchset(_:_:)`

> Returns a set of records fetched from a fetch request.

```swift
static func fetchSet(_ db: Database, _ request: some FetchRequest) throws -> Set<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchset(_:arguments:adapter:)`

> Returns a set of records fetched from a prepared statement.

```swift
static func fetchSet(_ statement: Statement, arguments: StatementArguments? = nil, adapter: (any RowAdapter)? = nil) throws -> Set<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchset(_:ids:)`

> Returns a set of records identified by their primary keys.

```swift
static func fetchSet(_ db: Database, ids: some Collection<ID>) throws -> Set<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchset(_:keys:)-7lhcn`

> Returns a set of records identified by their primary keys.

```swift
static func fetchSet(_ db: Database, keys: some Collection<some DatabaseValueConvertible>) throws -> Set<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchset(_:keys:)-8no3x`

> Returns a set of records identified by the provided unique keys   (primary key or any key with a unique index on it).

```swift
static func fetchSet(_ db: Database, keys: [[String : (any DatabaseValueConvertible)?]]) throws -> Set<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchset(_:sql:arguments:adapter:)`

> Returns a set of records fetched from an SQL query.

```swift
static func fetchSet(_ db: Database, sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil) throws -> Set<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `find(_:id:)`

> Returns the record identified by a primary key, or throws an error if   the record does not exist.

```swift
static func find(_ db: Database, id: ID) throws -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `find(_:key:)-1dfbe`

> Returns the record identified by a unique key (the primary key or   any key with a unique index on it), or throws an error if the record   does not exist.

```swift
static func find(_ db: Database, key: [String : (any DatabaseValueConvertible)?]) throws -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `find(_:key:)-4kry5`

> Returns the record identified by a primary key, or throws an error if   the record does not exist.

```swift
static func find(_ db: Database, key: some DatabaseValueConvertible) throws -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `init(row:)-4ptlh`

> Creates a record from   , using the    conformance.

```swift
init(row: Row) throws
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(row:)`

> Creates a record from   .

```swift
init(row: Row) throws
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---
