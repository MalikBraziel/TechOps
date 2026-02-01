# Index

- `!(_:)`
- `!=(_:_:)-22l2b`
- `!=(_:_:)-2gqex`
- `!=(_:_:)-7g5rs`
- `!=(_:_:)-7jalr`
- `!=(_:_:)-81jed`
- `!==(_:_:)-2vmw8`
- `!==(_:_:)-5k2w9`
- `!==(_:_:)-78cs7`
- `&&(_:_:)-2a4sl`
- `&&(_:_:)-64l3s`
- `&&(_:_:)-8e4k3`
- `&(_:_:)-6zzk8`
- `&(_:_:)-7737z`
- `&(_:_:)-93c94`
- `*(_:_:)-3e3fc`
- `*(_:_:)-444gu`
- `*(_:_:)-4kpr3`
- `+(_:_:)-5z8e1`
- `+(_:_:)-69ni9`
- `+(_:_:)-6m0r0`
- `-(_:)`
- `-(_:_:)-74ia4`
- `-(_:_:)-7e2xz`
- `-(_:_:)-h5tf`
- `==(_:_:)-2wzwm`
- `==(_:_:)-5rfdv`
- `==(_:_:)-6m4io`
- `==(_:_:)-80gt7`
- `==(_:_:)-9kl3y`
- `===(_:_:)-2qbpb`
- `===(_:_:)-3fd7d`
- `===(_:_:)-6z85d`
- `_(_:_:)-12ni6`
- `_(_:_:)-1zd87`
- `_(_:_:)-24sv1`
- `_(_:_:)-259d5`
- `_(_:_:)-26cak`
- `_(_:_:)-3i5sd`
- `_(_:_:)-4fuws`
- `_(_:_:)-4o9iz`
- `_(_:_:)-4t7oa`
- `_(_:_:)-6jen`
- `_(_:_:)-8ccbo`
- `_(_:_:)-9gxdj`
- `_=(_:_:)-31gf`
- `_=(_:_:)-7dwh2`
- `_=(_:_:)-7f8x9`
- `_=(_:_:)-7s7y8`
- `_=(_:_:)-9atqm`
- `_=(_:_:)-9l097`
- `__(_:_:)-1sq8g`
- `__(_:_:)-2apb0`
- `__(_:_:)-3085s`
- `__(_:_:)-3a3bm`
- `__(_:_:)-3h9ti`
- `__(_:_:)-537rk`
- `__(_:_:)-5b6bx`
- `__(_:_:)-5hz8q`
- `__(_:_:)-69dhi`
- `__(_:_:)-94u78`
- `adapted(_:)`
- `asc`
- `ascnullslast`
- `asjson`
- `capitalized`
- `collating(_:)-25iw1`
- `collating(_:)-5ztlt`
- `contains(_:)`
- `databaseregion(_:)`
- `desc`
- `descnullsfirst`
- `exists()`
- `fetchall(_:)-119eh`
- `fetchall(_:)-19mza`
- `fetchall(_:)-29be5`
- `fetchall(_:)-9wzq7`
- `fetchcount(_:)`
- `fetchcursor(_:)-8glca`
- `fetchcursor(_:)-8mfai`
- `fetchcursor(_:)-fulb`
- `fetchcursor(_:)-hztc`
- `fetchone(_:)-5e4el`
- `fetchone(_:)-5x0o8`
- `fetchone(_:)-70ghr`
- `fetchone(_:)-9c6t5`
- `fetchrequest-implementations`
- `fetchset(_:)-619ui`
- `fetchset(_:)-85hu6`
- `fetchset(_:)-aush`
- `fetchset(_:)-ddd4`
- `forkey(_:)`
- `like(_:escape:)`
- `localizedcapitalized`
- `localizedlowercased`
- `localizeduppercased`
- `lowercased`
- `makepreparedrequest(_:forsingleresult:)`
- `rowdecoder`
- `sqlexpression`
- `sqlordering`
- `sqlorderingterm-implementations`
- `sqlselectable-implementations`
- `sqlselection`
- `sqlspecificexpressible-implementations`
- `sqlsubquery`
- `sqlsubqueryable-implementations`
- `uppercased`
- `~(_:)`

---


## `!(_:)`

> A negated logical SQL expression.

```swift
static func ! (value: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-22l2b`

> Compares two SQL expressions.

```swift
static func != (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-2gqex`

> Compares two SQL expressions.

```swift
static func != (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-7g5rs`

> The    SQL operator.

```swift
static func != (lhs: Self, rhs: Bool) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-7jalr`

> The    SQL operator.

```swift
static func != (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-81jed`

> The    SQL operator.

```swift
static func != (lhs: Bool, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!==(_:_:)-2vmw8`

> The    SQL operator.

```swift
static func !== (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!==(_:_:)-5k2w9`

> The    SQL operator.

```swift
static func !== (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!==(_:_:)-78cs7`

> The    SQL operator.

```swift
static func !== (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&&(_:_:)-2a4sl`

