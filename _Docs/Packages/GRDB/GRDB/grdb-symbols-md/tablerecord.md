# Index

- `aliased(_:)-py77`
- `aliased(_:)-sdcd`
- `all()`
- `annotated(with:)-12jwq`
- `annotated(with:)-3zi1n`
- `annotated(with:)-4xoen`
- `annotated(with:)-58am5`
- `annotated(with:)-79389`
- `annotated(with:)-8ce7u`
- `annotated(withoptional:)`
- `annotated(withrequired:)`
- `association(to:)`
- `association(to:on:)`
- `belongsto(_:key:using:)-13t5r`
- `belongsto(_:key:using:)-81six`
- `columns`
- `databasecomponents-3fjdo`
- `databasecomponents-6z32a`
- `databasecomponents-swift.associatedtype`
- `databaseselection-6bvg`
- `databaseselection`
- `databasetablename-8io8v`
- `databasetablename`
- `deleteall(_:)`
- `deleteall(_:ids:)`
- `deleteall(_:keys:)-5l3ih`
- `deleteall(_:keys:)-5s1jg`
- `deleteone(_:id:)`
- `deleteone(_:key:)-413u8`
- `deleteone(_:key:)-5pdh5`
- `exists(_:id:)`
- `exists(_:key:)-60hf2`
- `exists(_:key:)-6ha6`
- `fetchcount(_:)`
- `filter(_:)-4xvdh`
- `filter(_:)-5u85w`
- `filter(id:)`
- `filter(ids:)`
- `filter(key:)-34lau`
- `filter(key:)-9ey53`
- `filter(keys:)-4hq8y`
- `filter(keys:)-s1q0`
- `filter(literal:)`
- `filter(sql:arguments:)`
- `hasmany(_:key:using:)-10d4k`
- `hasmany(_:key:using:)-45axo`
- `hasmany(_:through:using:key:)`
- `hasone(_:key:using:)-4g9tm`
- `hasone(_:key:using:)-4v5xa`
- `hasone(_:through:using:key:)`
- `having(_:)`
- `including(all:)`
- `including(optional:)`
- `including(required:)`
- `joining(optional:)`
- `joining(required:)`
- `limit(_:offset:)`
- `matching(_:)-1t8ph`
- `matching(_:)-22m4o`
- `none()`
- `numberofselectedcolumns(_:)`
- `order(_:)-2033k`
- `order(_:)-4j3ej`
- `order(_:)-53dja`
- `order(_:)-9rc11`
- `order(literal:)`
- `order(sql:arguments:)`
- `orderbyprimarykey()`
- `recordnotfound(_:)`
- `recordnotfound(_:id:)`
- `recordnotfound(_:key:)`
- `recordnotfound(key:)`
- `request(for:)`
- `select(_:)-1bgd1`
- `select(_:)-1gvtj`
- `select(_:)-5oylt`
- `select(_:)-8yqls`
- `select(_:as:)-1puz3`
- `select(_:as:)-7zz91`
- `select(_:as:)-tjh0`
- `select(literal:)`
- `select(literal:as:)`
- `select(sql:arguments:)`
- `select(sql:arguments:as:)`
- `selectid()`
- `selectprimarykey(as:)`
- `updateall(_:onconflict:_:)-7atfw`
- `updateall(_:onconflict:_:)-7vv9x`
- `updateall(_:onconflict:assignment:)`
- `updateall(_:onconflict:assignments:)`
- `with(_:)`

---


## `aliased(_:)-py77`

> Returns a request that can be referred to with the provided alias.

```swift
static func aliased(_ alias: TableAlias<Void>) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `aliased(_:)-sdcd`

> Returns a request that can be referred to with the provided alias.

```swift
static func aliased(_ alias: TableAlias<Self>) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `all()`

> Returns a request for all records in the table.

```swift
static func all() -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `annotated(with:)-12jwq`

> Returns a request with the provided result columns appended to the   record selection.

```swift
static func annotated(with selection: (DatabaseComponents) throws -> [any SQLSelectable]) rethrows -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `annotated(with:)-3zi1n`

> Returns a request with the provided result columns appended to the   record selection.

