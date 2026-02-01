# Index

- `aliased(_:)-3135k`
- `aliased(_:)-5dkyd`
- `all()`
- `annotated(with:)-4sbgw`
- `annotated(with:)-6i101`
- `annotated(with:)-6x399`
- `annotated(with:)-98t4p`
- `annotated(withoptional:)`
- `annotated(withrequired:)`
- `association(to:)`
- `association(to:on:)`
- `belongsto(_:key:using:)-117wr`
- `belongsto(_:key:using:)-8p5xr`
- `databasecomponents`
- `databaseregion(_:)`
- `databaseregionconvertible-implementations`
- `deleteall(_:)`
- `deleteall(_:ids:)`
- `deleteall(_:keys:)-28sff`
- `deleteall(_:keys:)-594uc`
- `deleteone(_:id:)`
- `deleteone(_:key:)-404su`
- `deleteone(_:key:)-64wmq`
- `exists(_:id:)`
- `exists(_:key:)-36jtu`
- `exists(_:key:)-4dk7e`
- `fetchall(_:)-3l7ol`
- `fetchall(_:)-4s7yn`
- `fetchall(_:)-6xr01`
- `fetchall(_:)-7tjdp`
- `fetchcount(_:)`
- `fetchcursor(_:)-1oqex`
- `fetchcursor(_:)-295uw`
- `fetchcursor(_:)-65lci`
- `fetchcursor(_:)-81wuu`
- `fetchone(_:)-3bduz`
- `fetchone(_:)-71icb`
- `fetchone(_:)-8n1q`
- `fetchone(_:)-infc`
- `fetchset(_:)-3mchk`
- `fetchset(_:)-5lp4s`
- `fetchset(_:)-8k2uk`
- `fetchset(_:)-ko77`
- `filter(_:)`
- `filter(id:)`
- `filter(ids:)`
- `filter(key:)-4sun7`
- `filter(key:)-tw3i`
- `filter(keys:)-5ws7f`
- `filter(keys:)-qqgf`
- `filter(literal:)`
- `filter(sql:arguments:)`
- `hasmany(_:key:using:)-3i6yk`
- `hasmany(_:key:using:)-57dwf`
- `hasmany(_:through:using:key:)`
- `hasone(_:key:using:)-3438j`
- `hasone(_:key:using:)-81vqy`
- `hasone(_:through:using:key:)`
- `having(_:)`
- `including(all:)`
- `including(optional:)`
- `including(required:)`
- `init(_:)-2iz5y`
- `init(_:)-3mfb8`
- `joining(optional:)`
- `joining(required:)`
- `limit(_:offset:)`
- `none()`
- `order(_:)-2gvi7`
- `order(_:)-9o5bb`
- `order(literal:)`
- `order(sql:arguments:)`
- `orderbyprimarykey()`
- `select(_:)-1599q`
- `select(_:)-2cnd1`
- `select(_:as:)-20ci9`
- `select(_:as:)-3pr6x`
- `select(literal:)`
- `select(literal:as:)`
- `select(sql:arguments:)`
- `select(sql:arguments:as:)`
- `selectid()`
- `selectprimarykey(as:)`
- `tablename`
- `updateall(_:onconflict:_:)-4cvap`
- `updateall(_:onconflict:_:)-4w9b`
- `updateall(_:onconflict:assignment:)`
- `updateall(_:onconflict:assignments:)`
- `with(_:)`

---


## `aliased(_:)-3135k`

> Returns a request that can be referred to with the provided   record alias.

```swift
func aliased(_ alias: TableAlias<RowDecoder>) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `aliased(_:)-5dkyd`

> Returns a request that can be referred to with the provided   anonymous alias.

```swift
func aliased(_ alias: TableAlias<Void>) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `all()`

> Returns a request for all rows of the table.

```swift
func all() -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `annotated(with:)-4sbgw`

> Returns a request with the given association aggregates appended to   the table colums.

```swift
func annotated(with aggregates: AssociationAggregate<RowDecoder>...) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `annotated(with:)-6i101`

