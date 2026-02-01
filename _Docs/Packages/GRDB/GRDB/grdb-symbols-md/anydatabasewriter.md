# Index

- `add(transactionobserver:extent:)`
- `asyncbarrierwritewithouttransaction(_:)`
- `asyncread(_:)`
- `asyncunsaferead(_:)`
- `asyncwrite(_:completion:)`
- `asyncwritewithouttransaction(_:)`
- `backup(to:pagesperstep:progress:)`
- `barrierwritewithouttransaction(_:)-267d`
- `barrierwritewithouttransaction(_:)-8sxth`
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
- `init(_:)`
- `interrupt()`
- `path`
- `read(_:)-3gi88`
- `read(_:)-3rix4`
- `readpublisher(receiveon:value:)`
- `remove(transactionobserver:)`
- `spawnconcurrentread(_:)`
- `unsaferead(_:)-164rv`
- `unsaferead(_:)-26n4t`
- `unsafereentrantread(_:)`
- `unsafereentrantwrite(_:)`
- `vacuum()`
- `vacuum(into:)`
- `write(_:)-8hbqt`
- `write(_:)-zr1s`
- `writepublisher(receiveon:updates:)`
- `writepublisher(receiveon:updates:thenread:)`
- `writewithouttransaction(_:)-49aiv`
- `writewithouttransaction(_:)-8y15g`

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

## `barrierwritewithouttransaction(_:)-267d`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func barrierWriteWithoutTransaction<T>(_ updates: (Database) throws -> T) async throws -> T where T : Sendable
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `barrierwritewithouttransaction(_:)-8sxth`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func barrierWriteWithoutTransaction<T>(_ updates: (Database) throws -> T) throws -> T
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

## `init(_:)`

> Creates a new database reader that wraps and forwards operations   to   .

```swift
init(_ base: any DatabaseWriter)
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

## `path`

> The path to the database file.

```swift
var path: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `read(_:)-3gi88`

> Executes read-only database operations, and returns their result after   they have finished executing.

```swift
func read<T>(_ value: (Database) throws -> T) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `read(_:)-3rix4`

> Executes read-only database operations, and returns their result after   they have finished executing.

```swift
func read<T>(_ value: (Database) throws -> T) async throws -> T where T : Sendable
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

## `unsaferead(_:)-164rv`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func unsafeRead<T>(_ value: (Database) throws -> T) async throws -> T where T : Sendable
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `unsaferead(_:)-26n4t`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func unsafeRead<T>(_ value: (Database) throws -> T) throws -> T
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

## `write(_:)-8hbqt`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func write<T>(_ updates: (Database) throws -> T) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `write(_:)-zr1s`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func write<T>(_ updates: (Database) throws -> T) async throws -> T where T : Sendable
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

## `writewithouttransaction(_:)-49aiv`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func writeWithoutTransaction<T>(_ updates: (Database) throws -> T) rethrows -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `writewithouttransaction(_:)-8y15g`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func writeWithoutTransaction<T>(_ updates: (Database) throws -> T) async throws -> T where T : Sendable
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