```swift
static func annotated(with selection: [any SQLSelectable]) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `annotated(with:)-4xoen`

> Returns a request with the given association aggregates appended to   the record selection.

```swift
static func annotated(with aggregates: AssociationAggregate<Self>...) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `annotated(with:)-58am5`

> Returns a request with the provided result columns appended to the   record selection.

```swift
static func annotated(with selection: (DatabaseComponents) throws -> any SQLSelectable) rethrows -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `annotated(with:)-79389`

> Returns a request with the provided result columns appended to the   record selection.

```swift
static func annotated(with selection: any SQLSelectable...) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `annotated(with:)-8ce7u`

> Returns a request with the given association aggregates appended to   the record selection.

```swift
static func annotated(with aggregates: [AssociationAggregate<Self>]) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `annotated(withoptional:)`

> Returns a request with the columns of the eventual associated record   appended to the record selection.

```swift
static func annotated<A>(withOptional association: A) -> QueryInterfaceRequest<Self> where Self == A.OriginRowDecoder, A : Association
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `annotated(withrequired:)`

> Returns a request with the columns of the associated record appended to   the record selection. Records that do not have an associated record   are discarded.

```swift
static func annotated<A>(withRequired association: A) -> QueryInterfaceRequest<Self> where Self == A.OriginRowDecoder, A : Association
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `association(to:)`

> Creates an association to a common table expression.

```swift
static func association<Destination>(to cte: CommonTableExpression<Destination>) -> JoinAssociation<Self, Destination>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `association(to:on:)`

> Creates an association to a common table expression.

```swift
static func association<Destination>(to cte: CommonTableExpression<Destination>, on condition: @escaping (_ left: TableAlias<Self>, _ right: TableAlias<Destination>) -> any SQLExpressible) -> JoinAssociation<Self, Destination>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `belongsto(_:key:using:)-13t5r`

> Creates a    between    and the   destination    type.

```swift
static func belongsTo<Destination>(_ destination: Destination.Type, key: String? = nil, using foreignKey: ForeignKey? = nil) -> BelongsToAssociation<Self, Destination> where Destination : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `belongsto(_:key:using:)-81six`

> Creates a    between    and the   destination   .

