# Index

- `add(transactionobserver:extent:)`
- `asyncbarrierwritewithouttransaction(_:)`
- `asyncconcurrentread(_:)`
- `asyncread(_:)`
- `asyncunsaferead(_:)`
- `asyncwrite(_:completion:)`
- `asyncwritewithouttransaction(_:)`
- `backup(to:pagesperstep:progress:)`
- `barrierwritewithouttransaction(_:)-12iei`
- `barrierwritewithouttransaction(_:)-6eazr`
- `close()`
- `configuration`
- `databasereader-implementations`
- `databasewriter-implementations`
- `dumpcontent(format:to:)`
- `dumprequest(_:format:to:)`
- `dumpschema(to:)`
- `dumpsql(_:format:to:)`
- `dumptables(_:format:tableheader:stableorder:to:)`
- `erase()`
- `init(path:configuration:)`
- `interrupt()`
- `invalidatereadonlyconnections()`
- `makesnapshot()`
- `makesnapshotpool()`
- `path`
- `read(_:)-3nam8`
- `read(_:)-kdnn`
- `readpublisher(receiveon:value:)`
- `releasememory()`
- `releasememoryeventually()`
- `remove(transactionobserver:)`
- `spawnconcurrentread(_:)`
- `unsaferead(_:)-4r5zk`
- `unsaferead(_:)-7m81r`
- `unsafereentrantread(_:)`
- `unsafereentrantwrite(_:)`
- `vacuum()`
- `vacuum(into:)`
- `write(_:)-57di5`
- `write(_:)-89rj6`
- `writeintransaction(_:_:)`
- `writepublisher(receiveon:updates:)`
- `writepublisher(receiveon:updates:thenread:)`
- `writewithouttransaction(_:)-1j4hy`
- `writewithouttransaction(_:)-520yl`

---


## `add(transactionobserver:extent:)`

> Adds a transaction observer to the writer connection, so that it   gets notified of database changes and transactions.

```swift
func add(transactionObserver: some TransactionObserver, extent: Database.TransactionObservationExtent = .observerLifetime)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `asyncbarrierwritewithouttransaction(_:)`

> Schedules database operations for execution, and returns immediately.

```swift
func asyncBarrierWriteWithoutTransaction(_ updates: @escaping (Result<Database, Error>) -> Void)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `asyncconcurrentread(_:)`

> Performs an asynchronous read access.

```swift
func asyncConcurrentRead(_ value: @escaping (Result<Database, Error>) -> Void)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `asyncread(_:)`

> Schedules read-only database operations for execution, and   returns immediately.

```swift
func asyncRead(_ value: @escaping (Result<Database, Error>) -> Void)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `asyncunsaferead(_:)`

> Schedules database operations for execution, and returns immediately.

```swift
func asyncUnsafeRead(_ value: @escaping (Result<Database, Error>) -> Void)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `asyncwrite(_:completion:)`

> Schedules database operations for execution, and returns immediately.

```swift
func asyncWrite<T>(_ updates: @escaping (Database) throws -> T, completion: @escaping (Database, Result<T, Error>) -> Void)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `asyncwritewithouttransaction(_:)`

> Schedules database operations for execution, and returns immediately.

```swift
func asyncWriteWithoutTransaction(_ updates: @escaping (Database) -> Void)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `backup(to:pagesperstep:progress:)`

> Copies the database contents into another database.

```swift
func backup(to writer: any DatabaseWriter, pagesPerStep: CInt = -1, progress: ((DatabaseBackupProgress) throws -> Void)? = nil) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `barrierwritewithouttransaction(_:)-12iei`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func barrierWriteWithoutTransaction<T>(_ updates: (Database) throws -> T) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `barrierwritewithouttransaction(_:)-6eazr`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func barrierWriteWithoutTransaction<T>(_ updates: (Database) throws -> T) async throws -> T where T : Sendable
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `close()`

> Closes the database connection.

