# Index

- `add(collation:)`
- `add(function:)`
- `add(tokenizer:)`
- `add(transactionobserver:extent:)`
- `afternexttransaction(oncommit:onrollback:)`
- `allstatements(literal:)`
- `allstatements(sql:arguments:)`
- `alter(table:body:)`
- `backup(to:pagesperstep:progress:)`
- `begintransaction(_:)`
- `busycallback`
- `busymode`
- `cachedstatement(literal:)`
- `cachedstatement(sql:)`
- `changescount`
- `checkforeignkeys()`
- `checkforeignkeys(in:in:)`
- `checkpoint(_:on:)`
- `checkpointmode`
- `clearschemacache()`
- `collationname`
- `columns(in:in:)`
- `columntype`
- `commit()`
- `configuration`
- `conflictresolution`
- `create(index:on:columns:options:condition:)`
- `create(index:on:columns:unique:ifnotexists:condition:)`
- `create(index:on:expressions:options:condition:)`
- `create(indexon:columns:options:condition:)`
- `create(table:options:body:)`
- `create(table:temporary:ifnotexists:withoutrowid:body:)`
- `create(view:options:columns:as:)`
- `create(view:options:columns:asliteral:)`
- `create(virtualtable:ifnotexists:using:)`
- `create(virtualtable:ifnotexists:using:_:)`
- `create(virtualtable:options:using:)`
- `create(virtualtable:options:using:_:)`
- `debugdescription`
- `description`
- `drop(index:)`
- `drop(indexon:columns:)`
- `drop(table:)`
- `drop(view:)`
- `dropfts4synchronizationtriggers(fortable:)`
- `dropfts5synchronizationtriggers(fortable:)`
- `dumpcontent(format:to:)`
- `dumprequest(_:format:to:)`
- `dumpschema(to:)`
- `dumpsql(_:format:to:)`
- `dumptables(_:format:tableheader:stableorder:to:)`
- `execute(literal:)`
- `execute(sql:arguments:)`
- `foreignkeyaction`
- `foreignkeys(on:in:)`
- `foreignkeyviolations()`
- `foreignkeyviolations(in:in:)`
- `indexes(on:in:)`
- `insavepoint(_:)`
- `intransaction(_:_:)`
- `isgrdbinternaltable(_:)`
- `isinsidetransaction`
- `issqliteinternaltable(_:)`
- `json(_:)`
- `jsonarray(_:)-469db`
- `jsonarray(_:)-8p2p8`
- `jsonarraylength(_:)`
- `jsonarraylength(_:atpath:)`
- `jsonextract(_:atpath:)`
- `jsonextract(_:atpaths:)`
- `jsongrouparray(_:filter:)`
- `jsongroupobject(key:value:filter:)`
- `jsoninsert(_:_:)`
- `jsonisvalid(_:)`
- `jsonobject(_:)`
- `jsonpatch(_:with:)`
- `jsonquote(_:)`
- `jsonremove(_:atpath:)`
- `jsonremove(_:atpaths:)`
- `jsonreplace(_:_:)`
- `jsonset(_:_:)`
- `jsontype(_:)`
- `jsontype(_:atpath:)`
- `lasterrorcode`
- `lasterrormessage`
- `lastinsertedrowid`
- `logerror`
- `logerrorfunction`
- `makefts5pattern(rawpattern:fortable:)`
- `makestatement(literal:)`
- `makestatement(sql:)`
- `maketokenizer(_:)`
- `maximumstatementargumentcount`
- `notifychanges(in:)`
- `primarykey(_:in:)`
- `readonly(_:)`
- `registeraccess(to:)`
- `reindex(collation:)-171fj`
- `reindex(collation:)-2hxil`
- `releasememory()`
- `remove(collation:)`
- `remove(function:)`
- `remove(transactionobserver:)`
- `rename(table:to:)`
- `resumenotification`
- `rollback()`
- `schemasource`
- `schemaversion()`
- `sqliteconnection`
- `sqlitelibversionnumber`
- `storageclass`
- `suspendnotification`
- `table(_:hasuniquekey:)`
- `tableexists(_:in:)`
- `totalchangescount`
- `trace(options:_:)`
- `traceevent`
- `tracingoptions`
- `transactioncompletion`
- `transactiondate`
- `transactionkind`
- `transactionobservationextent`
- `triggerexists(_:in:)`
- `viewexists(_:in:)`
- `withschemasource(_:execute:)`

