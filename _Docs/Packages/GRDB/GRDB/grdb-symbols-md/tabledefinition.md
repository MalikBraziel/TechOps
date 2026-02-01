# Index

- `autoincrementedprimarykey(_:onconflict:)`
- `belongsto(_:intable:ondelete:onupdate:deferred:indexed:)`
- `check(_:)-6u1za`
- `check(_:)-jpcg`
- `check(sql:)`
- `column(_:_:)`
- `column(literal:)`
- `column(sql:)`
- `constraint(literal:)`
- `constraint(sql:)`
- `foreignkey(_:references:columns:ondelete:onupdate:deferred:)`
- `primarykey(_:_:onconflict:)`
- `primarykey(_:onconflict:)`
- `primarykey(onconflict:body:)`
- `uniquekey(_:onconflict:)`

---


## `autoincrementedprimarykey(_:onconflict:)`

> Appends an auto-incremented primary key column.

```swift
@discardableResult func autoIncrementedPrimaryKey(_ name: String, onConflict conflictResolution: Database.ConflictResolution? = nil) -> ColumnDefinition
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `belongsto(_:intable:ondelete:onupdate:deferred:indexed:)`

> Declares an association to another table.

```swift
@discardableResult func belongsTo(_ name: String, inTable table: String? = nil, onDelete deleteAction: Database.ForeignKeyAction? = nil, onUpdate updateAction: Database.ForeignKeyAction? = nil, deferred isDeferred: Bool = false, indexed: Bool = true) -> ForeignKeyDefinition
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `check(_:)-6u1za`

> Adds a check constraint.

```swift
func check(_ condition: some SQLSpecificExpressible)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `check(_:)-jpcg`

> Adds a check constraint.

```swift
func check(_ condition: some SQLExpressible)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `check(sql:)`

> Adds a check constraint.

```swift
func check(sql: String)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `column(_:_:)`

> Appends a table column.

```swift
@discardableResult func column(_ name: String, _ type: Database.ColumnType? = nil) -> ColumnDefinition
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `column(literal:)`

> Appends a table column.

```swift
func column(literal: SQL)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `column(sql:)`

> Appends a table column.

```swift
func column(sql: String)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `constraint(literal:)`

> Appends a table constraint.

```swift
func constraint(literal: SQL)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `constraint(sql:)`

> Appends a table constraint.

```swift
func constraint(sql: String)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `foreignkey(_:references:columns:ondelete:onupdate:deferred:)`

> Adds a foreign key.

```swift
func foreignKey(_ columns: [String], references table: String, columns destinationColumns: [String]? = nil, onDelete deleteAction: Database.ForeignKeyAction? = nil, onUpdate updateAction: Database.ForeignKeyAction? = nil, deferred isDeferred: Bool = false)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `primarykey(_:_:onconflict:)`

> Appends a primary key column.

```swift
@discardableResult func primaryKey(_ name: String, _ type: Database.ColumnType, onConflict conflictResolution: Database.ConflictResolution? = nil) -> ColumnDefinition
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `primarykey(_:onconflict:)`

> Adds a primary key constraint.

```swift
func primaryKey(_ columns: [String], onConflict conflictResolution: Database.ConflictResolution? = nil)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `primarykey(onconflict:body:)`

> Defines the primary key on wrapped columns.

```swift
func primaryKey(onConflict conflictResolution: Database.ConflictResolution? = nil, body: () throws -> Void) rethrows
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `uniquekey(_:onconflict:)`

> Adds a unique constraint.

```swift
func uniqueKey(_ columns: [String], onConflict conflictResolution: Database.ConflictResolution? = nil)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