> Returns a request with the provided result columns appended to the   table columns.

```swift
func annotated(with selection: any SQLSelectable...) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `annotated(with:)-6x399`

> Returns a request with the provided result columns appended to the   table columns.

```swift
func annotated(with selection: [any SQLSelectable]) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `annotated(with:)-98t4p`

> Returns a request with the given association aggregates appended to   the table colums.

```swift
func annotated(with aggregates: [AssociationAggregate<RowDecoder>]) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `annotated(withoptional:)`

> Returns a request with the columns of the eventual associated row   appended to the table columns.

```swift
func annotated<A>(withOptional association: A) -> QueryInterfaceRequest<RowDecoder> where RowDecoder == A.OriginRowDecoder, A : Association
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `annotated(withrequired:)`

> Returns a request with the columns of the associated row appended to   the table columns. Rows that do not have an associated row   are discarded.

```swift
func annotated<A>(withRequired association: A) -> QueryInterfaceRequest<RowDecoder> where RowDecoder == A.OriginRowDecoder, A : Association
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `association(to:)`

> Creates an association to a common table expression.

```swift
func association<Destination>(to cte: CommonTableExpression<Destination>) -> JoinAssociation<RowDecoder, Destination>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `association(to:on:)`

> Creates an association to a common table expression.

```swift
func association<Destination>(to cte: CommonTableExpression<Destination>, on condition: @escaping (_ left: TableAlias<RowDecoder>, _ right: TableAlias<Destination>) -> any SQLExpressible) -> JoinAssociation<RowDecoder, Destination>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `belongsto(_:key:using:)-117wr`

> Creates a    between this table and the   destination   .

```swift
func belongsTo<Destination>(_ destination: Table<Destination>, key: String? = nil, using foreignKey: ForeignKey? = nil) -> BelongsToAssociation<RowDecoder, Destination>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `belongsto(_:key:using:)-8p5xr`

> Creates a    between this table and the   destination    type.

```swift
func belongsTo<Destination>(_ destination: Destination.Type, key: String? = nil, using foreignKey: ForeignKey? = nil) -> BelongsToAssociation<RowDecoder, Destination> where Destination : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `databasecomponents`

```swift
typealias DatabaseComponents = RowDecoder.DatabaseComponents
```

- **Symbol Kind:** typealias

- **Role Heading:** Type Alias


---

## `databaseregion(_:)`

> Returns a database region.

```swift
func databaseRegion(_ db: Database) throws -> DatabaseRegion
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `databaseregionconvertible-implementations`

- **Role Heading:** API Collection


---

## `deleteall(_:)`

> Deletes all rows, and returns the number of deleted rows.

```swift
@discardableResult func deleteAll(_ db: Database) throws -> Int
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `deleteall(_:ids:)`

> Deletes rows identified by their primary keys, and returns the number   of deleted rows.

```swift
@discardableResult func deleteAll(_ db: Database, ids: some Collection<RowDecoder.ID>) throws -> Int
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `deleteall(_:keys:)-28sff`

> Deletes rows identified by their primary or unique keys, and returns   the number of deleted rows.

```swift
@discardableResult func deleteAll(_ db: Database, keys: [[String : (any DatabaseValueConvertible)?]]) throws -> Int
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `deleteall(_:keys:)-594uc`

> Deletes rows identified by their primary keys, and returns the number   of deleted rows.

```swift
@discardableResult func deleteAll(_ db: Database, keys: some Collection<some DatabaseValueConvertible>) throws -> Int
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `deleteone(_:id:)`

> Deletes the row identified by its primary key, and returns whether a   row was deleted.

```swift
@discardableResult func deleteOne(_ db: Database, id: RowDecoder.ID) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `deleteone(_:key:)-404su`

> Deletes the row identified by its primary key, and returns whether a   row was deleted.

```swift
@discardableResult func deleteOne(_ db: Database, key: some DatabaseValueConvertible) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `deleteone(_:key:)-64wmq`

> Deletes the row identified by its primary or unique keys, and returns   whether a row was deleted.