```swift
func close() throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `configuration`

> The database configuration.

```swift
var configuration: Configuration { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `databasereader-implementations`

- **Role Heading:** API Collection


---

## `databasewriter-implementations`

- **Role Heading:** API Collection


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

## `erase()`

> Erase the database: delete all content, drop all tables, etc.

```swift
func erase() throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `init(path:configuration:)`

> Opens or creates an SQLite database.

```swift
init(path: String, configuration: Configuration = Configuration()) throws
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `interrupt()`

> Causes any pending database operation to abort and return at its   earliest opportunity.

```swift
func interrupt()
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `invalidatereadonlyconnections()`

> Invalidates open read-only SQLite connections.

```swift
func invalidateReadOnlyConnections()
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `makesnapshot()`

> Creates a database snapshot that serializes accesses to an unchanging   database content, as it exists at the moment the snapshot is created.

```swift
func makeSnapshot() throws -> DatabaseSnapshot
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `makesnapshotpool()`

> Creates a database snapshot that allows concurrent accesses to an   unchanging database content, as it exists at the moment the snapshot   is created.

```swift
func makeSnapshotPool() throws -> DatabaseSnapshotPool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `path`

> The path to the database.

```swift
var path: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `read(_:)-3nam8`

> Executes read-only database operations, and returns their result after   they have finished executing.

```swift
func read<T>(_ value: (Database) throws -> T) async throws -> T where T : Sendable
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `read(_:)-kdnn`

> Executes read-only database operations, and returns their result after   they have finished executing.

```swift
func read<T>(_ value: (Database) throws -> T) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `readpublisher(receiveon:value:)`

> Returns a publisher that publishes one value and completes.

```swift
func readPublisher<Output>(receiveOn scheduler: some Combine.Scheduler = DispatchQueue.main, value: @escaping (Database) throws -> Output) -> DatabasePublishers.Read<Output>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `releasememory()`

> Frees as much memory as possible, by disposing non-essential memory.

```swift
func releaseMemory()
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `releasememoryeventually()`

> Eventually frees as much memory as possible, by disposing   non-essential memory.

```swift
func releaseMemoryEventually()
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `remove(transactionobserver:)`

> Removes a transaction observer from the writer connection.

```swift
func remove(transactionObserver: some TransactionObserver)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `spawnconcurrentread(_:)`

> Schedules read-only database operations for execution.

```swift
func spawnConcurrentRead(_ value: @escaping (Result<Database, Error>) -> Void)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `unsaferead(_:)-4r5zk`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func unsafeRead<T>(_ value: (Database) throws -> T) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `unsaferead(_:)-7m81r`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func unsafeRead<T>(_ value: (Database) throws -> T) async throws -> T where T : Sendable
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `unsafereentrantread(_:)`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func unsafeReentrantRead<T>(_ value: (Database) throws -> T) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `unsafereentrantwrite(_:)`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func unsafeReentrantWrite<T>(_ updates: (Database) throws -> T) rethrows -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `vacuum()`

> Rebuilds the database file, repacking it into a minimal amount of   disk space.

```swift
func vacuum() throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `vacuum(into:)`

> Creates a new database file at the specified path with a minimum   amount of disk space.

```swift
func vacuum(into filePath: String) async throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `write(_:)-57di5`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func write<T>(_ updates: (Database) throws -> T) async throws -> T where T : Sendable
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `write(_:)-89rj6`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func write<T>(_ updates: (Database) throws -> T) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `writeintransaction(_:_:)`

> Wraps database operations inside a database transaction.

```swift
func writeInTransaction(_ kind: Database.TransactionKind? = nil, _ updates: (Database) throws -> Database.TransactionCompletion) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `writepublisher(receiveon:updates:)`

> Returns a publisher that publishes one value and completes.

```swift
func writePublisher<Output>(receiveOn scheduler: some Combine.Scheduler = DispatchQueue.main, updates: @escaping (Database) throws -> Output) -> DatabasePublishers.Write<Output>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `writepublisher(receiveon:updates:thenread:)`

> Returns a publisher that publishes one value and completes.

```swift
func writePublisher<T, Output>(receiveOn scheduler: some Combine.Scheduler = DispatchQueue.main, updates: @escaping (Database) throws -> T, thenRead value: @escaping (Database, T) throws -> Output) -> DatabasePublishers.Write<Output> where T : Sendable
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `writewithouttransaction(_:)-1j4hy`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func writeWithoutTransaction<T>(_ updates: (Database) throws -> T) rethrows -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `writewithouttransaction(_:)-520yl`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func writeWithoutTransaction<T>(_ updates: (Database) throws -> T) async throws -> T where T : Sendable
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