```swift
static func belongsTo<Destination>(_ destination: Table<Destination>, key: String? = nil, using foreignKey: ForeignKey? = nil) -> BelongsToAssociation<Self, Destination>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `columns`

> A type that defines columns.

```swift
associatedtype Columns = Never
```

- **Symbol Kind:** associatedtype

- **Role Heading:** Associated Type


---

## `databasecomponents-3fjdo`

```swift
static var databaseComponents: DatabaseComponents { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `databasecomponents-6z32a`

> The value that provides database components to the query interface.

```swift
static var databaseComponents: DatabaseComponents { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `databasecomponents-swift.associatedtype`

> A type that provides database components to the query interface.

```swift
associatedtype DatabaseComponents = Self.Columns.Type
```

- **Symbol Kind:** associatedtype

- **Role Heading:** Associated Type


---

## `databaseselection-6bvg`

> The default selection is all columns:   .

```swift
static var databaseSelection: [any SQLSelectable] { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `databaseselection`

> The columns selected by the record.

```swift
static var databaseSelection: [any SQLSelectable] { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `databasetablename-8io8v`

> The default name of the database table is derived from the name of   the type.

```swift
static var databaseTableName: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `databasetablename`

> The name of the database table used to build SQL queries.

```swift
static var databaseTableName: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `deleteall(_:)`

> Deletes all records, and returns the number of deleted records.

```swift
@discardableResult static func deleteAll(_ db: Database) throws -> Int
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `deleteall(_:ids:)`

> Deletes records identified by their primary keys, and returns the number   of deleted records.

```swift
@discardableResult static func deleteAll(_ db: Database, ids: some Collection<ID>) throws -> Int
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `deleteall(_:keys:)-5l3ih`

> Deletes records identified by their primary keys, and returns the number   of deleted records.

```swift
@discardableResult static func deleteAll(_ db: Database, keys: some Collection<some DatabaseValueConvertible>) throws -> Int
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `deleteall(_:keys:)-5s1jg`

> Deletes records identified by their primary or unique keys, and returns   the number of deleted records.

```swift
@discardableResult static func deleteAll(_ db: Database, keys: [[String : (any DatabaseValueConvertible)?]]) throws -> Int
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `deleteone(_:id:)`

> Deletes the record identified by its primary key, and returns whether a   record was deleted.

```swift
@discardableResult static func deleteOne(_ db: Database, id: ID) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `deleteone(_:key:)-413u8`

> Deletes the record identified by its primary key, and returns whether a   record was deleted.

```swift
@discardableResult static func deleteOne(_ db: Database, key: some DatabaseValueConvertible) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `deleteone(_:key:)-5pdh5`

> Deletes the record identified by its primary or unique key, and returns   whether a record was deleted.

```swift
@discardableResult static func deleteOne(_ db: Database, key: [String : (any DatabaseValueConvertible)?]) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `exists(_:id:)`

> Returns whether a record exists for this primary key.

```swift
static func exists(_ db: Database, id: ID) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `exists(_:key:)-60hf2`

> Returns whether a record exists for this primary key.

```swift
static func exists(_ db: Database, key: some DatabaseValueConvertible) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `exists(_:key:)-6ha6`

> Returns whether a record exists for this primary or unique key.

```swift
static func exists(_ db: Database, key: [String : (any DatabaseValueConvertible)?]) throws -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `fetchcount(_:)`

> Returns the number of records in the database table.

```swift
static func fetchCount(_ db: Database) throws -> Int
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `filter(_:)-4xvdh`

> Returns a request filtered with a boolean SQL expression.

```swift
static func filter(_ predicate: (DatabaseComponents) throws -> any SQLSpecificExpressible) rethrows -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `filter(_:)-5u85w`

> Returns a request filtered with a boolean SQL expression.

```swift
static func filter(_ predicate: some SQLSpecificExpressible) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `filter(id:)`

> Returns a request filtered by primary key.

```swift
static func filter(id: ID) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `filter(ids:)`

> Returns a request filtered by primary key.

```swift
static func filter(ids: some Collection<ID>) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `filter(key:)-34lau`

> Returns a request filtered by primary key.

```swift
static func filter(key: some DatabaseValueConvertible) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `filter(key:)-9ey53`

> Returns a request filtered by primary or unique key.

```swift
static func filter(key: [String : (any DatabaseValueConvertible)?]?) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `filter(keys:)-4hq8y`

> Returns a request filtered by primary or unique key.

```swift
static func filter(keys: [[String : (any DatabaseValueConvertible)?]]) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `filter(keys:)-s1q0`

> Returns a request filtered by primary key.

```swift
static func filter(keys: some Collection<some DatabaseValueConvertible>) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `filter(literal:)`

> Returns a request filtered with an    literal.

```swift
static func filter(literal sqlLiteral: SQL) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `filter(sql:arguments:)`

> Returns a request filtered with an SQL string.

```swift
static func filter(sql: String, arguments: StatementArguments = StatementArguments()) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `hasmany(_:key:using:)-10d4k`

> Creates a    between    and the   destination   .

```swift
static func hasMany<Destination>(_ destination: Table<Destination>, key: String? = nil, using foreignKey: ForeignKey? = nil) -> HasManyAssociation<Self, Destination>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `hasmany(_:key:using:)-45axo`

> Creates a    between    and the   destination    type.

```swift
static func hasMany<Destination>(_ destination: Destination.Type, key: String? = nil, using foreignKey: ForeignKey? = nil) -> HasManyAssociation<Self, Destination> where Destination : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `hasmany(_:through:using:key:)`

> Creates a    between    and the   destination    type.

```swift
static func hasMany<Pivot, Target>(_ destination: Target.RowDecoder.Type, through pivot: Pivot, using target: Target, key: String? = nil) -> HasManyThroughAssociation<Self, Target.RowDecoder> where Self == Pivot.OriginRowDecoder, Pivot : Association, Target : Association, Pivot.RowDecoder == Target.OriginRowDecoder
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `hasone(_:key:using:)-4g9tm`

> Creates a    between    and the   destination    type.

```swift
static func hasOne<Destination>(_ destination: Destination.Type, key: String? = nil, using foreignKey: ForeignKey? = nil) -> HasOneAssociation<Self, Destination> where Destination : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `hasone(_:key:using:)-4v5xa`

> Creates a    between    and the   destination   .

```swift
static func hasOne<Destination>(_ destination: Table<Destination>, key: String? = nil, using foreignKey: ForeignKey? = nil) -> HasOneAssociation<Self, Destination>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `hasone(_:through:using:key:)`

> Creates a    between    and the   destination    type.

```swift
static func hasOne<Pivot, Target>(_ destination: Target.RowDecoder.Type, through pivot: Pivot, using target: Target, key: String? = nil) -> HasOneThroughAssociation<Self, Target.RowDecoder> where Self == Pivot.OriginRowDecoder, Pivot : AssociationToOne, Target : AssociationToOne, Pivot.RowDecoder == Target.OriginRowDecoder
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `having(_:)`

> Returns a request filtered according to the provided   association aggregate.

```swift
static func having(_ predicate: AssociationAggregate<Self>) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `including(all:)`

> Returns a request that fetches all records associated with each record   in this request.

```swift
static func including<A>(all association: A) -> QueryInterfaceRequest<Self> where Self == A.OriginRowDecoder, A : AssociationToMany
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `including(optional:)`

> Returns a request that fetches the eventual record associated with each   record of this request.

```swift
static func including<A>(optional association: A) -> QueryInterfaceRequest<Self> where Self == A.OriginRowDecoder, A : Association
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `including(required:)`

> Returns a request that fetches the record associated with each record in   this request. Records that do not have an associated record   are discarded.

```swift
static func including<A>(required association: A) -> QueryInterfaceRequest<Self> where Self == A.OriginRowDecoder, A : Association
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `joining(optional:)`

> Returns a request that joins each record of this request to its   eventual associated record.

```swift
static func joining<A>(optional association: A) -> QueryInterfaceRequest<Self> where Self == A.OriginRowDecoder, A : Association
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `joining(required:)`

> Returns a request that joins each record of this request to its   associated record. Records that do not have an associated record   are discarded.

```swift
static func joining<A>(required association: A) -> QueryInterfaceRequest<Self> where Self == A.OriginRowDecoder, A : Association
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `limit(_:offset:)`

> Returns a limited request.

```swift
static func limit(_ limit: Int, offset: Int? = nil) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `matching(_:)-1t8ph`

> Returns a request filtered on records that match an     full-text pattern.

```swift
static func matching(_ pattern: FTS5Pattern?) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `matching(_:)-22m4o`

> Returns a request filtered on records that match an     full-text pattern.

```swift
static func matching(_ pattern: FTS3Pattern?) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `none()`

> Returns an empty request that fetches no record.

```swift
static func none() -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `numberofselectedcolumns(_:)`

> Returns the number of selected columns.

```swift
static func numberOfSelectedColumns(_ db: Database) throws -> Int
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `order(_:)-2033k`

> Returns a request sorted according to the given SQL ordering terms.

```swift
static func order(_ orderings: any SQLOrderingTerm...) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `order(_:)-4j3ej`

> Returns a request sorted according to the given SQL ordering term.

```swift
static func order(_ orderings: (DatabaseComponents) throws -> any SQLOrderingTerm) rethrows -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `order(_:)-53dja`

> Returns a request sorted according to the given SQL ordering terms.

```swift
static func order(_ orderings: (DatabaseComponents) throws -> [any SQLOrderingTerm]) rethrows -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `order(_:)-9rc11`

> Returns a request sorted according to the given SQL ordering terms.

```swift
static func order(_ orderings: [any SQLOrderingTerm]) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `order(literal:)`

> Returns a request sorted according to the given    literal.

```swift
static func order(literal sqlLiteral: SQL) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `order(sql:arguments:)`

> Returns a request sorted according to the given SQL string.

```swift
static func order(sql: String, arguments: StatementArguments = StatementArguments()) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `orderbyprimarykey()`

> Returns a request sorted by primary key.

```swift
static func orderByPrimaryKey() -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `recordnotfound(_:)`

> Returns an error that tells that the record does not exist in   the database.

```swift
func recordNotFound(_ db: Database) -> any Error
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `recordnotfound(_:id:)`

> Returns an error for a record that does not exist in the database.

```swift
static func recordNotFound(_ db: Database, id: Self.ID) -> any Error
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `recordnotfound(_:key:)`

> Returns an error for a record that does not exist in the database.

```swift
static func recordNotFound(_ db: Database, key: some DatabaseValueConvertible) -> any Error
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `recordnotfound(key:)`

> Returns an error for a record that does not exist in the database.

```swift
static func recordNotFound(key: [String : (any DatabaseValueConvertible)?]) -> RecordError
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `request(for:)`

> Returns a request for the associated record(s).

```swift
func request<A>(for association: A) -> QueryInterfaceRequest<A.RowDecoder> where Self == A.OriginRowDecoder, A : Association
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `select(_:)-1bgd1`

> Returns a request that selects the provided result columns.

```swift
static func select(_ selection: (DatabaseComponents) throws -> any SQLSelectable) rethrows -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `select(_:)-1gvtj`

> Returns a request that selects the provided result columns.

```swift
static func select(_ selection: [any SQLSelectable]) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `select(_:)-5oylt`

> Returns a request that selects the provided result columns.

```swift
static func select(_ selection: any SQLSelectable...) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `select(_:)-8yqls`

> Returns a request that selects the provided result columns.

```swift
static func select(_ selection: (DatabaseComponents) throws -> [any SQLSelectable]) rethrows -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `select(_:as:)-1puz3`

> Returns a request that selects the provided result columns, and defines   the type of decoded rows.

```swift
static func select<RowDecoder>(_ selection: any SQLSelectable..., as type: RowDecoder.Type = RowDecoder.self) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `select(_:as:)-7zz91`

> Returns a request that selects the provided result columns, and defines   the type of decoded rows.

```swift
static func select<RowDecoder>(_ selection: (DatabaseComponents) throws -> any SQLSelectable, as type: RowDecoder.Type = RowDecoder.self) rethrows -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `select(_:as:)-tjh0`

> Returns a request that selects the provided result columns, and defines   the type of decoded rows.

```swift
static func select<RowDecoder>(_ selection: [any SQLSelectable], as type: RowDecoder.Type = RowDecoder.self) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `select(literal:)`

> Returns a request that selects the provided    literal.

```swift
static func select(literal sqlLiteral: SQL) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `select(literal:as:)`

> Returns a request that selects the provided    literal, and defines   the type of decoded rows.

```swift
static func select<RowDecoder>(literal sqlLiteral: SQL, as type: RowDecoder.Type = RowDecoder.self) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `select(sql:arguments:)`

> Returns a request that selects the provided SQL string.

```swift
static func select(sql: String, arguments: StatementArguments = StatementArguments()) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `select(sql:arguments:as:)`

> Returns a request that selects the provided SQL string, and defines the   type of decoded rows.

```swift
static func select<RowDecoder>(sql: String, arguments: StatementArguments = StatementArguments(), as type: RowDecoder.Type = RowDecoder.self) -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `selectid()`

> Returns a request that selects the primary key.

```swift
static func selectID() -> QueryInterfaceRequest<Self.ID> where Self : Identifiable
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `selectprimarykey(as:)`

> Returns a request that selects the primary key.

```swift
static func selectPrimaryKey<PrimaryKey>(as type: PrimaryKey.Type = PrimaryKey.self) -> QueryInterfaceRequest<PrimaryKey>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `updateall(_:onconflict:_:)-7atfw`

> Updates all records, and returns the number of updated records.

```swift
@discardableResult static func updateAll(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, _ assignments: [ColumnAssignment]) throws -> Int
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `updateall(_:onconflict:_:)-7vv9x`

> Updates all records, and returns the number of updated records.

```swift
@discardableResult static func updateAll(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, _ assignments: ColumnAssignment...) throws -> Int
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `updateall(_:onconflict:assignment:)`

> Updates all records, and returns the number of updated records.

```swift
@discardableResult static func updateAll(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, assignment: (DatabaseComponents) throws -> ColumnAssignment) throws -> Int
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `updateall(_:onconflict:assignments:)`

> Updates all records, and returns the number of updated records.

```swift
@discardableResult static func updateAll(_ db: Database, onConflict conflictResolution: Database.ConflictResolution? = nil, assignments: (DatabaseComponents) throws -> [ColumnAssignment]) throws -> Int
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `with(_:)`

> Returns a request that embeds a common table expression.

```swift
static func with<RowDecoder>(_ cte: CommonTableExpression<RowDecoder>) -> QueryInterfaceRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---