```swift
@discardableResult func deleteOne(_ db: Database, key: [String : (any DatabaseValueConvertible)?]) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `exists(_:id:)`

> Returns whether a row exists for this primary key.

```swift
func exists(_ db: Database, id: RowDecoder.ID) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `exists(_:key:)-36jtu`

> Returns whether a row exists for this primary or unique key.

```swift
func exists(_ db: Database, key: [String : (any DatabaseValueConvertible)?]) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `exists(_:key:)-4dk7e`

> Returns whether a row exists for this primary key.

```swift
func exists(_ db: Database, key: some DatabaseValueConvertible) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchall(_:)-3l7ol`

> Returns an array of all records fetched from the database.

```swift
func fetchAll(_ db: Database) throws -> [RowDecoder]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchall(_:)-4s7yn`

> Returns an array of all rows fetched from the database.

```swift
func fetchAll(_ db: Database) throws -> [Row]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchall(_:)-6xr01`

> Returns an array of fetched values.

```swift
func fetchAll(_ db: Database) throws -> [RowDecoder]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchall(_:)-7tjdp`

> Returns an array of fetched values.

```swift
func fetchAll(_ db: Database) throws -> [RowDecoder]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchcount(_:)`

> Returns the number of rows in the database table.

```swift
func fetchCount(_ db: Database) throws -> Int
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchcursor(_:)-1oqex`

> Returns a cursor over all rows fetched from the database.

```swift
func fetchCursor(_ db: Database) throws -> RowCursor
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchcursor(_:)-295uw`

> Returns a cursor over fetched values.

```swift
func fetchCursor(_ db: Database) throws -> FastDatabaseValueCursor<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchcursor(_:)-65lci`

> Returns a cursor over fetched values.

```swift
func fetchCursor(_ db: Database) throws -> DatabaseValueCursor<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchcursor(_:)-81wuu`

> Returns a cursor over all records fetched from the database.

```swift
func fetchCursor(_ db: Database) throws -> RecordCursor<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchone(_:)-3bduz`

> Returns a single row fetched from the database.

```swift
func fetchOne(_ db: Database) throws -> Row?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchone(_:)-71icb`

> Returns a single fetched value.

```swift
func fetchOne(_ db: Database) throws -> RowDecoder?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchone(_:)-8n1q`

> Returns a single record fetched from the database.

```swift
func fetchOne(_ db: Database) throws -> RowDecoder?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchone(_:)-infc`

> Returns a single fetched value.

```swift
func fetchOne(_ db: Database) throws -> RowDecoder?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchset(_:)-3mchk`

> Returns a set of fetched values.

```swift
func fetchSet(_ db: Database) throws -> Set<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchset(_:)-5lp4s`

> Returns a set of all rows fetched from the database.

```swift
func fetchSet(_ db: Database) throws -> Set<Row>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchset(_:)-8k2uk`

> Returns a set of fetched values.

```swift
func fetchSet(_ db: Database) throws -> Set<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchset(_:)-ko77`

> Returns a set of all records fetched from the database.

```swift
func fetchSet(_ db: Database) throws -> Set<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(_:)`

> Returns a request filtered with a boolean SQL expression.

```swift
func filter(_ predicate: some SQLSpecificExpressible) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(id:)`

> Returns a request filtered by primary key.

```swift
func filter(id: RowDecoder.ID) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(ids:)`

> Returns a request filtered by primary key.

```swift
func filter(ids: some Collection<RowDecoder.ID>) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(key:)-4sun7`

> Returns a request filtered by primary or unique key.

```swift
func filter(key: [String : (any DatabaseValueConvertible)?]?) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(key:)-tw3i`

> Returns a request filtered by primary key.

```swift
func filter(key: some DatabaseValueConvertible) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(keys:)-5ws7f`

> Returns a request filtered by primary key.

```swift
func filter(keys: some Collection<some DatabaseValueConvertible>) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(keys:)-qqgf`

> Returns a request filtered by primary or unique key.

```swift
func filter(keys: [[String : (any DatabaseValueConvertible)?]]) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(literal:)`

> Returns a request filtered with an    literal.

```swift
func filter(literal sqlLiteral: SQL) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(sql:arguments:)`

> Returns a request filtered with an SQL string.

```swift
func filter(sql: String, arguments: StatementArguments = StatementArguments()) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `hasmany(_:key:using:)-3i6yk`

