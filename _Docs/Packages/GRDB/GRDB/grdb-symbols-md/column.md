# Index

- `!(_:)`
- `!=(_:_:)-26vx3`
- `!=(_:_:)-34om8`
- `!=(_:_:)-3r2wk`
- `!=(_:_:)-83r3m`
- `!=(_:_:)-9mvmu`
- `!==(_:_:)-3c4e4`
- `!==(_:_:)-4art4`
- `!==(_:_:)-82mi1`
- `&&(_:_:)-2z9bo`
- `&&(_:_:)-4gfos`
- `&&(_:_:)-lws4`
- `&(_:_:)-1xdrn`
- `&(_:_:)-3qzbn`
- `&(_:_:)-64g1b`
- `&=(_:_:)`
- `*(_:_:)-36tt2`
- `*(_:_:)-702kb`
- `*(_:_:)-9rrnx`
- `*=(_:_:)`
- `+(_:_:)-2xj0u`
- `+(_:_:)-62n0u`
- `+(_:_:)-6erpf`
- `+=(_:_:)`
- `-(_:)`
- `-(_:_:)-1nj7u`
- `-(_:_:)-227kz`
- `-(_:_:)-3mjn5`
- `-=(_:_:)`
- `==(_:_:)-1ktvm`
- `==(_:_:)-33gyk`
- `==(_:_:)-6aabe`
- `==(_:_:)-9dwia`
- `==(_:_:)-9tw5k`
- `===(_:_:)-1j1ub`
- `===(_:_:)-8oix`
- `===(_:_:)-90w69`
- `_(_:_:)-19828`
- `_(_:_:)-22ld8`
- `_(_:_:)-3vzq4`
- `_(_:_:)-3w2ti`
- `_(_:_:)-4a8xg`
- `_(_:_:)-5jocl`
- `_(_:_:)-71wsf`
- `_(_:_:)-72pu4`
- `_(_:_:)-8aco3`
- `_(_:_:)-8bwbo`
- `_(_:_:)-8rzn8`
- `_(_:_:)-mold`
- `_=(_:_:)-27qk7`
- `_=(_:_:)-2ztku`
- `_=(_:_:)-30xsw`
- `_=(_:_:)-5gam6`
- `_=(_:_:)-8lt8u`
- `_=(_:_:)-95cvu`
- `_=(_:_:)-c1o3`
- `_=(_:_:)-cz5l`
- `__(_:_:)-26dmq`
- `__(_:_:)-3k41h`
- `__(_:_:)-3ledk`
- `__(_:_:)-4pzv8`
- `__(_:_:)-662f`
- `__(_:_:)-6a6ym`
- `__(_:_:)-6jcmx`
- `__(_:_:)-72acx`
- `__(_:_:)-8bxg1`
- `__(_:_:)-e5w7`
- `__=(_:_:)-31rg`
- `__=(_:_:)-9xppk`
- `asc`
- `ascnullslast`
- `asjson`
- `capitalized`
- `collating(_:)-2qq8y`
- `collating(_:)-6arrp`
- `columnexpression-implementations`
- `desc`
- `descnullsfirst`
- `detached`
- `forkey(_:)`
- `init(_:)-5grmu`
- `init(_:)-7xc4z`
- `like(_:escape:)`
- `localizedcapitalized`
- `localizedlowercased`
- `localizeduppercased`
- `lowercased`
- `match(_:)-4tp9q`
- `match(_:)-7sh11`
- `name`
- `nooverwrite`
- `rank`
- `rowid-5trxi`
- `rowid-9x7ux`
- `rowid-msvj`
- `rowid`
- `set(to:)`
- `sqlexpressible-implementations`
- `sqlexpression`
- `sqlordering`
- `sqlorderingterm-implementations`
- `sqlselectable-implementations`
- `sqlselection`
- `sqlspecificexpressible-implementations`
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

## `!=(_:_:)-26vx3`

