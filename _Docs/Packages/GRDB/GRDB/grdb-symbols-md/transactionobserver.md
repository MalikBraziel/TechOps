# Index

- `databasedidchange()-6shvu`
- `databasedidchange()`
- `databasedidchange(with:)`
- `databasedidcommit(_:)`
- `databasedidrollback(_:)`
- `databasewillcommit()-6qfsx`
- `databasewillcommit()`
- `observes(eventsofkind:)`
- `stopobservingdatabasechangesuntilnexttransaction()`

---


## `databasedidchange()-6shvu`

> The default implementation does nothing.

```swift
func databaseDidChange()
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `databasedidchange()`

> Called when the database was modified in some unspecified way.

```swift
func databaseDidChange()
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `databasedidchange(with:)`

> Called when the database is changed by an insert, update, or   delete event.

```swift
func databaseDidChange(with event: DatabaseEvent)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `databasedidcommit(_:)`

> Called when a transaction has been committed on disk.

```swift
func databaseDidCommit(_ db: Database)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `databasedidrollback(_:)`

> Called when a transaction has been rollbacked.

```swift
func databaseDidRollback(_ db: Database)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `databasewillcommit()-6qfsx`

> The default implementation does nothing.

```swift
func databaseWillCommit() throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `databasewillcommit()`

> Called when a transaction is about to be committed.

```swift
func databaseWillCommit() throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `observes(eventsofkind:)`

> Returns whether specific kinds of database changes should be notified   to the observer.

```swift
func observes(eventsOfKind eventKind: DatabaseEventKind) -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `stopobservingdatabasechangesuntilnexttransaction()`

> Prevents the observer from receiving further change notifications   until the next transaction.

```swift
func stopObservingDatabaseChangesUntilNextTransaction()
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