---


## `add(collation:)`

> Adds or redefines a collation.

```swift
func add(collation: DatabaseCollation)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `add(function:)`

> Adds or redefines a custom SQL function.

```swift
func add(function: DatabaseFunction)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `add(tokenizer:)`

> Add a custom FTS5 tokenizer.

```swift
func add(tokenizer: (some FTS5CustomTokenizer).Type)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `add(transactionobserver:extent:)`

> Adds a transaction observer on the database connection, so that it   gets notified of database changes and transactions.

```swift
func add(transactionObserver: some TransactionObserver, extent: TransactionObservationExtent = .observerLifetime)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `afternexttransaction(oncommit:onrollback:)`

> Registers closures to be executed after the next or current   transaction completes.

```swift
func afterNextTransaction(onCommit: @escaping (Database) -> Void, onRollback: @escaping (Database) -> Void = { _ in })
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `allstatements(literal:)`

> Returns a cursor of prepared statements.

```swift
func allStatements(literal sqlLiteral: SQL) throws -> SQLStatementCursor
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `allstatements(sql:arguments:)`

> Returns a cursor of prepared statements.

```swift
func allStatements(sql: String, arguments: StatementArguments? = nil) throws -> SQLStatementCursor
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `alter(table:body:)`

> Modifies a database table.

```swift
func alter(table name: String, body: (TableAlteration) -> Void) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `backup(to:pagesperstep:progress:)`

> Copies the database contents into another database.

```swift
func backup(to destDb: Database, pagesPerStep: CInt = -1, progress: ((DatabaseBackupProgress) throws -> Void)? = nil) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `begintransaction(_:)`

> Begins a database transaction.

```swift
func beginTransaction(_ kind: TransactionKind? = nil) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `busycallback`

> See    and  

```swift
typealias BusyCallback = (_ numberOfTries: Int) -> Bool
```

- **Symbol Kind:** typealias

- **Role Heading:** Type Alias


---

## `busymode`

> When there are several connections to a database, a connection may try   to access the database while it is locked by another connection.

```swift
enum BusyMode
```

- **Symbol Kind:** enum

- **Role Heading:** Enumeration


---

## `cachedstatement(literal:)`

> Returns a prepared statement that can be reused.

```swift
func cachedStatement(literal sqlLiteral: SQL) throws -> Statement
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `cachedstatement(sql:)`

> Returns a prepared statement that can be reused.

```swift
func cachedStatement(sql: String) throws -> Statement
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `changescount`

> The number of rows modified, inserted or deleted by the most recent   successful INSERT, UPDATE or DELETE statement.

```swift
var changesCount: Int { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `checkforeignkeys()`

> Throws an error if there exists a foreign key violation in the database.

```swift
func checkForeignKeys() throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `checkforeignkeys(in:in:)`

> Throws an error if there exists a foreign key violation in the table.

```swift
func checkForeignKeys(in tableName: String, in schemaName: String? = nil) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `checkpoint(_:on:)`

> Runs a WAL checkpoint.

```swift
@discardableResult func checkpoint(_ kind: Database.CheckpointMode = .passive, on dbName: String? = "main") throws -> (walFrameCount: Int, checkpointedFrameCount: Int)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `checkpointmode`

> The available checkpoint modes.

```swift
enum CheckpointMode
```

- **Symbol Kind:** enum

- **Role Heading:** Enumeration


---

## `clearschemacache()`

> Clears the database schema cache.

```swift
func clearSchemaCache()
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `collationname`

> The name of a string comparison function used by SQLite.

```swift
struct CollationName
```

- **Symbol Kind:** struct

- **Role Heading:** Structure


---

## `columns(in:in:)`

> Returns the columns in a table or a view.

```swift
func columns(in tableName: String, in schemaName: String? = nil) throws -> [ColumnInfo]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `columntype`

> An SQL column type.

```swift
struct ColumnType
```

- **Symbol Kind:** struct

- **Role Heading:** Structure


