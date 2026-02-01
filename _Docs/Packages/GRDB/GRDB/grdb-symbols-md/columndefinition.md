# Index

- `check(_:)`
- `check(sql:)`
- `collate(_:)-4dljx`
- `collate(_:)-9ywza`
- `defaults(sql:)`
- `defaults(to:)`
- `generatedas(_:_:)`
- `generatedas(sql:_:)`
- `generatedcolumnqualification`
- `indexed()`
- `notnull(onconflict:)`
- `primarykey(onconflict:autoincrement:)`
- `references(_:column:ondelete:onupdate:deferred:)`
- `unique(onconflict:)`

---


## `check(_:)`

> Adds a check constraint.

```swift
@discardableResult func check(_ condition: (Column) -> any SQLExpressible) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `check(sql:)`

> Adds a check constraint.

```swift
@discardableResult func check(sql: String) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `collate(_:)-4dljx`

> Defines the default collation.

```swift
@discardableResult func collate(_ collation: DatabaseCollation) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `collate(_:)-9ywza`

> Defines the default collation.

```swift
@discardableResult func collate(_ collation: Database.CollationName) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `defaults(sql:)`

> Defines the default value.

```swift
@discardableResult func defaults(sql: String) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `defaults(to:)`

> Defines the default value.

```swift
@discardableResult func defaults(to value: some DatabaseValueConvertible) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `generatedas(_:_:)`

> Defines the column as a generated column.

```swift
@discardableResult func generatedAs(_ expression: some SQLExpressible, _ qualification: GeneratedColumnQualification = .virtual) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `generatedas(sql:_:)`

> Defines the column as a generated column.

```swift
@discardableResult func generatedAs(sql: String, _ qualification: GeneratedColumnQualification = .virtual) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `generatedcolumnqualification`

> The kind of a generated column.

```swift
enum GeneratedColumnQualification
```

- **Symbol Kind:** enum

- **Role Heading:** Enumeration


---

## `indexed()`

> Adds an index.

```swift
@discardableResult func indexed() -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `notnull(onconflict:)`

> Adds a not null constraint.

```swift
@discardableResult func notNull(onConflict conflictResolution: Database.ConflictResolution? = nil) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `primarykey(onconflict:autoincrement:)`

> Adds a primary key constraint.

```swift
@discardableResult func primaryKey(onConflict conflictResolution: Database.ConflictResolution? = nil, autoincrement: Bool = false) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `references(_:column:ondelete:onupdate:deferred:)`

> Adds a foreign key constraint.

```swift
@discardableResult func references(_ table: String, column: String? = nil, onDelete deleteAction: Database.ForeignKeyAction? = nil, onUpdate updateAction: Database.ForeignKeyAction? = nil, deferred isDeferred: Bool = false) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `unique(onconflict:)`

> Adds a unique constraint.

```swift
@discardableResult func unique(onConflict conflictResolution: Database.ConflictResolution? = nil) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