> Creates a    between this table and the   destination    type.

```swift
func hasMany<Destination>(_ destination: Destination.Type, key: String? = nil, using foreignKey: ForeignKey? = nil) -> HasManyAssociation<RowDecoder, Destination> where Destination : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `hasmany(_:key:using:)-57dwf`

> Creates a    between this table and the   destination   .

```swift
func hasMany<Destination>(_ destination: Table<Destination>, key: String? = nil, using foreignKey: ForeignKey? = nil) -> HasManyAssociation<RowDecoder, Destination>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `hasmany(_:through:using:key:)`

> Creates a    between this table and the   destination type.

```swift
func hasMany<Pivot, Target>(_ destination: Target.RowDecoder.Type, through pivot: Pivot, using target: Target, key: String? = nil) -> HasManyThroughAssociation<RowDecoder, Target.RowDecoder> where RowDecoder == Pivot.OriginRowDecoder, Pivot : Association, Target : Association, Pivot.RowDecoder == Target.OriginRowDecoder
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `hasone(_:key:using:)-3438j`

> Creates a    between this table and the   destination   .

```swift
func hasOne<Destination>(_ destination: Table<Destination>, key: String? = nil, using foreignKey: ForeignKey? = nil) -> HasOneAssociation<RowDecoder, Destination>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `hasone(_:key:using:)-81vqy`

> Creates a    between this table and the   destination    type.

```swift
func hasOne<Destination>(_ destination: Destination.Type, key: String? = nil, using foreignKey: ForeignKey? = nil) -> HasOneAssociation<RowDecoder, Destination> where Destination : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `hasone(_:through:using:key:)`

> Creates a    between this table and the   destination type.

```swift
func hasOne<Pivot, Target>(_ destination: Target.RowDecoder.Type, through pivot: Pivot, using target: Target, key: String? = nil) -> HasOneThroughAssociation<RowDecoder, Target.RowDecoder> where RowDecoder == Pivot.OriginRowDecoder, Pivot : AssociationToOne, Target : AssociationToOne, Pivot.RowDecoder == Target.OriginRowDecoder
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `having(_:)`

> Returns a request filtered according to the provided   association aggregate.

```swift
func having(_ predicate: AssociationAggregate<RowDecoder>) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `including(all:)`

> Returns a request that fetches all rows associated with each row   in this request.

```swift
func including<A>(all association: A) -> QueryInterfaceRequest<RowDecoder> where RowDecoder == A.OriginRowDecoder, A : AssociationToMany
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `including(optional:)`

> Returns a request that fetches the eventual row associated with each   row of this request.

```swift
func including<A>(optional association: A) -> QueryInterfaceRequest<RowDecoder> where RowDecoder == A.OriginRowDecoder, A : Association
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `including(required:)`

> Returns a request that fetches the row associated with each row in   this request. Rows that do not have an associated row are discarded.

```swift
func including<A>(required association: A) -> QueryInterfaceRequest<RowDecoder> where RowDecoder == A.OriginRowDecoder, A : Association
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `init(_:)-2iz5y`

> Creates a   .

```swift
init(_ tableName: String)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(_:)-3mfb8`

> Create a   .

```swift
init(_ tableName: String)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `joining(optional:)`

> Returns a request that joins each row of this request to its   eventual associated row.

```swift
func joining<A>(optional association: A) -> QueryInterfaceRequest<RowDecoder> where RowDecoder == A.OriginRowDecoder, A : Association
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `joining(required:)`

> Returns a request that joins each row of this request to its   associated row. Rows that do not have an associated row are discarded.

```swift
func joining<A>(required association: A) -> QueryInterfaceRequest<RowDecoder> where RowDecoder == A.OriginRowDecoder, A : Association
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `limit(_:offset:)`

> Returns a limited request.

```swift
func limit(_ limit: Int, offset: Int? = nil) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `none()`