> The    SQL operator.

```swift
static func && (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&&(_:_:)-64l3s`

> The    SQL operator.

```swift
static func && (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&&(_:_:)-8e4k3`

> The    SQL operator.

```swift
static func && (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&(_:_:)-6zzk8`

> The    SQL operator.

```swift
static func & (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&(_:_:)-7737z`

> The    SQL operator.

```swift
static func & (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&(_:_:)-93c94`

> The    SQL operator.

```swift
static func & (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `*(_:_:)-3e3fc`

> The    SQL operator.

```swift
static func * (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `*(_:_:)-444gu`

> The    SQL operator.

```swift
static func * (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `*(_:_:)-4kpr3`

> The    SQL operator.

```swift
static func * (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+(_:_:)-5z8e1`

> The    SQL operator.

```swift
static func + (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+(_:_:)-69ni9`

> The    SQL operator.

```swift
static func + (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+(_:_:)-6m0r0`

> The    SQL operator.

```swift
static func + (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `-(_:)`

> The    SQL operator.

```swift
static func - (value: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `-(_:_:)-74ia4`

> The    SQL operator.

```swift
static func - (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `-(_:_:)-7e2xz`

> The    SQL operator.

```swift
static func - (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `-(_:_:)-h5tf`

> The    SQL operator.

```swift
static func - (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-2wzwm`

> Compares two SQL expressions.

```swift
static func == (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-5rfdv`

> The    SQL operator.

```swift
static func == (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-6m4io`

> The    SQL operator.

```swift
static func == (lhs: Bool, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-80gt7`

> Compares two SQL expressions.

```swift
static func == (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-9kl3y`

> The    SQL operator.

```swift
static func == (lhs: Self, rhs: Bool) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `===(_:_:)-2qbpb`

> The    SQL operator.

```swift
static func === (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `===(_:_:)-3fd7d`

> The    SQL operator.

```swift
static func === (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `===(_:_:)-6z85d`

> The    SQL operator.

```swift
static func === (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-12ni6`

> The    SQL operator.

```swift
static func < (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-1zd87`

> The    SQL operator.

```swift
static func | (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-24sv1`

> The    SQL operator.

```swift
static func < (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-259d5`

> The    SQL operator.

```swift
static func > (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-26cak`

> The    SQL operator.

```swift
static func > (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-3i5sd`

> The    SQL operator.

```swift
static func / (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-4fuws`

> The    SQL operator.

```swift
static func | (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-4o9iz`

> The    SQL operator.

```swift
static func | (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-4t7oa`

> The    SQL operator.

```swift
static func > (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-6jen`

> The    SQL operator.

```swift
static func < (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-8ccbo`

> The    SQL operator.

```swift
static func / (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-9gxdj`

> The    SQL operator.

```swift
static func / (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-31gf`

> The    SQL operator.

```swift
static func >= (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-7dwh2`

> The    SQL operator.

```swift
static func >= (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-7f8x9`

> The    SQL operator.

```swift
static func <= (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-7s7y8`

> The    SQL operator.

```swift
static func >= (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-9atqm`

> The    SQL operator.

```swift
static func <= (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-9l097`

> The    SQL operator.

```swift
static func <= (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-1sq8g`

> The    SQL function.

```swift
static func ?? (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-2apb0`

> The    SQL operator.

```swift
static func << (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-3085s`

> The    SQL operator.

```swift
static func << (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-3a3bm`

> The    SQL operator.

```swift
static func >> (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-3h9ti`

> The    SQL operator.

```swift
static func << (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-537rk`

> The    SQL operator.

```swift
static func || (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-5b6bx`

> The    SQL operator.

```swift
static func >> (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-5hz8q`

> The    SQL operator.

```swift
static func || (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-69dhi`

> The    SQL operator.

```swift
static func || (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-94u78`

> The    SQL operator.

```swift
static func >> (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `adapted(_:)`

> Returns an adapted request.

```swift
func adapted(_ adapter: @escaping (Database) throws -> any RowAdapter) -> AdaptedFetchRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `asc`

> An ordering term for ascending order (nulls first).

```swift
var asc: SQLOrdering { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `ascnullslast`

> An ordering term for ascending order (nulls last).

```swift
var ascNullsLast: SQLOrdering { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `asjson`

> Returns an expression that is interpreted as a JSON value.

```swift
var asJSON: AnySQLJSONExpressible { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `capitalized`

> An SQL expression that calls the Foundation     property.

```swift
var capitalized: SQLExpression { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `collating(_:)-25iw1`

> Returns a collated expression.

```swift
func collating(_ collation: DatabaseCollation) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `collating(_:)-5ztlt`

> Returns a collated expression.

```swift
func collating(_ collation: Database.CollationName) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `contains(_:)`

> Returns an expression that checks the inclusion of the expression in   the subquery.

```swift
func contains(_ element: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `databaseregion(_:)`

> Returns the database region that the request feeds from.

```swift
func databaseRegion(_ db: Database) throws -> DatabaseRegion
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `desc`

> An ordering term for descending order (nulls last).

```swift
var desc: SQLOrdering { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `descnullsfirst`

> An ordering term for descending order (nulls first).

```swift
var descNullsFirst: SQLOrdering { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `exists()`

> Returns an expression that is true if and only if the subquery would   return one or more rows.

```swift
func exists() -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchall(_:)-119eh`

> Returns an array of fetched rows.

```swift
func fetchAll(_ db: Database) throws -> [Row]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchall(_:)-19mza`

> Returns an array of fetched records.

```swift
func fetchAll(_ db: Database) throws -> [RowDecoder]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchall(_:)-29be5`

> Returns an array of fetched values.

```swift
func fetchAll(_ db: Database) throws -> [RowDecoder]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchall(_:)-9wzq7`

> Returns an array of fetched values.

```swift
func fetchAll(_ db: Database) throws -> [RowDecoder]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchcount(_:)`

> Returns the number of rows fetched by the request.

```swift
func fetchCount(_ db: Database) throws -> Int
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchcursor(_:)-8glca`

> Returns a cursor over fetched records.

```swift
func fetchCursor(_ db: Database) throws -> RecordCursor<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchcursor(_:)-8mfai`

> Returns a cursor over fetched values.

```swift
func fetchCursor(_ db: Database) throws -> FastDatabaseValueCursor<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchcursor(_:)-fulb`

> Returns a cursor over fetched values.

```swift
func fetchCursor(_ db: Database) throws -> DatabaseValueCursor<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchcursor(_:)-hztc`

> Returns a cursor over fetched rows.

```swift
func fetchCursor(_ db: Database) throws -> RowCursor
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchone(_:)-5e4el`

> Returns a single row.

```swift
func fetchOne(_ db: Database) throws -> Row?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchone(_:)-5x0o8`

> Returns a single record.

```swift
func fetchOne(_ db: Database) throws -> RowDecoder?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchone(_:)-70ghr`

> Returns a single fetched value.

```swift
func fetchOne(_ db: Database) throws -> RowDecoder?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchone(_:)-9c6t5`

> Returns a single fetched value.

```swift
func fetchOne(_ db: Database) throws -> RowDecoder?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchrequest-implementations`

- **Role Heading:** API Collection


---

## `fetchset(_:)-619ui`

> Returns a set of fetched values.

```swift
func fetchSet(_ db: Database) throws -> Set<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchset(_:)-85hu6`

> Returns a set of fetched values.

```swift
func fetchSet(_ db: Database) throws -> Set<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchset(_:)-aush`

> Returns a set of fetched records.

```swift
func fetchSet(_ db: Database) throws -> Set<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchset(_:)-ddd4`

> Returns a set of fetched rows.

```swift
func fetchSet(_ db: Database) throws -> Set<Row>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `forkey(_:)`

> Returns an aliased result column.

```swift
func forKey(_ key: String) -> SQLSelection
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `like(_:escape:)`

> The    SQL operator.

```swift
func like(_ pattern: some SQLExpressible, escape: (any SQLExpressible)? = nil) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `localizedcapitalized`

> An SQL expression that calls the Foundation     property.

```swift
var localizedCapitalized: SQLExpression { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `localizedlowercased`

> An SQL expression that calls the Foundation     property.

```swift
var localizedLowercased: SQLExpression { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `localizeduppercased`

> An SQL expression that calls the Foundation     property.

```swift
var localizedUppercased: SQLExpression { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `lowercased`

> An SQL expression that calls the Swift     method.

```swift
var lowercased: SQLExpression { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `makepreparedrequest(_:forsingleresult:)`

> Returns a   .

```swift
func makePreparedRequest(_ db: Database, forSingleResult singleResult: Bool = false) throws -> PreparedRequest
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `rowdecoder`

> The type that tells how fetched database rows should be interpreted.

```swift
typealias RowDecoder = Base.RowDecoder
```

- **Symbol Kind:** typealias

- **Role Heading:** Type Alias


---

## `sqlexpression`

> Returns a subquery expression.

```swift
var sqlExpression: SQLExpression { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `sqlordering`

> Returns an SQL ordering.

```swift
var sqlOrdering: SQLOrdering { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `sqlorderingterm-implementations`

- **Role Heading:** API Collection


---

## `sqlselectable-implementations`

- **Role Heading:** API Collection


---

## `sqlselection`

> Returns an SQL selection.

```swift
var sqlSelection: SQLSelection { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `sqlspecificexpressible-implementations`

- **Role Heading:** API Collection


---

## `sqlsubquery`

> Inherited from   .

```swift
var sqlSubquery: SQLSubquery { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `sqlsubqueryable-implementations`

- **Role Heading:** API Collection


---

## `uppercased`

> An SQL expression that calls the Swift     method.

```swift
var uppercased: SQLExpression { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `~(_:)`

> The    SQL operator.

```swift
static func ~ (value: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---
