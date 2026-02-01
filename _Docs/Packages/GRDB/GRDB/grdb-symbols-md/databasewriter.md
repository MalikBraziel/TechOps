# Index

- `add(transactionobserver:extent:)`
- `asyncbarrierwritewithouttransaction(_:)`
- `asyncwrite(_:completion:)`
- `asyncwritewithouttransaction(_:)`
- `barrierwritewithouttransaction(_:)-11q6c`
- `barrierwritewithouttransaction(_:)-280j1`
- `erase()-7jv3d`
- `erase()-w5n7`
- `remove(transactionobserver:)`
- `spawnconcurrentread(_:)`
- `unsafereentrantwrite(_:)`
- `vacuum()-310uw`
- `vacuum()-9inj0`
- `vacuum(into:)-5lo41`
- `vacuum(into:)-9c5mb`
- `write(_:)-4gnqx`
- `write(_:)-76inz`
- `writepublisher(receiveon:updates:)`
- `writepublisher(receiveon:updates:thenread:)`
- `writewithouttransaction(_:)-18zhj`
- `writewithouttransaction(_:)-4qh1w`

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

## `barrierwritewithouttransaction(_:)-11q6c`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func barrierWriteWithoutTransaction<T>(_ updates: (Database) throws -> T) async throws -> T where T : Sendable
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `barrierwritewithouttransaction(_:)-280j1`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func barrierWriteWithoutTransaction<T>(_ updates: (Database) throws -> T) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `erase()-7jv3d`

> Erase the database: delete all content, drop all tables, etc.

```swift
func erase() async throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `erase()-w5n7`

> Erase the database: delete all content, drop all tables, etc.

```swift
func erase() throws
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

## `unsafereentrantwrite(_:)`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func unsafeReentrantWrite<T>(_ updates: (Database) throws -> T) rethrows -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `vacuum()-310uw`

> Rebuilds the database file, repacking it into a minimal amount of   disk space.

```swift
func vacuum() throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `vacuum()-9inj0`

> Rebuilds the database file, repacking it into a minimal amount of   disk space.

```swift
func vacuum() async throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `vacuum(into:)-5lo41`

> Creates a new database file at the specified path with a minimum   amount of disk space.

```swift
func vacuum(into filePath: String) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `vacuum(into:)-9c5mb`

> Creates a new database file at the specified path with a minimum   amount of disk space.

```swift
func vacuum(into filePath: String) async throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `write(_:)-4gnqx`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func write<T>(_ updates: (Database) throws -> T) async throws -> T where T : Sendable
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `write(_:)-76inz`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func write<T>(_ updates: (Database) throws -> T) throws -> T
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

## `writewithouttransaction(_:)-18zhj`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func writeWithoutTransaction<T>(_ updates: (Database) throws -> T) async throws -> T where T : Sendable
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `writewithouttransaction(_:)-4qh1w`

> Executes database operations, and returns their result after they have   finished executing.

```swift
func writeWithoutTransaction<T>(_ updates: (Database) throws -> T) rethrows -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
