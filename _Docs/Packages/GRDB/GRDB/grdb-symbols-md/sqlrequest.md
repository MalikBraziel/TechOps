# Index

- `!(_:)`
- `!=(_:_:)-2jx4y`
- `!=(_:_:)-3dbi5`
- `!=(_:_:)-56ivn`
- `!=(_:_:)-6iffw`
- `!=(_:_:)-k31x`
- `!==(_:_:)-1b9zc`
- `!==(_:_:)-35dkh`
- `!==(_:_:)-3ztki`
- `&&(_:_:)-6b1ug`
- `&&(_:_:)-98dfe`
- `&&(_:_:)-be7b`
- `&(_:_:)-8f3pi`
- `&(_:_:)-8u7g`
- `&(_:_:)-92emu`
- `*(_:_:)-60jhm`
- `*(_:_:)-61h6l`
- `*(_:_:)-8q1fs`
- `+(_:_:)-42b3l`
- `+(_:_:)-4a1uv`
- `+(_:_:)-9qy5o`
- `-(_:)`
- `-(_:_:)-5o8c5`
- `-(_:_:)-78br9`
- `-(_:_:)-8xboj`
- `==(_:_:)-3rhpj`
- `==(_:_:)-6k00e`
- `==(_:_:)-8bmcd`
- `==(_:_:)-8k4kr`
- `==(_:_:)-8vamp`
- `===(_:_:)-4zzy9`
- `===(_:_:)-50ptn`
- `===(_:_:)-9wsrj`
- `_(_:_:)-597g3`
- `_(_:_:)-64ljx`
- `_(_:_:)-6beqm`
- `_(_:_:)-6fnjq`
- `_(_:_:)-6rzrm`
- `_(_:_:)-74y1s`
- `_(_:_:)-7gb4c`
- `_(_:_:)-7k6pp`
- `_(_:_:)-86wij`
- `_(_:_:)-8uifc`
- `_(_:_:)-945ss`
- `_(_:_:)-c0lc`
- `_=(_:_:)-2y5ka`
- `_=(_:_:)-3ai1j`
- `_=(_:_:)-4pvl4`
- `_=(_:_:)-9li3v`
- `_=(_:_:)-9s4wo`
- `_=(_:_:)-zf7o`
- `__(_:_:)-13vc2`
- `__(_:_:)-1ndrb`
- `__(_:_:)-21riu`
- `__(_:_:)-3ozcy`
- `__(_:_:)-532pz`
- `__(_:_:)-5zqla`
- `__(_:_:)-63jco`
- `__(_:_:)-91fhy`
- `__(_:_:)-9vno1`
- `__(_:_:)-eisr`
- `adapted(_:)`
- `adapter`
- `asc`
- `ascnullslast`
- `asjson`
- `capitalized`
- `collating(_:)-6qn9u`
- `collating(_:)-9q3kv`
- `contains(_:)`
- `databaseregion(_:)`
- `desc`
- `descnullsfirst`
- `exists()`
- `expressiblebyextendedgraphemeclusterliteral-implementations`
- `expressiblebystringinterpolation-implementations`
- `expressiblebystringliteral-implementations`
- `expressiblebyunicodescalarliteral-implementations`
- `fetchall(_:)-5cjc8`
- `fetchall(_:)-951rq`
- `fetchall(_:)-9lwzc`
- `fetchall(_:)-9wek5`
- `fetchcount(_:)`
- `fetchcursor(_:)-5bdiw`
- `fetchcursor(_:)-6b412`
- `fetchcursor(_:)-99e5t`
- `fetchcursor(_:)-9wq5y`
- `fetchone(_:)-4iq4b`
- `fetchone(_:)-5wnlu`
- `fetchone(_:)-8dq75`
- `fetchone(_:)-95093`
- `fetchrequest-implementations`
- `fetchset(_:)-2h6mv`
- `fetchset(_:)-2qwa5`
- `fetchset(_:)-3nywd`
- `fetchset(_:)-4hdu6`
- `forkey(_:)`
- `init(extendedgraphemeclusterliteral:)-7mroi`
- `init(extendedgraphemeclusterliteral:)`
- `init(literal:adapter:cached:)-4vuxn`
- `init(literal:adapter:cached:)-82f97`
- `init(sql:arguments:adapter:cached:)-3qq8t`
- `init(sql:arguments:adapter:cached:)-5ecx2`
- `init(stringinterpolation:)`
- `init(stringliteral:)`
- `init(unicodescalarliteral:)-17xe7`
- `init(unicodescalarliteral:)`
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

