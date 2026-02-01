# Index

- `aggregatingrequest-implementations`
- `aliased(_:)-3n2in`
- `aliased(_:)-ye0z`
- `all()`
- `annotated(with:)`
- `annotated(withoptional:)`
- `annotated(withrequired:)`
- `annotatedwhenconnected(with:)`
- `association-implementations`
- `databasetablename`
- `derivablerequest-implementations`
- `distinct()`
- `filter(_:)`
- `filter(key:)`
- `filter(keys:)`
- `filter(literal:)`
- `filter(sql:arguments:)`
- `filteredrequest-implementations`
- `filterwhenconnected(_:)`
- `forkey(_:)`
- `group(_:)`
- `group(literal:)`
- `group(sql:arguments:)`
- `groupbyprimarykey()`
- `groupwhenconnected(_:)`
- `having(_:)`
- `having(literal:)`
- `having(sql:arguments:)`
- `havingwhenconnected(_:)`
- `including(all:)`
- `including(optional:)`
- `including(required:)`
- `joinablerequest-implementations`
- `joining(optional:)`
- `joining(required:)`
- `matching(_:)-1g5b7`
- `matching(_:)-805ly`
- `none()`
- `order(_:)`
- `order(literal:)`
- `order(sql:arguments:)`
- `orderbyprimarykey()`
- `orderedrequest-implementations`
- `orderwhenconnected(_:)`
- `originrowdecoder`
- `reversed()`
- `rowdecoder`
- `select(_:)`
- `select(literal:)`
- `select(sql:arguments:)`
- `selectionrequest-implementations`
- `selectwhenconnected(_:)`
- `tablerequest-implementations`
- `typedrequest-implementations`
- `unordered()`
- `withstableorder()`

---


## `aggregatingrequest-implementations`

- **Role Heading:** API Collection


---

## `aliased(_:)-3n2in`

> Returns a request that can be referred to with the provided   anonymous alias.

```swift
func aliased(_ alias: TableAlias<Void>) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `aliased(_:)-ye0z`

> Returns a request that can be referred to with the provided   record alias.

```swift
func aliased(_ alias: TableAlias<RowDecoder>) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `all()`

> Returns   : a request that fetches all rows from this request.

```swift
func all() -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `annotated(with:)`

> Appends association aggregates to the selected columns.

```swift
func annotated(with aggregates: [AssociationAggregate<RowDecoder>]) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `annotated(withoptional:)`

> Appends the columns of the eventual associated record to the   selected columns.

```swift
func annotated<A>(withOptional association: A) -> Self where A : Association, Self.RowDecoder == A.OriginRowDecoder
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `annotated(withrequired:)`

> Appends the columns of the associated record to the selected columns.   Records that do not have an associated record are discarded.

```swift
func annotated<A>(withRequired association: A) -> Self where A : Association, Self.RowDecoder == A.OriginRowDecoder
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `annotatedwhenconnected(with:)`

> Appends result columns to the selected columns.

```swift
func annotatedWhenConnected(with selection: @escaping (Database) throws -> [any SQLSelectable]) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `association-implementations`

- **Role Heading:** API Collection


---

## `databasetablename`

> The name of the database table

```swift
var databaseTableName: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `derivablerequest-implementations`

- **Role Heading:** API Collection


---

## `distinct()`

> Returns a request which returns distinct rows.

```swift
func distinct() -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(_:)`

> Filters the fetched rows with a boolean SQL expression.

```swift
func filter(_ predicate: some SQLSpecificExpressible) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(key:)`

> Filters by primary or unique key.

```swift
func filter(key: [String : (any DatabaseValueConvertible)?]?) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(keys:)`

> Filters by primary or unique key.

```swift
func filter(keys: [[String : (any DatabaseValueConvertible)?]]) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(literal:)`

> Filters the fetched rows with an    literal.

```swift
func filter(literal sqlLiteral: SQL) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(sql:arguments:)`

> Filters the fetched rows with an SQL string.

```swift
func filter(sql: String, arguments: StatementArguments = StatementArguments()) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filteredrequest-implementations`

- **Role Heading:** API Collection


---

## `filterwhenconnected(_:)`

> Filters the fetched rows with a boolean SQL expression.

```swift
func filterWhenConnected(_ predicate: @escaping (Database) throws -> any SQLExpressible) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `forkey(_:)`

> Returns an association with the given key.

```swift
func forKey(_ key: String) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `group(_:)`

> Returns an aggregate request grouped on the given SQL expressions.

```swift
func group(_ expressions: [any SQLExpressible]) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `group(literal:)`

> Returns an aggregate request grouped on an    literal.

```swift
func group(literal sqlLiteral: SQL) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `group(sql:arguments:)`