> Compares two SQL expressions.

```swift
static func != (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-34om8`

> Compares two SQL expressions.

```swift
static func != (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-3r2wk`

> The    SQL operator.

```swift
static func != (lhs: Self, rhs: Bool) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-83r3m`

> The    SQL operator.

```swift
static func != (lhs: Bool, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-9mvmu`

> The    SQL operator.

```swift
static func != (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!==(_:_:)-3c4e4`

> The    SQL operator.

```swift
static func !== (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!==(_:_:)-4art4`

> The    SQL operator.

```swift
static func !== (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!==(_:_:)-82mi1`

> The    SQL operator.

```swift
static func !== (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&&(_:_:)-2z9bo`

> The    SQL operator.

```swift
static func && (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&&(_:_:)-4gfos`

> The    SQL operator.

```swift
static func && (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&&(_:_:)-lws4`

> The    SQL operator.

```swift
static func && (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&(_:_:)-1xdrn`

> The    SQL operator.

```swift
static func & (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&(_:_:)-3qzbn`

> The    SQL operator.

```swift
static func & (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&(_:_:)-64g1b`

> The    SQL operator.

```swift
static func & (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&=(_:_:)`

> Creates an assignment that applies a bitwise and.

```swift
static func &= (column: Self, value: some SQLExpressible) -> ColumnAssignment
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `*(_:_:)-36tt2`

> The    SQL operator.

```swift
static func * (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `*(_:_:)-702kb`

> The    SQL operator.

```swift
static func * (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `*(_:_:)-9rrnx`

> The    SQL operator.

```swift
static func * (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `*=(_:_:)`

> Creates an assignment that multiplies by an SQL expression.

```swift
static func *= (column: Self, value: some SQLExpressible) -> ColumnAssignment
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+(_:_:)-2xj0u`

> The    SQL operator.

```swift
static func + (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+(_:_:)-62n0u`

> The    SQL operator.

```swift
static func + (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+(_:_:)-6erpf`

> The    SQL operator.

```swift
static func + (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+=(_:_:)`

> Creates an assignment that adds an SQL expression.

```swift
static func += (column: Self, value: some SQLExpressible) -> ColumnAssignment
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

## `-(_:_:)-1nj7u`

> The    SQL operator.

```swift
static func - (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `-(_:_:)-227kz`

> The    SQL operator.

```swift
static func - (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `-(_:_:)-3mjn5`

> The    SQL operator.

```swift
static func - (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `-=(_:_:)`

> Creates an assignment that subtracts an SQL expression.

```swift
static func -= (column: Self, value: some SQLExpressible) -> ColumnAssignment
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-1ktvm`

> The    SQL operator.

```swift
static func == (lhs: Bool, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-33gyk`

> The    SQL operator.

```swift
static func == (lhs: Self, rhs: Bool) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-6aabe`

> The    SQL operator.

```swift
static func == (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-9dwia`

> Compares two SQL expressions.

```swift
static func == (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-9tw5k`

> Compares two SQL expressions.

```swift
static func == (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `===(_:_:)-1j1ub`

> The    SQL operator.

```swift
static func === (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `===(_:_:)-8oix`

> The    SQL operator.

```swift
static func === (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `===(_:_:)-90w69`

> The    SQL operator.

```swift
static func === (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-19828`

> The    SQL operator.

```swift
static func | (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-22ld8`

> The    SQL operator.

```swift
static func > (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-3vzq4`

> The    SQL operator.

```swift
static func < (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-3w2ti`

> The    SQL operator.

```swift
static func < (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-4a8xg`

> The    SQL operator.

```swift
static func > (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-5jocl`

> The    SQL operator.

```swift
static func < (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-71wsf`

> The    SQL operator.

```swift
static func / (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-72pu4`

> The    SQL operator.

```swift
static func / (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-8aco3`

> The    SQL operator.

```swift
static func | (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-8bwbo`

> The    SQL operator.

```swift
static func > (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-8rzn8`

> The    SQL operator.

```swift
static func / (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-mold`

> The    SQL operator.

```swift
static func | (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-27qk7`

> The    SQL operator.

```swift
static func >= (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-2ztku`

> Creates an assignment that applies a bitwise or.

```swift
static func |= (column: Self, value: some SQLExpressible) -> ColumnAssignment
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-30xsw`

> The    SQL operator.

```swift
static func <= (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-5gam6`

> The    SQL operator.

```swift
static func <= (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-8lt8u`

> The    SQL operator.

```swift
static func >= (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-95cvu`

> Creates an assignment that divides by an SQL expression.

```swift
static func /= (column: Self, value: some SQLExpressible) -> ColumnAssignment
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-c1o3`

> The    SQL operator.

```swift
static func <= (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-cz5l`

> The    SQL operator.

```swift
static func >= (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-26dmq`

> The    SQL operator.

```swift
static func || (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-3k41h`

> The    SQL operator.

```swift
static func >> (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-3ledk`

> The    SQL operator.

```swift
static func << (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-4pzv8`

> The    SQL operator.

```swift
static func || (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-662f`

> The    SQL operator.

```swift
static func >> (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-6a6ym`

> The    SQL operator.

```swift
static func << (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-6jcmx`

> The    SQL operator.

```swift
static func >> (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-72acx`

> The    SQL function.

```swift
static func ?? (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-8bxg1`

> The    SQL operator.

```swift
static func << (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-e5w7`

> The    SQL operator.

```swift
static func || (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__=(_:_:)-31rg`

> Creates an assignment that applies a bitwise right shift.

```swift
static func >>= (column: Self, value: some SQLExpressible) -> ColumnAssignment
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__=(_:_:)-9xppk`

> Creates an assignment that applies a bitwise left shift.

```swift
static func <<= (column: Self, value: some SQLExpressible) -> ColumnAssignment
```

- **Symbol Kind:** op

- **Role Heading:** Operator


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

## `collating(_:)-2qq8y`

> Returns a collated expression.

```swift
func collating(_ collation: DatabaseCollation) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `collating(_:)-6arrp`

> Returns a collated expression.

```swift
func collating(_ collation: Database.CollationName) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `columnexpression-implementations`

- **Role Heading:** API Collection


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

## `detached`

> An SQL expression that refers to an aliased column   (  ).

```swift
var detached: SQLExpression { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `forkey(_:)`

> Returns an aliased result column.

```swift
func forKey(_ key: String) -> SQLSelection
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `init(_:)-5grmu`

> Creates a    given its name.

```swift
init(_ name: String)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(_:)-7xc4z`

> Creates a    given a   .

```swift
init(_ codingKey: some CodingKey)
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

## `match(_:)-4tp9q`

> A matching SQL expression with the    SQL operator.

```swift
func match(_ pattern: FTS5Pattern) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `match(_:)-7sh11`

> A matching SQL expression with the    SQL operator.

```swift
func match(_ pattern: FTS3Pattern?) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `name`

> The column name.

```swift
var name: String
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `nooverwrite`

> An assignment that does not modify this column.

```swift
var noOverwrite: ColumnAssignment { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `rank`

> The    rank column.

```swift
static let rank: Column
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `rowid-5trxi`

> The hidden rowID column.

```swift
static var rowID: Self { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `rowid-9x7ux`

> The hidden rowID column.

```swift
static var rowID: Self { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `rowid-msvj`

> The hidden rowID column.

```swift
static var rowID: Self { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `rowid`

> The hidden rowID column.

```swift
static let rowID: Column
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `set(to:)`

> Returns an assignment of this column to an SQL expression.

```swift
func set(to value: (any SQLExpressible)?) -> ColumnAssignment
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `sqlexpressible-implementations`

- **Role Heading:** API Collection


---

## `sqlexpression`

> Returns an SQL column.

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
