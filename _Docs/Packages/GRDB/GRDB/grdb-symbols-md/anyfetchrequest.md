# Index

- `!(_:)`
- `!=(_:_:)-1eqiw`
- `!=(_:_:)-4ujdv`
- `!=(_:_:)-68kpe`
- `!=(_:_:)-8191y`
- `!=(_:_:)-83oh4`
- `!==(_:_:)-6ien0`
- `!==(_:_:)-7jr8m`
- `!==(_:_:)-9fc54`
- `&&(_:_:)-55ons`
- `&&(_:_:)-6stq2`
- `&&(_:_:)-8cmxn`
- `&(_:_:)-1kyhs`
- `&(_:_:)-2zvja`
- `&(_:_:)-3ouku`
- `*(_:_:)-6fpha`
- `*(_:_:)-cddn`
- `*(_:_:)-x0lt`
- `+(_:_:)-1ebis`
- `+(_:_:)-6w11s`
- `+(_:_:)-vc5c`
- `-(_:)`
- `-(_:_:)-4n01l`
- `-(_:_:)-7gf5m`
- `-(_:_:)-7gfej`
- `==(_:_:)-1j8uf`
- `==(_:_:)-3mz0d`
- `==(_:_:)-4mtgi`
- `==(_:_:)-62wy7`
- `==(_:_:)-s9jg`
- `===(_:_:)-5sx9t`
- `===(_:_:)-88pf8`
- `===(_:_:)-yaov`
- `_(_:_:)-1kmg5`
- `_(_:_:)-2mk0x`
- `_(_:_:)-4y9uk`
- `_(_:_:)-5gbt5`
- `_(_:_:)-5tvma`
- `_(_:_:)-60vn9`
- `_(_:_:)-7mnm3`
- `_(_:_:)-8gbko`
- `_(_:_:)-96m6s`
- `_(_:_:)-9ssy9`
- `_(_:_:)-9vsa9`
- `_(_:_:)-jfov`
- `_=(_:_:)-2fntg`
- `_=(_:_:)-374n8`
- `_=(_:_:)-5h1ak`
- `_=(_:_:)-605nz`
- `_=(_:_:)-7kfcr`
- `_=(_:_:)-84chg`
- `__(_:_:)-1mfyj`
- `__(_:_:)-2q10c`
- `__(_:_:)-45w6j`
- `__(_:_:)-615p0`
- `__(_:_:)-6c56d`
- `__(_:_:)-6y6fd`
- `__(_:_:)-72fs3`
- `__(_:_:)-8ttxr`
- `__(_:_:)-8u913`
- `__(_:_:)-93dsf`
- `adapted(_:)`
- `asc`
- `ascnullslast`
- `asjson`
- `asrequest(of:)`
- `capitalized`
- `collating(_:)-5xw28`
- `collating(_:)-7x8gi`
- `contains(_:)`
- `databaseregion(_:)`
- `desc`
- `descnullsfirst`
- `exists()`
- `fetchall(_:)-2dvh5`
- `fetchall(_:)-4q9o1`
- `fetchall(_:)-7afca`
- `fetchall(_:)-7cpmf`
- `fetchcount(_:)`
- `fetchcursor(_:)-1622y`
- `fetchcursor(_:)-1w670`
- `fetchcursor(_:)-22bd9`
- `fetchcursor(_:)-9ghvh`
- `fetchone(_:)-5gdbm`
- `fetchone(_:)-99y4e`
- `fetchone(_:)-9dz2x`
- `fetchone(_:)-9oita`
- `fetchrequest-implementations`
- `fetchset(_:)-5avah`
- `fetchset(_:)-63vjs`
- `fetchset(_:)-9fzmv`
- `fetchset(_:)-9jiny`
- `forkey(_:)`
- `init(_:)`
- `like(_:escape:)`
- `localizedcapitalized`
- `localizedlowercased`
- `localizeduppercased`
- `lowercased`
- `makepreparedrequest(_:forsingleresult:)`
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

## `!=(_:_:)-1eqiw`

> The    SQL operator.

```swift
static func != (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-4ujdv`

> Compares two SQL expressions.

```swift
static func != (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-68kpe`

> Compares two SQL expressions.

```swift
static func != (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-8191y`

> The    SQL operator.

```swift
static func != (lhs: Bool, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-83oh4`

> The    SQL operator.

```swift
static func != (lhs: Self, rhs: Bool) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!==(_:_:)-6ien0`

> The    SQL operator.

```swift
static func !== (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!==(_:_:)-7jr8m`

> The    SQL operator.

```swift
static func !== (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!==(_:_:)-9fc54`

> The    SQL operator.

```swift
static func !== (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&&(_:_:)-55ons`

> The    SQL operator.

```swift
static func && (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&&(_:_:)-6stq2`

> The    SQL operator.

```swift
static func && (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&&(_:_:)-8cmxn`

> The    SQL operator.

```swift
static func && (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&(_:_:)-1kyhs`

> The    SQL operator.

```swift
static func & (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&(_:_:)-2zvja`

> The    SQL operator.

```swift
static func & (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&(_:_:)-3ouku`

> The    SQL operator.