> Returns an aggregate request grouped on an SQL string.

```swift
func group(sql: String, arguments: StatementArguments = StatementArguments()) -> Self
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

## `groupwhenconnected(_:)`

> Returns an aggregate request grouped on the given SQL expressions.

```swift
func groupWhenConnected(_ expressions: @escaping (Database) throws -> [any SQLExpressible]) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `having(_:)`

> Filters the fetched records with an association aggregate.

```swift
func having(_ predicate: AssociationAggregate<RowDecoder>) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `having(literal:)`

> Filters the aggregated groups with an    literal.

```swift
func having(literal sqlLiteral: SQL) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `having(sql:arguments:)`

> Filters the aggregated groups with an SQL string.

```swift
func having(sql: String, arguments: StatementArguments = StatementArguments()) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `havingwhenconnected(_:)`

> Filters the aggregated groups with a boolean SQL expression.

```swift
func havingWhenConnected(_ predicate: @escaping (Database) throws -> any SQLExpressible) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `including(all:)`

> Returns a request that fetches all records associated with each record   in this request.

```swift
func including<A>(all association: A) -> Self where A : AssociationToMany, Self.RowDecoder == A.OriginRowDecoder
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `including(optional:)`

> Returns a request that fetches the eventual record associated with each   record of this request.

```swift
func including<A>(optional association: A) -> Self where A : Association, Self.RowDecoder == A.OriginRowDecoder
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `including(required:)`

> Returns a request that fetches the record associated with each record in   this request. Records that do not have an associated record   are discarded.

```swift
func including<A>(required association: A) -> Self where A : Association, Self.RowDecoder == A.OriginRowDecoder
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `joinablerequest-implementations`

- **Role Heading:** API Collection


---

## `joining(optional:)`

> Returns a request that joins each record of this request to its   eventual associated record.

```swift
func joining<A>(optional association: A) -> Self where A : Association, Self.RowDecoder == A.OriginRowDecoder
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `joining(required:)`

> Returns a request that joins each record of this request to its   associated record. Records that do not have an associated record   are discarded.

```swift
func joining<A>(required association: A) -> Self where A : Association, Self.RowDecoder == A.OriginRowDecoder
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `matching(_:)-1g5b7`

> Filters rows that match an    full-text pattern.

```swift
func matching(_ pattern: FTS5Pattern?) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `matching(_:)-805ly`

> Filters rows that match an    full-text pattern.

```swift
func matching(_ pattern: FTS3Pattern?) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `none()`

> Returns an empty request that fetches no row.

```swift
func none() -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `order(_:)`

> Sorts the fetched rows according to the given SQL ordering terms.

```swift
func order(_ orderings: [any SQLOrderingTerm]) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `order(literal:)`

> Sorts the fetched rows according to the given    literal.

```swift
func order(literal sqlLiteral: SQL) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `order(sql:arguments:)`

> Sorts the fetched rows according to the given SQL string.

```swift
func order(sql: String, arguments: StatementArguments = StatementArguments()) -> Self
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

## `orderedrequest-implementations`

- **Role Heading:** API Collection


---

## `orderwhenconnected(_:)`

> Sorts the fetched rows according to the given SQL ordering terms.

```swift
func orderWhenConnected(_ orderings: @escaping (Database) throws -> [any SQLOrderingTerm]) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `originrowdecoder`

> The record type at the origin of the association.

```swift
typealias OriginRowDecoder = Origin
```

- **Symbol Kind:** typealias

- **Role Heading:** Type Alias


---

## `reversed()`

> Returns a request with reversed ordering.

```swift
func reversed() -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `rowdecoder`

> The type that can decode database rows.

```swift
typealias RowDecoder = Destination
```

- **Symbol Kind:** typealias

- **Role Heading:** Type Alias


---

## `select(_:)`

> Defines the result columns.

```swift
func select(_ selection: [any SQLSelectable]) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `select(literal:)`

> Defines the result columns with an    literal.

```swift
func select(literal sqlLiteral: SQL) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `select(sql:arguments:)`

> Defines the result columns with an SQL string.

```swift
func select(sql: String, arguments: StatementArguments = StatementArguments()) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `selectionrequest-implementations`

- **Role Heading:** API Collection


---

## `selectwhenconnected(_:)`

> Defines the result columns.

```swift
func selectWhenConnected(_ selection: @escaping (Database) throws -> [any SQLSelectable]) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `tablerequest-implementations`

- **Role Heading:** API Collection


---

## `typedrequest-implementations`

- **Role Heading:** API Collection


---

## `unordered()`

> Returns a request without any ordering.

```swift
func unordered() -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `withstableorder()`

> Returns a request with a stable order.

```swift
func withStableOrder() -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
