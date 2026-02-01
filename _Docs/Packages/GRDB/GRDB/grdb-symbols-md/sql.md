# Index

- `!(_:)`
- `!=(_:_:)-17ect`
- `!=(_:_:)-1hy68`
- `!=(_:_:)-2r03i`
- `!=(_:_:)-8spoc`
- `!=(_:_:)-mvhv`
- `!==(_:_:)-5henq`
- `!==(_:_:)-7xqlo`
- `!==(_:_:)-d3nx`
- `&&(_:_:)-6vcec`
- `&&(_:_:)-8cfrr`
- `&&(_:_:)-9gshz`
- `&(_:_:)-31i5v`
- `&(_:_:)-32amo`
- `&(_:_:)-8su1m`
- `*(_:_:)-4qm5o`
- `*(_:_:)-5bhdp`
- `*(_:_:)-88ber`
- `+(_:_:)-1v23l`
- `+(_:_:)-3gtmf`
- `+(_:_:)-h3oi`
- `+(_:_:)`
- `+=(_:_:)`
- `-(_:)`
- `-(_:_:)-75uck`
- `-(_:_:)-7aytu`
- `-(_:_:)-7up9n`
- `==(_:_:)-15yq7`
- `==(_:_:)-2kcvc`
- `==(_:_:)-51a6s`
- `==(_:_:)-6q1y5`
- `==(_:_:)-8lnoy`
- `===(_:_:)-4uuzp`
- `===(_:_:)-5jtod`
- `===(_:_:)-6ugcg`
- `_(_:_:)-1nod5`
- `_(_:_:)-1q67g`
- `_(_:_:)-2s8jt`
- `_(_:_:)-3964y`
- `_(_:_:)-47c36`
- `_(_:_:)-5ijop`
- `_(_:_:)-79o1n`
- `_(_:_:)-7bmlu`
- `_(_:_:)-7g2sq`
- `_(_:_:)-9a3nh`
- `_(_:_:)-9s4ms`
- `_(_:_:)-ldu3`
- `_=(_:_:)-2nc0u`
- `_=(_:_:)-48jb`
- `_=(_:_:)-59je4`
- `_=(_:_:)-7gk8`
- `_=(_:_:)-7t940`
- `_=(_:_:)-8a0pt`
- `__(_:_:)-11xnl`
- `__(_:_:)-1fz0z`
- `__(_:_:)-20l4b`
- `__(_:_:)-2qm25`
- `__(_:_:)-6rtwz`
- `__(_:_:)-734r5`
- `__(_:_:)-7xrdk`
- `__(_:_:)-850ns`
- `__(_:_:)-9har7`
- `__(_:_:)-9wum3`
- `append(literal:)`
- `append(sql:arguments:)`
- `asc`
- `ascnullslast`
- `asjson`
- `build(_:)`
- `capitalized`
- `collating(_:)-7iswh`
- `collating(_:)-uvlo`
- `desc`
- `descnullsfirst`
- `expressiblebyextendedgraphemeclusterliteral-implementations`
- `expressiblebystringinterpolation-implementations`
- `expressiblebystringliteral-implementations`
- `expressiblebyunicodescalarliteral-implementations`
- `forkey(_:)`
- `init(_:)`
- `init(extendedgraphemeclusterliteral:)-76yve`
- `init(extendedgraphemeclusterliteral:)`
- `init(sql:arguments:)`
- `init(stringinterpolation:)`
- `init(stringliteral:)`
- `init(unicodescalarliteral:)-7pkv1`
- `init(unicodescalarliteral:)`
- `isempty`
- `like(_:escape:)`
- `localizedcapitalized`
- `localizedlowercased`
- `localizeduppercased`
- `lowercased`
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

## `!=(_:_:)-17ect`

> Compares two SQL expressions.

```swift
static func != (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-1hy68`

> The    SQL operator.

```swift
static func != (lhs: Self, rhs: Bool) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-2r03i`

> Compares two SQL expressions.

```swift
static func != (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-8spoc`

> The    SQL operator.

```swift
static func != (lhs: Bool, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-mvhv`

> The    SQL operator.

```swift
static func != (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!==(_:_:)-5henq`

> The    SQL operator.

```swift
static func !== (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!==(_:_:)-7xqlo`

> The    SQL operator.

```swift
static func !== (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!==(_:_:)-d3nx`

> The    SQL operator.

```swift
static func !== (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&&(_:_:)-6vcec`

> The    SQL operator.

```swift
static func && (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&&(_:_:)-8cfrr`

> The    SQL operator.

```swift
static func && (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&&(_:_:)-9gshz`

> The    SQL operator.

```swift
static func && (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&(_:_:)-31i5v`

> The    SQL operator.

```swift
static func & (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&(_:_:)-32amo`

> The    SQL operator.

```swift
static func & (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&(_:_:)-8su1m`

> The    SQL operator.