---

## `commit()`

> Commits a database transaction.

```swift
func commit() throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `configuration`

> The database configuration.

```swift
let configuration: Configuration
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `conflictresolution`

> An SQLite conflict resolution.

```swift
enum ConflictResolution
```

- **Symbol Kind:** enum

- **Role Heading:** Enumeration


---

## `create(index:on:columns:options:condition:)`

> Creates an index on the specified table and columns.

```swift
func create(index name: String, on table: String, columns: [String], options: IndexOptions = [], condition: (any SQLExpressible)? = nil) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `create(index:on:columns:unique:ifnotexists:condition:)`

> Creates an index on the specified table and columns.

```swift
func create(index name: String, on table: String, columns: [String], unique: Bool = false, ifNotExists: Bool = false, condition: (any SQLExpressible)? = nil) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `create(index:on:expressions:options:condition:)`

> Creates an index on the specified table and expressions.

```swift
func create(index name: String, on table: String, expressions: [any SQLExpressible], options: IndexOptions = [], condition: (any SQLExpressible)? = nil) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `create(indexon:columns:options:condition:)`

> Creates an index with a default name on the specified table and columns.

```swift
func create(indexOn table: String, columns: [String], options: IndexOptions = [], condition: (any SQLExpressible)? = nil) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `create(table:options:body:)`

> Creates a database table.

```swift
func create(table name: String, options: TableOptions = [], body: (TableDefinition) throws -> Void) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `create(table:temporary:ifnotexists:withoutrowid:body:)`

> Creates a database table.

```swift
func create(table name: String, temporary: Bool = false, ifNotExists: Bool = false, withoutRowID: Bool = false, body: (TableDefinition) throws -> Void) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `create(view:options:columns:as:)`

> Creates a database view.

```swift
func create(view name: String, options: ViewOptions = [], columns: [String]? = nil, as request: SQLSubqueryable) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `create(view:options:columns:asliteral:)`

> Creates a database view.

```swift
func create(view name: String, options: ViewOptions = [], columns: [String]? = nil, asLiteral sqlLiteral: SQL) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `create(virtualtable:ifnotexists:using:)`

> Creates a virtual database table.

```swift
func create(virtualTable name: String, ifNotExists: Bool = false, using module: String) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `create(virtualtable:ifnotexists:using:_:)`

> Creates a virtual database table.

```swift
func create<Module>(virtualTable tableName: String, ifNotExists: Bool = false, using module: Module, _ body: ((Module.TableDefinition) throws -> Void)? = nil) throws where Module : VirtualTableModule
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `create(virtualtable:options:using:)`

> Creates a virtual database table.

```swift
func create(virtualTable name: String, options: VirtualTableOptions = [], using module: String) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `create(virtualtable:options:using:_:)`

> Creates a virtual database table.

```swift
func create<Module>(virtualTable tableName: String, options: VirtualTableOptions = [], using module: Module, _ body: ((Module.TableDefinition) throws -> Void)? = nil) throws where Module : VirtualTableModule
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `debugdescription`

> Inherited from   .

```swift
var debugDescription: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `description`

> A description of this database connection.

```swift
let description: String
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `drop(index:)`

> Deletes a database index.

```swift
func drop(index name: String) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `drop(indexon:columns:)`

> Deletes the database index on the specified table and columns   if exactly one such index exists.

```swift
func drop(indexOn table: String, columns: [String]) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `drop(table:)`

> Deletes a database table.

```swift
func drop(table name: String) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `drop(view:)`

> Deletes a database view.

```swift
func drop(view name: String) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `dropfts4synchronizationtriggers(fortable:)`

> Deletes the synchronization triggers for a synchronized FTS4 table.

```swift
func dropFTS4SynchronizationTriggers(forTable tableName: String) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `dropfts5synchronizationtriggers(fortable:)`

> Deletes the synchronization triggers for a synchronized FTS5 table.

```swift
func dropFTS5SynchronizationTriggers(forTable tableName: String) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `dumpcontent(format:to:)`

> Prints the contents of the database.