```swift
static func & (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `*(_:_:)-6fpha`

> The    SQL operator.

```swift
static func * (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `*(_:_:)-cddn`

> The    SQL operator.

```swift
static func * (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `*(_:_:)-x0lt`

> The    SQL operator.

```swift
static func * (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+(_:_:)-1ebis`

> The    SQL operator.

```swift
static func + (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+(_:_:)-6w11s`

> The    SQL operator.

```swift
static func + (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+(_:_:)-vc5c`

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

## `-(_:_:)-4n01l`

> The    SQL operator.

```swift
static func - (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `-(_:_:)-7gf5m`

> The    SQL operator.

```swift
static func - (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `-(_:_:)-7gfej`

> The    SQL operator.

```swift
static func - (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-1j8uf`

> The    SQL operator.

```swift
static func == (lhs: Self, rhs: Bool) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-3mz0d`

> The    SQL operator.

```swift
static func == (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-4mtgi`

> Compares two SQL expressions.

```swift
static func == (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-62wy7`

> Compares two SQL expressions.

```swift
static func == (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-s9jg`

> The    SQL operator.

```swift
static func == (lhs: Bool, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `===(_:_:)-5sx9t`

> The    SQL operator.

```swift
static func === (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `===(_:_:)-88pf8`

> The    SQL operator.

```swift
static func === (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `===(_:_:)-yaov`

> The    SQL operator.

```swift
static func === (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-1kmg5`

> The    SQL operator.

```swift
static func / (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-2mk0x`

> The    SQL operator.

```swift
static func / (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-4y9uk`

> The    SQL operator.

```swift
static func < (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-5gbt5`

> The    SQL operator.

```swift
static func | (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-5tvma`

> The    SQL operator.

```swift
static func / (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-60vn9`

> The    SQL operator.

```swift
static func > (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-7mnm3`

> The    SQL operator.

```swift
static func > (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-8gbko`

> The    SQL operator.

```swift
static func | (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-96m6s`

> The    SQL operator.

```swift
static func < (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-9ssy9`

> The    SQL operator.

```swift
static func | (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-9vsa9`

> The    SQL operator.

```swift
static func > (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-jfov`

> The    SQL operator.

```swift
static func < (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-2fntg`

> The    SQL operator.

```swift
static func >= (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-374n8`

> The    SQL operator.

```swift
static func <= (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-5h1ak`

> The    SQL operator.

```swift
static func <= (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-605nz`

> The    SQL operator.

```swift
static func <= (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-7kfcr`

> The    SQL operator.

```swift
static func >= (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-84chg`

> The    SQL operator.

```swift
static func >= (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-1mfyj`

> The    SQL operator.

```swift
static func >> (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-2q10c`

> The    SQL operator.

```swift
static func << (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-45w6j`

> The    SQL operator.

```swift
static func << (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-615p0`

> The    SQL operator.

```swift
static func || (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-6c56d`

> The    SQL operator.

```swift
static func || (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-6y6fd`

> The    SQL function.

```swift
static func ?? (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-72fs3`

> The    SQL operator.

```swift
static func << (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-8ttxr`

> The    SQL operator.

```swift
static func >> (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-8u913`

> The    SQL operator.

```swift
static func >> (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-93dsf`

> The    SQL operator.

```swift
static func || (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
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

## `asrequest(of:)`

> Returns a request that performs an identical database query, but decodes   database rows with   .

```swift
func asRequest<T>(of type: T.Type) -> AnyFetchRequest<T>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `capitalized`

> An SQL expression that calls the Foundation     property.

```swift
var capitalized: SQLExpression { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `collating(_:)-5xw28`

> Returns a collated expression.

```swift
func collating(_ collation: DatabaseCollation) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `collating(_:)-7x8gi`

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

## `fetchall(_:)-2dvh5`

> Returns an array of fetched records.

```swift
func fetchAll(_ db: Database) throws -> [RowDecoder]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchall(_:)-4q9o1`

> Returns an array of fetched values.

```swift
func fetchAll(_ db: Database) throws -> [RowDecoder]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchall(_:)-7afca`

> Returns an array of fetched rows.

```swift
func fetchAll(_ db: Database) throws -> [Row]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchall(_:)-7cpmf`

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

## `fetchcursor(_:)-1622y`

> Returns a cursor over fetched values.

```swift
func fetchCursor(_ db: Database) throws -> FastDatabaseValueCursor<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchcursor(_:)-1w670`

> Returns a cursor over fetched records.

```swift
func fetchCursor(_ db: Database) throws -> RecordCursor<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchcursor(_:)-22bd9`

> Returns a cursor over fetched rows.

```swift
func fetchCursor(_ db: Database) throws -> RowCursor
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchcursor(_:)-9ghvh`

> Returns a cursor over fetched values.

```swift
func fetchCursor(_ db: Database) throws -> DatabaseValueCursor<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchone(_:)-5gdbm`

> Returns a single fetched value.

```swift
func fetchOne(_ db: Database) throws -> RowDecoder?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchone(_:)-99y4e`

> Returns a single fetched value.

```swift
func fetchOne(_ db: Database) throws -> RowDecoder?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchone(_:)-9dz2x`

> Returns a single row.

```swift
func fetchOne(_ db: Database) throws -> Row?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchone(_:)-9oita`

> Returns a single record.

```swift
func fetchOne(_ db: Database) throws -> RowDecoder?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchrequest-implementations`

- **Role Heading:** API Collection


---

## `fetchset(_:)-5avah`

> Returns a set of fetched records.

```swift
func fetchSet(_ db: Database) throws -> Set<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchset(_:)-63vjs`

> Returns a set of fetched rows.

```swift
func fetchSet(_ db: Database) throws -> Set<Row>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchset(_:)-9fzmv`

> Returns a set of fetched values.

```swift
func fetchSet(_ db: Database) throws -> Set<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchset(_:)-9jiny`

> Returns a set of fetched values.

```swift
func fetchSet(_ db: Database) throws -> Set<RowDecoder>
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

## `init(_:)`

> Creates a request that wraps and forwards operations to   .

```swift
init(_ request: some FetchRequest<RowDecoder>)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


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
