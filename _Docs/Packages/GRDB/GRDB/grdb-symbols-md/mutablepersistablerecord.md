# Index

- `arounddelete(_:delete:)-1mmtr`
- `arounddelete(_:delete:)`
- `aroundinsert(_:insert:)-3qmds`
- `aroundinsert(_:insert:)`
- `aroundsave(_:save:)-7w6j3`
- `aroundsave(_:save:)`
- `aroundupdate(_:columns:update:)-1edzl`
- `aroundupdate(_:columns:update:)`
- `delete(_:)`
- `diddelete(deleted:)-7cykm`
- `diddelete(deleted:)`
- `didinsert(_:)-4xims`
- `didinsert(_:)`
- `didsave(_:)-1pcf5`
- `didsave(_:)`
- `didupdate(_:)-8cnrn`
- `didupdate(_:)`
- `exists(_:)`
- `insert(_:onconflict:)`
- `insertandfetch(_:onconflict:)`
- `insertandfetch(_:onconflict:as:)`
- `insertandfetch(_:onconflict:fetch:select:)`
- `insertandfetch(_:onconflict:selection:fetch:)`
- `inserted(_:onconflict:)`
- `persistenceconflictpolicy-5dlm8`
- `persistenceconflictpolicy`
- `save(_:onconflict:)`
- `saveandfetch(_:onconflict:)`
- `saveandfetch(_:onconflict:as:)`
- `saveandfetch(_:onconflict:selection:fetch:)`
- `saved(_:onconflict:)`
- `update(_:onconflict:)`
- `update(_:onconflict:columns:)-5qfk`
- `update(_:onconflict:columns:)-9fip4`
- `updateandfetch(_:onconflict:)`
- `updateandfetch(_:onconflict:as:)`
- `updateandfetch(_:onconflict:columns:selection:fetch:)-98dtr`
- `updateandfetch(_:onconflict:columns:selection:fetch:)-9npht`
- `updateandfetch(_:onconflict:selection:fetch:)`
- `updatechanges(_:onconflict:from:)`
- `updatechanges(_:onconflict:modify:)`
- `updatechangesandfetch(_:onconflict:as:modify:)`
- `updatechangesandfetch(_:onconflict:modify:)`
- `updatechangesandfetch(_:onconflict:selection:fetch:modify:)`
- `upsert(_:)`
- `upsertandfetch(_:as:onconflict:doupdate:)`
- `upsertandfetch(_:onconflict:doupdate:)`
- `willdelete(_:)-2nq4q`
- `willdelete(_:)`
- `willinsert(_:)-5qw8w`
- `willinsert(_:)`
- `willsave(_:)-621bq`
- `willsave(_:)`
- `willupdate(_:columns:)-hrqj`
- `willupdate(_:columns:)`

---


## `arounddelete(_:delete:)-1mmtr`

> Persistence callback called around the destruction of the record.

```swift
func aroundDelete(_ db: Database, delete: () throws -> Bool) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `arounddelete(_:delete:)`

> Persistence callback called around the destruction of the record.

```swift
func aroundDelete(_ db: Database, delete: () throws -> Bool) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `aroundinsert(_:insert:)-3qmds`

> Persistence callback called around the record insertion.

```swift
func aroundInsert(_ db: Database, insert: () throws -> InsertionSuccess) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `aroundinsert(_:insert:)`

> Persistence callback called around the record insertion.

```swift
func aroundInsert(_ db: Database, insert: () throws -> InsertionSuccess) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `aroundsave(_:save:)-7w6j3`

> Persistence callback called around the record update or insertion.

```swift
func aroundSave(_ db: Database, save: () throws -> PersistenceSuccess) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `aroundsave(_:save:)`

> Persistence callback called around the record update or insertion.

```swift
func aroundSave(_ db: Database, save: () throws -> PersistenceSuccess) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `aroundupdate(_:columns:update:)-1edzl`

> Persistence callback called around the record update.

```swift
func aroundUpdate(_ db: Database, columns: Set<String>, update: () throws -> PersistenceSuccess) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `aroundupdate(_:columns:update:)`

> Persistence callback called around the record update.

```swift
func aroundUpdate(_ db: Database, columns: Set<String>, update: () throws -> PersistenceSuccess) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `delete(_:)`

> Executes a DELETE statement.

```swift
@discardableResult func delete(_ db: Database) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `diddelete(deleted:)-7cykm`

> Persistence callback called upon successful deletion.

```swift
func didDelete(deleted: Bool)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `diddelete(deleted:)`