```swift
static func & (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `*(_:_:)-4qm5o`

> The    SQL operator.

```swift
static func * (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `*(_:_:)-5bhdp`

> The    SQL operator.

```swift
static func * (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `*(_:_:)-88ber`

> The    SQL operator.

```swift
static func * (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+(_:_:)-1v23l`

> The    SQL operator.

```swift
static func + (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+(_:_:)-3gtmf`

> The    SQL operator.

```swift
static func + (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+(_:_:)-h3oi`

> The    SQL operator.

```swift
static func + (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+(_:_:)`

> Returns the    literal produced by the concatenation of two literals.

```swift
static func + (lhs: SQL, rhs: SQL) -> SQL
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+=(_:_:)`

> Appends an    literal to the receiver.

```swift
static func += (lhs: inout SQL, rhs: SQL)
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

## `-(_:_:)-75uck`

> The    SQL operator.

```swift
static func - (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `-(_:_:)-7aytu`

> The    SQL operator.

```swift
static func - (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `-(_:_:)-7up9n`

> The    SQL operator.

```swift
static func - (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-15yq7`

> The    SQL operator.

```swift
static func == (lhs: Bool, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-2kcvc`

> The    SQL operator.

```swift
static func == (lhs: Self, rhs: Bool) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-51a6s`

> Compares two SQL expressions.

```swift
static func == (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-6q1y5`

> Compares two SQL expressions.

```swift
static func == (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-8lnoy`

> The    SQL operator.

```swift
static func == (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `===(_:_:)-4uuzp`

> The    SQL operator.

```swift
static func === (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `===(_:_:)-5jtod`

> The    SQL operator.

```swift
static func === (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `===(_:_:)-6ugcg`

> The    SQL operator.

```swift
static func === (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-1nod5`

> The    SQL operator.

```swift
static func | (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-1q67g`

> The    SQL operator.

```swift
static func | (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-2s8jt`

> The    SQL operator.

```swift
static func / (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-3964y`

> The    SQL operator.

```swift
static func < (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-47c36`

> The    SQL operator.

```swift
static func | (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-5ijop`

> The    SQL operator.

```swift
static func > (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-79o1n`

> The    SQL operator.

```swift
static func > (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-7bmlu`

> The    SQL operator.

```swift
static func > (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-7g2sq`

> The    SQL operator.

```swift
static func < (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-9a3nh`

> The    SQL operator.

```swift
static func / (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-9s4ms`

> The    SQL operator.

```swift
static func < (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-ldu3`

> The    SQL operator.

```swift
static func / (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-2nc0u`

> The    SQL operator.

```swift
static func >= (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-48jb`

> The    SQL operator.

```swift
static func >= (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-59je4`

> The    SQL operator.

```swift
static func >= (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-7gk8`

> The    SQL operator.

```swift
static func <= (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-7t940`

> The    SQL operator.

```swift
static func <= (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-8a0pt`

> The    SQL operator.

```swift
static func <= (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-11xnl`

> The    SQL operator.

```swift
static func << (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-1fz0z`

> The    SQL operator.

```swift
static func << (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-20l4b`

> The    SQL operator.

```swift
static func >> (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-2qm25`

> The    SQL operator.

```swift
static func || (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-6rtwz`

> The    SQL operator.

```swift
static func >> (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-734r5`

> The    SQL function.

```swift
static func ?? (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-7xrdk`

> The    SQL operator.

```swift
static func >> (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-850ns`

> The    SQL operator.

```swift
static func || (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-9har7`

> The    SQL operator.

```swift
static func << (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-9wum3`

> The    SQL operator.

```swift
static func || (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `append(literal:)`

> Appends an    literal to the receiver.

```swift
mutating func append(literal sqlLiteral: SQL)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `append(sql:arguments:)`

> Appends a plain SQL string to the receiver, and eventual arguments.

```swift
mutating func append(sql: String, arguments: StatementArguments = StatementArguments())
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

## `build(_:)`

> Turn a    literal into raw SQL and arguments.

```swift
func build(_ db: Database) throws -> (sql: String, arguments: StatementArguments)
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

## `collating(_:)-7iswh`

> Returns a collated expression.

```swift
func collating(_ collation: Database.CollationName) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `collating(_:)-uvlo`

> Returns a collated expression.

```swift
func collating(_ collation: DatabaseCollation) -> SQLExpression
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

## `forkey(_:)`

> Returns an aliased result column.

```swift
func forKey(_ key: String) -> SQLSelection
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `init(_:)`

> Creates an    literal from an SQL expression.

```swift
init(_ expression: some SQLSpecificExpressible)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(extendedgraphemeclusterliteral:)-76yve`

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

## `init(sql:arguments:)`

> Creates an    literal from a plain SQL string, and   eventual arguments.

```swift
init(sql: String, arguments: StatementArguments = StatementArguments())
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

> Creates an    literal from the given literal SQL string.

```swift
init(stringLiteral: String)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(unicodescalarliteral:)-7pkv1`

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

## `isempty`

> Returns true if this literal generates an empty SQL string

```swift
var isEmpty: Bool { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


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

## `sqlexpressible-implementations`

- **Role Heading:** API Collection


---

## `sqlexpression`

> Creates a literal SQL expression.

```swift
var sqlExpression: SQLExpression { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `sqlordering`

> Creates a literal SQL ordering term.

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

> Creates a literal SQL result column.

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
