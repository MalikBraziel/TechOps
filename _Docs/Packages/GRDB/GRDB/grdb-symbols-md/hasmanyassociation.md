# Index

- `aggregatingrequest-implementations`
- `aliased(_:)-3zslx`
- `aliased(_:)-5oaya`
- `all()`
- `annotated(with:)`
- `annotated(withoptional:)`
- `annotated(withrequired:)`
- `annotatedwhenconnected(with:)`
- `association-implementations`
- `associationtomany-implementations`
- `average(_:)-2sfw2`
- `average(_:)-49f2q`
- `count`
- `databasecomponents`
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
- `isempty`
- `joinablerequest-implementations`
- `joining(optional:)`
- `joining(required:)`
- `matching(_:)-5qhv`
- `matching(_:)-77zk2`
- `max(_:)-6j4mw`
- `max(_:)-6lgqo`
- `min(_:)-2ccd7`
- `min(_:)-7pqp7`
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
- `sum(_:)-67fwg`
- `sum(_:)-7x7k3`
- `tablerequest-implementations`
- `total(_:)-2378s`
- `total(_:)-655i`
- `typedrequest-implementations`
- `unordered()`
- `withstableorder()`

---


## `aggregatingrequest-implementations`

- **Role Heading:** API Collection


---

## `aliased(_:)-3zslx`

> Returns a request that can be referred to with the provided   record alias.

```swift
func aliased(_ alias: TableAlias<RowDecoder>) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `aliased(_:)-5oaya`

> Returns a request that can be referred to with the provided   anonymous alias.

```swift
func aliased(_ alias: TableAlias<Void>) -> Self
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

## `associationtomany-implementations`

- **Role Heading:** API Collection


---

## `average(_:)-2sfw2`

> Returns the average of the given expression in associated records.

```swift
func average(_ expression: some SQLSpecificExpressible) -> AssociationAggregate<OriginRowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `average(_:)-49f2q`

> Returns the average of the given expression in associated records.

```swift
func average(_ expression: (DatabaseComponents) throws -> some SQLSpecificExpressible) rethrows -> AssociationAggregate<OriginRowDecoder> where Self.RowDecoder : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `count`

> The number of associated records.

```swift
var count: AssociationAggregate<OriginRowDecoder> { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `databasecomponents`

> Inherited from   .

```swift
typealias DatabaseComponents = RowDecoder.DatabaseComponents
```

- **Symbol Kind:** typealias

- **Role Heading:** Type Alias


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

## `isempty`

> Returns a boolean aggregate that is true if no associated   records exist.

```swift
var isEmpty: AssociationAggregate<OriginRowDecoder> { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


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

## `matching(_:)-5qhv`

> Filters rows that match an    full-text pattern.

```swift
func matching(_ pattern: FTS5Pattern?) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `matching(_:)-77zk2`

> Filters rows that match an    full-text pattern.

```swift
func matching(_ pattern: FTS3Pattern?) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `max(_:)-6j4mw`

> Returns the maximum value of the given expression in associated records.

```swift
func max(_ expression: (DatabaseComponents) throws -> some SQLSpecificExpressible) rethrows -> AssociationAggregate<OriginRowDecoder> where Self.RowDecoder : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `max(_:)-6lgqo`

> Returns the maximum value of the given expression in associated records.

```swift
func max(_ expression: some SQLSpecificExpressible) -> AssociationAggregate<OriginRowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `min(_:)-2ccd7`

> Returns the minimum value of the given expression in associated records.

```swift
func min(_ expression: some SQLSpecificExpressible) -> AssociationAggregate<OriginRowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `min(_:)-7pqp7`

> Returns the minimum value of the given expression in associated records.

```swift
func min(_ expression: (DatabaseComponents) throws -> some SQLSpecificExpressible) rethrows -> AssociationAggregate<OriginRowDecoder> where Self.RowDecoder : TableRecord
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

## `sum(_:)-67fwg`

> Returns the sum of the given expression in associated records.

```swift
func sum(_ expression: (DatabaseComponents) throws -> some SQLSpecificExpressible) rethrows -> AssociationAggregate<OriginRowDecoder> where Self.RowDecoder : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `sum(_:)-7x7k3`

> Returns the sum of the given expression in associated records.

```swift
func sum(_ expression: some SQLSpecificExpressible) -> AssociationAggregate<OriginRowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `tablerequest-implementations`

- **Role Heading:** API Collection


---

## `total(_:)-2378s`

> Returns the sum of the given expression in associated records.

```swift
func total(_ expression: some SQLSpecificExpressible) -> AssociationAggregate<OriginRowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `total(_:)-655i`

> Returns the sum of the given expression in associated records.

```swift
func total(_ expression: (DatabaseComponents) throws -> some SQLSpecificExpressible) rethrows -> AssociationAggregate<OriginRowDecoder> where Self.RowDecoder : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


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
