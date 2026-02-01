# Index

- `appliedidentifiers(_:)`
- `appliedmigrations(_:)`
- `asyncmigrate(_:completion:)`
- `completedmigrations(_:)`
- `disablingdeferredforeignkeychecks()`
- `erasedatabaseonschemachange`
- `foreignkeychecks`
- `hasbeensuperseded(_:)`
- `hascompletedmigrations(_:)`
- `hasschemachanges(_:)`
- `init()`
- `migrate(_:)`
- `migrate(_:upto:)`
- `migratepublisher(_:receiveon:)`
- `migrations`
- `registermigration(_:foreignkeychecks:merging:migrate:)`
- `registermigration(_:foreignkeychecks:migrate:)`

---


## `appliedidentifiers(_:)`

> Returns the applied migration identifiers, even unregistered ones.

```swift
func appliedIdentifiers(_ db: Database) throws -> Set<String>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appliedmigrations(_:)`

> Returns the identifiers of registered and applied migrations, in the   order of registration.

```swift
func appliedMigrations(_ db: Database) throws -> [String]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `asyncmigrate(_:completion:)`

> Schedules unapplied migrations for execution, and returns immediately.

```swift
func asyncMigrate(_ writer: any DatabaseWriter, completion: @escaping (Result<Database, Error>) -> Void)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `completedmigrations(_:)`

> Returns the identifiers of registered and completed migrations, in the   order of registration.

```swift
func completedMigrations(_ db: Database) throws -> [String]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `disablingdeferredforeignkeychecks()`

> Returns a migrator that disables foreign key checks in all newly   registered migrations.

```swift
func disablingDeferredForeignKeyChecks() -> DatabaseMigrator
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `erasedatabaseonschemachange`

> A boolean value indicating whether the migrator recreates the whole   database from scratch if it detects a change in the definition   of migrations.

```swift
var eraseDatabaseOnSchemaChange: Bool
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `foreignkeychecks`

> Controls how a migration handle foreign keys constraints.

```swift
enum ForeignKeyChecks
```

- **Symbol Kind:** enum

- **Role Heading:** Enumeration


---

## `hasbeensuperseded(_:)`

> A boolean value indicating whether the database refers to   unregistered migrations.

```swift
func hasBeenSuperseded(_ db: Database) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `hascompletedmigrations(_:)`

> A boolean value indicating whether all registered migrations, and only   registered migrations, have been applied.

```swift
func hasCompletedMigrations(_ db: Database) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `hasschemachanges(_:)`

> Returns a boolean value indicating whether the migrator detects a   change in the definition of migrations.

```swift
func hasSchemaChanges(_ db: Database) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `init()`

> A new migrator.

```swift
init()
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `migrate(_:)`

> Runs all unapplied migrations, in the same order as they   were registered.

```swift
func migrate(_ writer: any DatabaseWriter) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `migrate(_:upto:)`

> Runs all unapplied migrations, in the same order as they   were registered, up to the target migration identifier (included).

```swift
func migrate(_ writer: any DatabaseWriter, upTo targetIdentifier: String) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `migratepublisher(_:receiveon:)`

> Returns a Publisher that asynchronously migrates a database.

```swift
func migratePublisher(_ writer: any DatabaseWriter, receiveOn scheduler: some Combine.Scheduler = DispatchQueue.main) -> DatabasePublishers.Migrate
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `migrations`

> The list of registered migration identifiers, in the same order as they   have been registered.

```swift
var migrations: [String] { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `registermigration(_:foreignkeychecks:merging:migrate:)`

> Registers a merged migration.

```swift
mutating func registerMigration(_ identifier: String, foreignKeyChecks: ForeignKeyChecks = .deferred, merging mergedIdentifiers: Set<String> = [], migrate: @escaping (_ db: Database, _ appliedIdentifiers: Set<String>) throws -> Void)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `registermigration(_:foreignkeychecks:migrate:)`

> Registers a migration.

```swift
mutating func registerMigration(_ identifier: String, foreignKeyChecks: ForeignKeyChecks = .deferred, migrate: @escaping (Database) throws -> Void)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