## `!=(_:_:)-2jx4y`

> The    SQL operator.

```swift
static func != (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-3dbi5`

> Compares two SQL expressions.

```swift
static func != (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-56ivn`

> The    SQL operator.

```swift
static func != (lhs: Self, rhs: Bool) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-6iffw`

> The    SQL operator.

```swift
static func != (lhs: Bool, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-k31x`

> Compares two SQL expressions.

```swift
static func != (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!==(_:_:)-1b9zc`

> The    SQL operator.

```swift
static func !== (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!==(_:_:)-35dkh`

> The    SQL operator.

```swift
static func !== (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!==(_:_:)-3ztki`

> The    SQL operator.

```swift
static func !== (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&&(_:_:)-6b1ug`

> The    SQL operator.

```swift
static func && (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&&(_:_:)-98dfe`

> The    SQL operator.

```swift
static func && (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&&(_:_:)-be7b`

> The    SQL operator.

```swift
static func && (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&(_:_:)-8f3pi`

> The    SQL operator.

```swift
static func & (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&(_:_:)-8u7g`

> The    SQL operator.

```swift
static func & (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&(_:_:)-92emu`

> The    SQL operator.

```swift
static func & (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `*(_:_:)-60jhm`

> The    SQL operator.

```swift
static func * (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `*(_:_:)-61h6l`

> The    SQL operator.

```swift
static func * (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `*(_:_:)-8q1fs`

> The    SQL operator.

```swift
static func * (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+(_:_:)-42b3l`

> The    SQL operator.

```swift
static func + (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+(_:_:)-4a1uv`

> The    SQL operator.

```swift
static func + (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+(_:_:)-9qy5o`

> The    SQL operator.

```swift
static func + (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
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

## `-(_:_:)-5o8c5`

> The    SQL operator.

```swift
static func - (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `-(_:_:)-78br9`

> The    SQL operator.

```swift
static func - (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `-(_:_:)-8xboj`

> The    SQL operator.

```swift
static func - (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-3rhpj`

> The    SQL operator.

```swift
static func == (lhs: Self, rhs: Bool) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-6k00e`

> Compares two SQL expressions.

```swift
static func == (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-8bmcd`

> Compares two SQL expressions.

```swift
static func == (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-8k4kr`

> The    SQL operator.

```swift
static func == (lhs: Bool, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-8vamp`

> The    SQL operator.

```swift
static func == (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `===(_:_:)-4zzy9`

> The    SQL operator.

```swift
static func === (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `===(_:_:)-50ptn`

> The    SQL operator.

```swift
static func === (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `===(_:_:)-9wsrj`

> The    SQL operator.

```swift
static func === (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-597g3`

> The    SQL operator.

```swift
static func > (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-64ljx`

> The    SQL operator.

```swift
static func | (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-6beqm`

> The    SQL operator.

```swift
static func | (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-6fnjq`

> The    SQL operator.

```swift
static func > (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-6rzrm`

> The    SQL operator.

```swift
static func > (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-74y1s`

> The    SQL operator.

```swift
static func / (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-7gb4c`

> The    SQL operator.

```swift
static func | (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-7k6pp`

> The    SQL operator.

```swift
static func / (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-86wij`

> The    SQL operator.

```swift
static func < (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-8uifc`

> The    SQL operator.

```swift
static func < (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-945ss`

> The    SQL operator.

```swift
static func < (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-c0lc`

> The    SQL operator.

```swift
static func / (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-2y5ka`

> The    SQL operator.

```swift
static func >= (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-3ai1j`

> The    SQL operator.

```swift
static func <= (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-4pvl4`

> The    SQL operator.

```swift
static func <= (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-9li3v`

> The    SQL operator.

```swift
static func >= (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-9s4wo`

> The    SQL operator.

```swift
static func <= (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-zf7o`

> The    SQL operator.

```swift
static func >= (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-13vc2`

> The    SQL operator.

```swift
static func << (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-1ndrb`

> The    SQL operator.

```swift
static func << (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-21riu`

> The    SQL operator.

```swift
static func >> (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-3ozcy`

> The    SQL function.

```swift
static func ?? (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-532pz`

> The    SQL operator.

```swift
static func >> (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-5zqla`

> The    SQL operator.

```swift
static func >> (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-63jco`

> The    SQL operator.

```swift
static func << (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-91fhy`

> The    SQL operator.

```swift
static func || (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-9vno1`

> The    SQL operator.

```swift
static func || (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-eisr`

> The    SQL operator.

```swift
static func || (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
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

## `adapter`

> The row adapter.

```swift
var adapter: (any RowAdapter)?
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


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

## `collating(_:)-6qn9u`

> Returns a collated expression.

```swift
func collating(_ collation: Database.CollationName) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `collating(_:)-9q3kv`

> Returns a collated expression.

```swift
func collating(_ collation: DatabaseCollation) -> SQLExpression
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

## `expressiblebyextendedgraphemeclusterliteral-implementations`

- **Role Heading:** API Collection


---

## `expressiblebystringinterpolation-implementations`

- **Role Heading:** API Collection


---

## `expressiblebystringliteral-implementations`

- **Role Heading:** API Collection


---

## `expressiblebyunicodescalarliteral-implementations`

- **Role Heading:** API Collection


---

## `fetchall(_:)-5cjc8`

> Returns an array of fetched values.

```swift
func fetchAll(_ db: Database) throws -> [RowDecoder]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchall(_:)-951rq`

> Returns an array of fetched rows.

```swift
func fetchAll(_ db: Database) throws -> [Row]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchall(_:)-9lwzc`

> Returns an array of fetched values.

```swift
func fetchAll(_ db: Database) throws -> [RowDecoder]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchall(_:)-9wek5`

> Returns an array of fetched records.

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

## `fetchcursor(_:)-5bdiw`

> Returns a cursor over fetched values.

```swift
func fetchCursor(_ db: Database) throws -> FastDatabaseValueCursor<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchcursor(_:)-6b412`

> Returns a cursor over fetched rows.

```swift
func fetchCursor(_ db: Database) throws -> RowCursor
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchcursor(_:)-99e5t`

> Returns a cursor over fetched records.

```swift
func fetchCursor(_ db: Database) throws -> RecordCursor<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchcursor(_:)-9wq5y`

> Returns a cursor over fetched values.

```swift
func fetchCursor(_ db: Database) throws -> DatabaseValueCursor<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchone(_:)-4iq4b`

> Returns a single fetched value.

```swift
func fetchOne(_ db: Database) throws -> RowDecoder?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchone(_:)-5wnlu`

> Returns a single fetched value.

```swift
func fetchOne(_ db: Database) throws -> RowDecoder?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchone(_:)-8dq75`

> Returns a single row.

```swift
func fetchOne(_ db: Database) throws -> Row?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchone(_:)-95093`

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

## `fetchset(_:)-2h6mv`

> Returns a set of fetched values.

```swift
func fetchSet(_ db: Database) throws -> Set<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchset(_:)-2qwa5`

> Returns a set of fetched rows.

```swift
func fetchSet(_ db: Database) throws -> Set<Row>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchset(_:)-3nywd`

> Returns a set of fetched values.

```swift
func fetchSet(_ db: Database) throws -> Set<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchset(_:)-4hdu6`

> Returns a set of fetched records.

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

## `init(extendedgraphemeclusterliteral:)-7mroi`

> Inherited from   .

```swift
init(extendedGraphemeClusterLiteral value: Self.StringLiteralType)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(extendedgraphemeclusterliteral:)`

> Inherited from   .

```swift
init(extendedGraphemeClusterLiteral: String)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(literal:adapter:cached:)-4vuxn`

> Creates a request from an    literal.

```swift
init(literal sqlLiteral: SQL, adapter: (any RowAdapter)? = nil, cached: Bool = false)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(literal:adapter:cached:)-82f97`

> Creates a request of database rows, from an    literal.

```swift
init(literal sqlLiteral: SQL, adapter: (any RowAdapter)? = nil, cached: Bool = false)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(sql:arguments:adapter:cached:)-3qq8t`

> Creates a request from an SQL string.

```swift
init(sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil, cached: Bool = false)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(sql:arguments:adapter:cached:)-5ecx2`

> Creates a request of database rows, from an SQL string.

```swift
init(sql: String, arguments: StatementArguments = StatementArguments(), adapter: (any RowAdapter)? = nil, cached: Bool = false)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(stringinterpolation:)`

> Inherited from   .

```swift
init(stringInterpolation sqlInterpolation: SQLInterpolation)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(stringliteral:)`

> Creates an    from the given literal SQL string.

```swift
init(stringLiteral: String)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(unicodescalarliteral:)-17xe7`

> Inherited from   .

```swift
init(unicodeScalarLiteral value: Self.ExtendedGraphemeClusterLiteralType)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(unicodescalarliteral:)`

> Inherited from   .

```swift
init(unicodeScalarLiteral: String)
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
