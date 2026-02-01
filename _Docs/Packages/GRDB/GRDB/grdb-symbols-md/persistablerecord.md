# Index

- `didinsert(_:)-779l6`
- `didinsert(_:)`
- `insert(_:onconflict:)`
- `insertandfetch(_:onconflict:as:)`
- `insertandfetch(_:onconflict:fetch:select:)`
- `insertandfetch(_:onconflict:selection:fetch:)`
- `save(_:onconflict:)`
- `saveandfetch(_:onconflict:as:)`
- `saveandfetch(_:onconflict:selection:fetch:)`
- `upsert(_:)`
- `upsertandfetch(_:as:onconflict:doupdate:)`
- `upsertandfetch(_:onconflict:doupdate:)`
- `willinsert(_:)-1krrv`
- `willinsert(_:)`

---


## `didinsert(_:)-779l6`

```swift
func didInsert(_ inserted: InsertionSuccess)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `didinsert(_:)`

> Persistence callback called upon successful insertion.

```swift
func didInsert(_ inserted: InsertionSuccess)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `insert(_:onconflict:)`

> Executes an    statement.

```swift
func insert(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `insertandfetch(_:onconflict:as:)`

> Executes an    statement, and returns a new record built   from the inserted row.

```swift
func insertAndFetch<T>(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, as returnedType: T.Type) throws -> T where T : FetchableRecord, T : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `insertandfetch(_:onconflict:fetch:select:)`

> Executes an    statement, and returns the selected   columns from the inserted row.

```swift
func insertAndFetch<T>(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, fetch: (Statement) throws -> T, select: (DatabaseComponents) throws -> [any SQLSelectable]) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `insertandfetch(_:onconflict:selection:fetch:)`

> Executes an    statement, and returns the selected   columns from the inserted row.

```swift
func insertAndFetch<T>(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, selection: [any SQLSelectable], fetch: (Statement) throws -> T) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `save(_:onconflict:)`

> Executes an    or    statement.

```swift
func save(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `saveandfetch(_:onconflict:as:)`

> Executes an    or    statement, and   returns a new record built from the saved row.

```swift
func saveAndFetch<T>(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, as returnedType: T.Type) throws -> T where T : FetchableRecord, T : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `saveandfetch(_:onconflict:selection:fetch:)`

> Executes an    or    statement, and   returns the selected columns from the saved row.

```swift
func saveAndFetch<T>(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, selection: [any SQLSelectable], fetch: (Statement) throws -> T) throws -> T
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `upsert(_:)`

> Executes an    statement.

```swift
func upsert(_ db: Database) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `upsertandfetch(_:as:onconflict:doupdate:)`

> Executes an    statement, and   returns the upserted record.

```swift
func upsertAndFetch<T>(_ db: Database, as returnedType: T.Type, onConflict conflictTarget: [String] = [], doUpdate assignments: ((_ excluded: TableAlias<Self>) -> [ColumnAssignment])? = nil) throws -> T where T : FetchableRecord, T : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `upsertandfetch(_:onconflict:doupdate:)`

> Executes an    statement, and   returns the upserted record.

```swift
func upsertAndFetch(_ db: Database, onConflict conflictTarget: [String] = [], doUpdate assignments: ((_ excluded: TableAlias<Self>) -> [ColumnAssignment])? = nil) throws -> Self where Self : FetchableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `willinsert(_:)-1krrv`

```swift
func willInsert(_ db: Database) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `willinsert(_:)`

> Persistence callback called before the record is inserted.

```swift
func willInsert(_ db: Database) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
