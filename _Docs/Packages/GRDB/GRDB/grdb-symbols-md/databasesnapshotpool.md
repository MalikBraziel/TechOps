# Index

- `asyncread(_:)`
- `asyncunsaferead(_:)`
- `backup(to:pagesperstep:progress:)`
- `close()`
- `configuration`
- `databasereader-implementations`
- `databasesnapshotreader-implementations`
- `dumpcontent(format:to:)`
- `dumprequest(_:format:to:)`
- `dumpschema(to:)`
- `dumpsql(_:format:to:)`
- `dumptables(_:format:tableheader:stableorder:to:)`
- `init(_:configuration:)`
- `init(path:configuration:)`
- `interrupt()`
- `path`
- `read(_:)-3bn55`
- `read(_:)-5ngg5`
- `readpublisher(receiveon:value:)`
- `reentrantread(_:)`
- `unsaferead(_:)-1joag`
- `unsaferead(_:)`
- `unsafereentrantread(_:)`

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

## `backup(to:pagesperstep:progress:)`

> Copies the database contents into another database.

```swift
func backup(to writer: any DatabaseWriter, pagesPerStep: CInt = -1, progress: ((DatabaseBackupProgress) throws -> Void)? = nil) throws
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
let configuration: Configuration
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `databasereader-implementations`

- **Role Heading:** API Collection


---

## `databasesnapshotreader-implementations`

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

## `init(_:configuration:)`

> Creates a snapshot of the database.

```swift
init(_ db: Database, configuration: Configuration? = nil) throws
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(path:configuration:)`

> Creates a snapshot of the database.

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

## `path`

> The path to the database file.

```swift
let path: String
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `read(_:)-3bn55`

> Executes read-only database operations, and returns their result after   they have finished executing.

```swift
func read<T>(_ value: (Database) throws -> T) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `read(_:)-5ngg5`

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

## `reentrantread(_:)`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func reentrantRead<T>(_ value: (Database) throws -> T) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `unsaferead(_:)-1joag`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func unsafeRead<T>(_ value: (Database) throws -> T) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `unsaferead(_:)`

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