> Returns an empty request that fetches no row.

```swift
func none() -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `order(_:)-2gvi7`

> Returns a request sorted according to the given SQL ordering terms.

```swift
func order(_ orderings: any SQLOrderingTerm...) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `order(_:)-9o5bb`

> Returns a request sorted according to the given SQL ordering terms.

```swift
func order(_ orderings: [any SQLOrderingTerm]) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `order(literal:)`

> Returns a request sorted according to the given    literal.

```swift
func order(literal sqlLiteral: SQL) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `order(sql:arguments:)`

> Returns a request sorted according to the given SQL string.

```swift
func order(sql: String, arguments: StatementArguments = StatementArguments()) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `orderbyprimarykey()`

> Returns a request sorted by primary key.

```swift
func orderByPrimaryKey() -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `select(_:)-1599q`

> Returns a request that selects the provided result columns.

```swift
func select(_ selection: any SQLSelectable...) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `select(_:)-2cnd1`

> Returns a request that selects the provided result columns.

```swift
func select(_ selection: [any SQLSelectable]) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `select(_:as:)-20ci9`

> Returns a request that selects the provided result columns, and defines   the type of decoded rows.

```swift
func select<T>(_ selection: any SQLSelectable..., as type: T.Type = T.self) -> QueryInterfaceRequest<T>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `select(_:as:)-3pr6x`

> Returns a request that selects the provided result columns, and defines   the type of decoded rows.

```swift
func select<T>(_ selection: [any SQLSelectable], as type: T.Type = T.self) -> QueryInterfaceRequest<T>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `select(literal:)`

> Returns a request that selects the provided    literal.

```swift
func select(literal sqlLiteral: SQL) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `select(literal:as:)`

> Returns a request that selects the provided    literal, and defines   the type of decoded rows.

```swift
func select<T>(literal sqlLiteral: SQL, as type: T.Type = T.self) -> QueryInterfaceRequest<T>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `select(sql:arguments:)`

> Returns a request that selects the provided SQL string.

```swift
func select(sql: String, arguments: StatementArguments = StatementArguments()) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `select(sql:arguments:as:)`

> Returns a request that selects the provided SQL string, and defines the   type of decoded rows.

```swift
func select<T>(sql: String, arguments: StatementArguments = StatementArguments(), as type: T.Type = T.self) -> QueryInterfaceRequest<T>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `selectid()`

> Returns a request that selects the primary key.

```swift
func selectID() -> QueryInterfaceRequest<RowDecoder.ID> where RowDecoder : Identifiable
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `selectprimarykey(as:)`

> Returns a request that selects the primary key.

```swift
func selectPrimaryKey<PrimaryKey>(as type: PrimaryKey.Type = PrimaryKey.self) -> QueryInterfaceRequest<PrimaryKey>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `tablename`

> The table name.

```swift
var tableName: String
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `updateall(_:onconflict:_:)-4cvap`

> Updates all rows, and returns the number of updated rows.

```swift
@discardableResult func updateAll(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, _ assignments: [ColumnAssignment]) throws -> Int
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `updateall(_:onconflict:_:)-4w9b`

> Updates all rows, and returns the number of updated rows.

```swift
@discardableResult func updateAll(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, _ assignments: ColumnAssignment...) throws -> Int
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `updateall(_:onconflict:assignment:)`

> Updates all rows, and returns the number of updated rows.

```swift
@discardableResult func updateAll(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, assignment: (DatabaseComponents) throws -> ColumnAssignment) throws -> Int where RowDecoder : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `updateall(_:onconflict:assignments:)`

> Updates all rows, and returns the number of updated rows.

```swift
@discardableResult func updateAll(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, assignments: (DatabaseComponents) throws -> [ColumnAssignment]) throws -> Int where RowDecoder : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `with(_:)`

> Returns a request that embeds a common table expression.

```swift
func with<T>(_ cte: CommonTableExpression<T>) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