```swift
func dumpContent(format: some DumpFormat = .debug(), to stream: (any TextOutputStream)? = nil) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `dumprequest(_:format:to:)`

> Prints the results of a request.

```swift
func dumpRequest(_ request: some FetchRequest, format: some DumpFormat = .debug(), to stream: (any TextOutputStream)? = nil) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `dumpschema(to:)`

> Prints the schema of the database.

```swift
func dumpSchema(to stream: (any TextOutputStream)? = nil) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `dumpsql(_:format:to:)`

> Prints the results of all statements in the provided SQL.

```swift
func dumpSQL(_ sql: SQL, format: some DumpFormat = .debug(), to stream: (any TextOutputStream)? = nil) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `dumptables(_:format:tableheader:stableorder:to:)`

> Prints the contents of the provided tables and views.

```swift
func dumpTables(_ tables: [String], format: some DumpFormat = .debug(), tableHeader: DumpTableHeaderOptions = .automatic, stableOrder: Bool = false, to stream: (any TextOutputStream)? = nil) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `execute(literal:)`

> Executes one or several SQL statements.

```swift
func execute(literal sqlLiteral: SQL) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `execute(sql:arguments:)`

> Executes one or several SQL statements.

```swift
func execute(sql: String, arguments: StatementArguments = StatementArguments()) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `foreignkeyaction`

> A foreign key action.

```swift
enum ForeignKeyAction
```

- **Symbol Kind:** enum

- **Role Heading:** Enumeration


---

## `foreignkeys(on:in:)`

> Returns the foreign keys defined on table named   .

```swift
func foreignKeys(on tableName: String, in schemaName: String? = nil) throws -> [ForeignKeyInfo]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `foreignkeyviolations()`

> Returns a cursor over foreign key violations in the database.

```swift
func foreignKeyViolations() throws -> RecordCursor<ForeignKeyViolation>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `foreignkeyviolations(in:in:)`

> Returns a cursor over foreign key violations in the table.

```swift
func foreignKeyViolations(in tableName: String, in schemaName: String? = nil) throws -> RecordCursor<ForeignKeyViolation>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `indexes(on:in:)`

> The indexes on table named   .

```swift
func indexes(on tableName: String, in schemaName: String? = nil) throws -> [IndexInfo]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `insavepoint(_:)`

> Wraps database operations inside a savepoint.

```swift
func inSavepoint(_ operations: () throws -> TransactionCompletion) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `intransaction(_:_:)`

> Wraps database operations inside a database transaction.

```swift
func inTransaction(_ kind: TransactionKind? = nil, _ operations: () throws -> TransactionCompletion) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `isgrdbinternaltable(_:)`

> Returns whether a table is an internal GRDB table.

```swift
static func isGRDBInternalTable(_ tableName: String) -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `isinsidetransaction`

> A Boolean value indicating whether the database connection is currently   inside a transaction.

```swift
var isInsideTransaction: Bool { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `issqliteinternaltable(_:)`

> Returns whether a table is an internal SQLite table.

```swift
static func isSQLiteInternalTable(_ tableName: String) -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `json(_:)`

> Validates and minifies a JSON string, with the    SQL function.

```swift
static func json(_ value: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `jsonarray(_:)-469db`

> Creates a JSON array with the    SQL function.

```swift
static func jsonArray(_ values: some Collection<any SQLExpressible>) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `jsonarray(_:)-8p2p8`

> Creates a JSON array with the    SQL function.

