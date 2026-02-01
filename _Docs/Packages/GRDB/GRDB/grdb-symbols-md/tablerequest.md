# Index

- `aliased(_:)-3k5h4`
- `aliased(_:)-772vb`
- `databasetablename-6del0`
- `databasetablename`
- `filter(id:)`
- `filter(ids:)`
- `filter(key:)-1p9sq`
- `filter(key:)-2te6v`
- `filter(keys:)-8fbn9`
- `filter(keys:)-9p9i5`
- `groupbyprimarykey()`
- `matching(_:)-3s3zr`
- `matching(_:)-7c1e8`
- `orderbyprimarykey()`

---


## `aliased(_:)-3k5h4`

> Returns a request that can be referred to with the provided   record alias.

```swift
func aliased(_ alias: TableAlias<RowDecoder>) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `aliased(_:)-772vb`

> Returns a request that can be referred to with the provided   anonymous alias.

```swift
func aliased(_ alias: TableAlias<Void>) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `databasetablename-6del0`

> The name of the database table

```swift
var databaseTableName: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `databasetablename`

> The name of the database table

```swift
var databaseTableName: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `filter(id:)`

> Filters by primary key.

```swift
func filter(id: RowDecoder.ID) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(ids:)`

> Filters by primary key.

```swift
func filter(ids: some Collection<RowDecoder.ID>) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(key:)-1p9sq`

> Filters by primary key.

```swift
func filter(key: some DatabaseValueConvertible) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(key:)-2te6v`

> Filters by primary or unique key.

```swift
func filter(key: [String : (any DatabaseValueConvertible)?]?) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(keys:)-8fbn9`

> Filters by primary or unique key.

```swift
func filter(keys: [[String : (any DatabaseValueConvertible)?]]) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(keys:)-9p9i5`

> Filters by primary key.

```swift
func filter<Keys>(keys: Keys) -> Self where Keys : Collection, Keys.Element : DatabaseValueConvertible
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `groupbyprimarykey()`

> Returns an aggregate request grouped on the primary key.

```swift
func groupByPrimaryKey() -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `matching(_:)-3s3zr`

> Filters rows that match an    full-text pattern.

```swift
func matching(_ pattern: FTS3Pattern?) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `matching(_:)-7c1e8`

> Filters rows that match an    full-text pattern.

```swift
func matching(_ pattern: FTS5Pattern?) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `orderbyprimarykey()`

> Sorts the fetched rows according to the primary key.

```swift
func orderByPrimaryKey() -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