> Persistence callback called upon successful deletion.

```swift
func didDelete(deleted: Bool)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `didinsert(_:)-4xims`

> Persistence callback called upon successful insertion.

```swift
mutating func didInsert(_ inserted: InsertionSuccess)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `didinsert(_:)`

> Persistence callback called upon successful insertion.

```swift
mutating func didInsert(_ inserted: InsertionSuccess)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `didsave(_:)-1pcf5`

> Persistence callback called upon successful update or insertion.

```swift
func didSave(_ saved: PersistenceSuccess)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `didsave(_:)`

> Persistence callback called upon successful update or insertion.

```swift
func didSave(_ saved: PersistenceSuccess)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `didupdate(_:)-8cnrn`

> Persistence callback called upon successful update.

```swift
func didUpdate(_ updated: PersistenceSuccess)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `didupdate(_:)`

> Persistence callback called upon successful update.

```swift
func didUpdate(_ updated: PersistenceSuccess)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `exists(_:)`

> Returns whether the primary key of the record matches a row in   the database.

```swift
func exists(_ db: Database) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `insert(_:onconflict:)`

> Executes an    statement.

```swift
mutating func insert(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `insertandfetch(_:onconflict:)`

> Executes an    statement, and returns a new record built   from the inserted row.

```swift
func insertAndFetch(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil) throws -> Self where Self : FetchableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `insertandfetch(_:onconflict:as:)`

> Executes an    statement, and returns a new record built   from the inserted row.

```swift
mutating func insertAndFetch<T>(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, as returnedType: T.Type) throws -> T where T : FetchableRecord, T : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `insertandfetch(_:onconflict:fetch:select:)`

> Executes an    statement, and returns the selected   columns from the inserted row.

```swift
mutating func insertAndFetch<T>(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, fetch: (Statement) throws -> T, select: (DatabaseComponents) throws -> [any SQLSelectable]) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `insertandfetch(_:onconflict:selection:fetch:)`

> Executes an    statement, and returns the selected   columns from the inserted row.

```swift
mutating func insertAndFetch<T>(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, selection: [any SQLSelectable], fetch: (Statement) throws -> T) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `inserted(_:onconflict:)`

> Executes an    statement, and returns the inserted record.

```swift
func inserted(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil) throws -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `persistenceconflictpolicy-5dlm8`

> The policy that handles SQLite conflicts when records are inserted   or updated.