```swift
static func jsonArray(_ values: some Collection<some SQLExpressible>) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `jsonarraylength(_:)`

> The number of elements in a JSON array, as returned by the     SQL function.

```swift
static func jsonArrayLength(_ value: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `jsonarraylength(_:atpath:)`

> The number of elements in a JSON array, as returned by the     SQL function.

```swift
static func jsonArrayLength(_ value: some SQLExpressible, atPath path: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `jsonextract(_:atpath:)`

> The    SQL function.

```swift
static func jsonExtract(_ value: some SQLExpressible, atPath path: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `jsonextract(_:atpaths:)`

> The    SQL function.

```swift
static func jsonExtract(_ value: some SQLExpressible, atPaths paths: some Collection<some SQLExpressible>) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `jsongrouparray(_:filter:)`

> The    SQL function.

```swift
static func jsonGroupArray(_ value: some SQLExpressible, filter: (any SQLSpecificExpressible)? = nil) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `jsongroupobject(key:value:filter:)`

> The    SQL function.

```swift
static func jsonGroupObject(key: some SQLExpressible, value: some SQLExpressible, filter: (any SQLSpecificExpressible)? = nil) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `jsoninsert(_:_:)`

> The    SQL function.

```swift
static func jsonInsert(_ value: some SQLExpressible, _ assignments: some Collection<(key: String, value: any SQLExpressible)>) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `jsonisvalid(_:)`

> The    SQL function.

```swift
static func jsonIsValid(_ value: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `jsonobject(_:)`

> Creates a JSON object with the    SQL function. Pass   key/value pairs with a Swift collection such as a   .

```swift
static func jsonObject(_ elements: some Collection<(key: String, value: any SQLExpressible)>) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `jsonpatch(_:with:)`

> The    SQL function.

```swift
static func jsonPatch(_ value: some SQLExpressible, with patch: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `jsonquote(_:)`

> Returns a valid JSON string with the    SQL function.

```swift
static func jsonQuote(_ value: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `jsonremove(_:atpath:)`

> The    SQL function.

```swift
static func jsonRemove(_ value: some SQLExpressible, atPath path: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `jsonremove(_:atpaths:)`

> The    SQL function.

```swift
static func jsonRemove(_ value: some SQLExpressible, atPaths paths: some Collection<some SQLExpressible>) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `jsonreplace(_:_:)`

> The    SQL function.

```swift
static func jsonReplace(_ value: some SQLExpressible, _ assignments: some Collection<(key: String, value: any SQLExpressible)>) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `jsonset(_:_:)`

> The    SQL function.

```swift
static func jsonSet(_ value: some SQLExpressible, _ assignments: some Collection<(key: String, value: any SQLExpressible)>) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `jsontype(_:)`

> The    SQL function.

```swift
static func jsonType(_ value: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `jsontype(_:atpath:)`

> The    SQL function.

```swift
static func jsonType(_ value: some SQLExpressible, atPath path: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `lasterrorcode`

> The last error code.

```swift
var lastErrorCode: ResultCode { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `lasterrormessage`

> The last error message.

```swift
var lastErrorMessage: String? { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `lastinsertedrowid`

> The rowID of the most recently inserted row.

```swift
var lastInsertedRowID: Int64 { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `logerror`

> The error logging function.

```swift
nonisolated(unsafe) static var logError: LogErrorFunction? { get set }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `logerrorfunction`

> An error log function that takes an error code and message.

```swift
typealias LogErrorFunction = (_ resultCode: ResultCode, _ message: String) -> Void
```

- **Symbol Kind:** typealias

- **Role Heading:** Type Alias


---

## `makefts5pattern(rawpattern:fortable:)`

> Creates an FTS5 pattern from a raw pattern string.

```swift
func makeFTS5Pattern(rawPattern: String, forTable table: String) throws -> FTS5Pattern
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `makestatement(literal:)`

> Returns a new prepared statement that can be reused.

```swift
func makeStatement(literal sqlLiteral: SQL) throws -> Statement
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `makestatement(sql:)`

> Returns a new prepared statement that can be reused.

```swift
func makeStatement(sql: String) throws -> Statement
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `maketokenizer(_:)`

> Creates an FTS5 tokenizer, given its descriptor.

```swift
func makeTokenizer(_ descriptor: FTS5TokenizerDescriptor) throws -> any FTS5Tokenizer
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `maximumstatementargumentcount`

> The maximum number of arguments accepted by an SQLite statement.

```swift
var maximumStatementArgumentCount: Int { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `notifychanges(in:)`

> Notifies that some changes were performed in the provided   database region.

```swift
func notifyChanges(in region: some DatabaseRegionConvertible) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `primarykey(_:in:)`

> The primary key for table named   .

```swift
func primaryKey(_ tableName: String, in schemaName: String? = nil) throws -> PrimaryKeyInfo
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `readonly(_:)`

> Executes read-only database operations, and returns their result   after they have finished executing.

```swift
func readOnly<T>(_ value: () throws -> T) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `registeraccess(to:)`

> Reports the database region to   .

```swift
func registerAccess(to region: @autoclosure () -> some DatabaseRegionConvertible) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `reindex(collation:)-171fj`

> Deletes and recreates from scratch all indices that use this collation.

```swift
func reindex(collation: Database.CollationName) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `reindex(collation:)-2hxil`

> Deletes and recreates from scratch all indices that use this collation.

```swift
func reindex(collation: DatabaseCollation) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `releasememory()`

> Frees as much memory as possible.

```swift
func releaseMemory()
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `remove(collation:)`

> Removes a collation.

```swift
func remove(collation: DatabaseCollation)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `remove(function:)`

> Removes a custom SQL function.

```swift
func remove(function: DatabaseFunction)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `remove(transactionobserver:)`

> Removes a transaction observer from the database connection.

```swift
func remove(transactionObserver: some TransactionObserver)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `rename(table:to:)`

> Renames a database table.

```swift
func rename(table name: String, to newName: String) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `resumenotification`

> When this notification is posted, databases which were opened with the     configuration flag   are resumed.

```swift
static let resumeNotification: Notification.Name
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `rollback()`

> Rollbacks a database transaction.

```swift
func rollback() throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `schemasource`

> The current schema source.

```swift
var schemaSource: (any DatabaseSchemaSource)? { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `schemaversion()`

> Returns the current schema version (  ).

```swift
func schemaVersion() throws -> Int32
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `sqliteconnection`

> The raw SQLite connection, suitable for the SQLite C API.

```swift
var sqliteConnection: SQLiteConnection? { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `sqlitelibversionnumber`

> An integer equal to   .

```swift
static var sqliteLibVersionNumber: CInt { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `storageclass`

> An SQLite storage class.

```swift
struct StorageClass
```

- **Symbol Kind:** struct

- **Role Heading:** Structure


---

## `suspendnotification`

> When this notification is posted, databases which were opened with the     configuration flag   are suspended.

```swift
static let suspendNotification: Notification.Name
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `table(_:hasuniquekey:)`

> Returns whether a sequence of columns uniquely identifies a row.

```swift
func table(_ tableName: String, hasUniqueKey columns: some Collection<String>) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `tableexists(_:in:)`

> Returns whether a table exists

```swift
func tableExists(_ name: String, in schemaName: String? = nil) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `totalchangescount`

> The total number of rows modified, inserted or deleted by all successful   INSERT, UPDATE or DELETE statements since the database connection was   opened.

```swift
var totalChangesCount: Int { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `trace(options:_:)`

> Registers a tracing function.

```swift
func trace(options: TracingOptions = .statement, _ trace: ((TraceEvent) -> Void)? = nil)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `traceevent`

> A trace event.

```swift
enum TraceEvent
```

- **Symbol Kind:** enum

- **Role Heading:** Enumeration


---

## `tracingoptions`

> An option for the SQLite tracing feature.

```swift
struct TracingOptions
```

- **Symbol Kind:** struct

- **Role Heading:** Structure


---

## `transactioncompletion`

> A transaction commit, or rollback.

```swift
@frozen enum TransactionCompletion
```

- **Symbol Kind:** enum

- **Role Heading:** Enumeration


---

## `transactiondate`

> The date of the current transaction.

```swift
var transactionDate: Date { get throws }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `transactionkind`

> A transaction kind.

```swift
enum TransactionKind
```

- **Symbol Kind:** enum

- **Role Heading:** Enumeration


---

## `transactionobservationextent`

> The extent of the observation performed by a   .

```swift
enum TransactionObservationExtent
```

- **Symbol Kind:** enum

- **Role Heading:** Enumeration


---

## `triggerexists(_:in:)`

> Returns whether a trigger exists, in the main or temp schema, or in an   attached database.

```swift
func triggerExists(_ name: String, in schemaName: String? = nil) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `viewexists(_:in:)`

> Returns whether a view exists, in the main or temp schema, or in an   attached database.

```swift
func viewExists(_ name: String, in schemaName: String? = nil) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `withschemasource(_:execute:)`

> Executes the wrapped statements with the provided schema source.

```swift
func withSchemaSource<T>(_ schemaSource: (any DatabaseSchemaSource)?, execute block: () throws -> T) rethrows -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