```swift
static var persistenceConflictPolicy: PersistenceConflictPolicy { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `persistenceconflictpolicy`

> The policy that handles SQLite conflicts when records are inserted   or updated.

```swift
static var persistenceConflictPolicy: PersistenceConflictPolicy { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `save(_:onconflict:)`

> Executes an    or    statement.

```swift
mutating func save(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `saveandfetch(_:onconflict:)`

> Executes an    or    statement, and   returns a new record built from the saved row.

```swift
func saveAndFetch(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil) throws -> Self where Self : FetchableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `saveandfetch(_:onconflict:as:)`

> Executes an    or    statement, and   returns a new record built from the saved row.

```swift
mutating func saveAndFetch<T>(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, as returnedType: T.Type) throws -> T where T : FetchableRecord, T : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `saveandfetch(_:onconflict:selection:fetch:)`

> Executes an    or    statement, and   returns the selected columns from the saved row.

```swift
mutating func saveAndFetch<T>(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, selection: [any SQLSelectable], fetch: (Statement) throws -> T) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `saved(_:onconflict:)`

> Executes an    or    statement, and returns the   saved record.

```swift
func saved(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil) throws -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `update(_:onconflict:)`

> Executes an    statement on all columns.

```swift
func update(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `update(_:onconflict:columns:)-5qfk`

> Executes an    statement on the provided columns.

```swift
func update(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, columns: some Collection<String>) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `update(_:onconflict:columns:)-9fip4`

> Executes an    statement on the provided columns.

```swift
func update(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, columns: some Collection<some ColumnExpression>) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `updateandfetch(_:onconflict:)`

> Executes an    statement on all columns, and returns a   new record built from the updated row.

```swift
func updateAndFetch(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil) throws -> Self where Self : FetchableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `updateandfetch(_:onconflict:as:)`

> Executes an    statement on all columns, and returns a   new record built from the updated row.

```swift
func updateAndFetch<T>(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, as returnedType: T.Type) throws -> T where T : FetchableRecord, T : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `updateandfetch(_:onconflict:columns:selection:fetch:)-98dtr`

> Executes an    statement on the provided columns, and   returns the selected columns from the updated row.

```swift
func updateAndFetch<T>(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, columns: some Collection<String>, selection: [any SQLSelectable], fetch: (Statement) throws -> T) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `updateandfetch(_:onconflict:columns:selection:fetch:)-9npht`

> Executes an    statement on the provided columns, and   returns the selected columns from the updated row.

```swift
func updateAndFetch<T>(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, columns: some Collection<some ColumnExpression>, selection: [any SQLSelectable], fetch: (Statement) throws -> T) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `updateandfetch(_:onconflict:selection:fetch:)`

> Executes an    statement on all columns, and returns the   selected columns from the updated row.

```swift
func updateAndFetch<T>(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, selection: [any SQLSelectable], fetch: (Statement) throws -> T) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `updatechanges(_:onconflict:from:)`

> If the record has any difference from the other record, executes an     statement so that those differences and only those differences   are updated in the database.

```swift
@discardableResult func updateChanges<Record>(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, from record: Record) throws -> Bool where Record : MutablePersistableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `updatechanges(_:onconflict:modify:)`

> Modifies the record according to the provided    closure, and   executes an    statement that updates the modified columns, if and   only if the record was modified.

```swift
@discardableResult mutating func updateChanges(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, modify: (inout Self) throws -> Void) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `updatechangesandfetch(_:onconflict:as:modify:)`

> Modifies the record according to the provided    closure, and   executes an    statement that updates the modified   columns, if and only if the record was modified. The method returns a   new record built from the updated row.

```swift
mutating func updateChangesAndFetch<T>(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, as returnedType: T.Type, modify: (inout Self) throws -> Void) throws -> T? where T : FetchableRecord, T : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `updatechangesandfetch(_:onconflict:modify:)`

> Modifies the record according to the provided    closure, and   executes an    statement that updates the modified   columns, if and only if the record was modified. The method returns a   new record built from the updated row.

```swift
mutating func updateChangesAndFetch(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, modify: (inout Self) throws -> Void) throws -> Self? where Self : FetchableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `updatechangesandfetch(_:onconflict:selection:fetch:modify:)`

> Modifies the record according to the provided    closure, and   executes an    statement that updates the modified   columns, if and only if the record was modified. The method returns a   new record built from the updated row.

```swift
mutating func updateChangesAndFetch<T>(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, selection: [any SQLSelectable], fetch: (Statement) throws -> T, modify: (inout Self) throws -> Void) throws -> T?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `upsert(_:)`

> Executes an    statement.

```swift
mutating func upsert(_ db: Database) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `upsertandfetch(_:as:onconflict:doupdate:)`

> Executes an    statement, and   returns the upserted record.

```swift
mutating func upsertAndFetch<T>(_ db: Database, as returnedType: T.Type, onConflict conflictTarget: [String] = [], doUpdate assignments: ((_ excluded: TableAlias<Self>) -> [ColumnAssignment])? = nil) throws -> T where T : FetchableRecord, T : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `upsertandfetch(_:onconflict:doupdate:)`

> Executes an    statement, and   returns the upserted record.

```swift
mutating func upsertAndFetch(_ db: Database, onConflict conflictTarget: [String] = [], doUpdate assignments: ((_ excluded: TableAlias<Self>) -> [ColumnAssignment])? = nil) throws -> Self where Self : FetchableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `willdelete(_:)-2nq4q`

> Persistence callback called before the record is deleted.

```swift
func willDelete(_ db: Database) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `willdelete(_:)`

> Persistence callback called before the record is deleted.

```swift
func willDelete(_ db: Database) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `willinsert(_:)-5qw8w`

> Persistence callback called before the record is inserted.

```swift
mutating func willInsert(_ db: Database) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `willinsert(_:)`

> Persistence callback called before the record is inserted.

```swift
mutating func willInsert(_ db: Database) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `willsave(_:)-621bq`

> Persistence callback called before the record is updated or inserted.

```swift
func willSave(_ db: Database) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `willsave(_:)`

> Persistence callback called before the record is updated or inserted.

```swift
func willSave(_ db: Database) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `willupdate(_:columns:)-hrqj`

> Persistence callback called before the record is updated.

```swift
func willUpdate(_ db: Database, columns: Set<String>) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `willupdate(_:columns:)`

> Persistence callback called before the record is updated.

```swift
func willUpdate(_ db: Database, columns: Set<String>) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
