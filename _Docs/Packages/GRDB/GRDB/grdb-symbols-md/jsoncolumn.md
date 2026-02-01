# Index

- `!(_:)`
- `!=(_:_:)-2kn0i`
- `!=(_:_:)-2xkp1`
- `!=(_:_:)-5sfrr`
- `!=(_:_:)-819rh`
- `!=(_:_:)-8mxjp`
- `!==(_:_:)-4691o`
- `!==(_:_:)-9v4ez`
- `!==(_:_:)-9z83j`
- `&&(_:_:)-2a6u`
- `&&(_:_:)-36k24`
- `&&(_:_:)-7xzdg`
- `&(_:_:)-1zick`
- `&(_:_:)-2xao0`
- `&(_:_:)-fkpu`
- `&=(_:_:)`
- `*(_:_:)-24jx6`
- `*(_:_:)-6h7bm`
- `*(_:_:)-9hvsn`
- `*=(_:_:)`
- `+(_:_:)-50wth`
- `+(_:_:)-5si39`
- `+(_:_:)-5v4vt`
- `+=(_:_:)`
- `-(_:)`
- `-(_:_:)-1dpm3`
- `-(_:_:)-1jssv`
- `-(_:_:)-p51q`
- `-=(_:_:)`
- `==(_:_:)-14fh4`
- `==(_:_:)-2rg60`
- `==(_:_:)-3u3dm`
- `==(_:_:)-41cn3`
- `==(_:_:)-6fgll`
- `===(_:_:)-50pqb`
- `===(_:_:)-776nr`
- `===(_:_:)-7aran`
- `_(_:_:)-1azrd`
- `_(_:_:)-1pm7z`
- `_(_:_:)-23wpz`
- `_(_:_:)-2wbk0`
- `_(_:_:)-376kg`
- `_(_:_:)-6gfu8`
- `_(_:_:)-6ujja`
- `_(_:_:)-8nnla`
- `_(_:_:)-8qeka`
- `_(_:_:)-9m0pi`
- `_(_:_:)-9tsz6`
- `_(_:_:)-mvto`
- `_=(_:_:)-22kwf`
- `_=(_:_:)-4159w`
- `_=(_:_:)-41klj`
- `_=(_:_:)-5wdnj`
- `_=(_:_:)-61pis`
- `_=(_:_:)-7aw9r`
- `_=(_:_:)-8gljw`
- `_=(_:_:)-8qp0b`
- `__(_:_:)-1buij`
- `__(_:_:)-23com`
- `__(_:_:)-40kqw`
- `__(_:_:)-444lx`
- `__(_:_:)-5nsge`
- `__(_:_:)-761dl`
- `__(_:_:)-7eleq`
- `__(_:_:)-8ow12`
- `__(_:_:)-8w02l`
- `__(_:_:)-a1si`
- `__=(_:_:)-1ma2v`
- `__=(_:_:)-5gko1`
- `asc`
- `ascnullslast`
- `asjson`
- `capitalized`
- `collating(_:)-2hpqb`
- `collating(_:)-77ba2`
- `columnexpression-implementations`
- `desc`
- `descnullsfirst`
- `detached`
- `forkey(_:)`
- `init(_:)-5eux2`
- `init(_:)-twnz`
- `jsonextract(atpath:)`
- `jsonextract(atpaths:)`
- `jsonrepresentation(atpath:)`
- `like(_:escape:)`
- `localizedcapitalized`
- `localizedlowercased`
- `localizeduppercased`
- `lowercased`
- `match(_:)-47ku3`
- `match(_:)-98o1b`
- `name`
- `nooverwrite`
- `set(to:)`
- `sqlexpression`
- `sqljsonexpressible-implementations`
- `sqlordering`
- `sqlorderingterm-implementations`
- `sqlselectable-implementations`
- `sqlselection`
- `sqlspecificexpressible-implementations`
- `subscript(_:)`
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

## `!=(_:_:)-2kn0i`

> The    SQL operator.

```swift
static func != (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-2xkp1`

> Compares two SQL expressions.

```swift
static func != (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-5sfrr`

> Compares two SQL expressions.

```swift
static func != (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-819rh`

> The    SQL operator.

```swift
static func != (lhs: Bool, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-8mxjp`

> The    SQL operator.

```swift
static func != (lhs: Self, rhs: Bool) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!==(_:_:)-4691o`

> The    SQL operator.

```swift
static func !== (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!==(_:_:)-9v4ez`

> The    SQL operator.

```swift
static func !== (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!==(_:_:)-9z83j`

> The    SQL operator.

```swift
static func !== (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&&(_:_:)-2a6u`

> The    SQL operator.

```swift
static func && (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&&(_:_:)-36k24`

> The    SQL operator.

```swift
static func && (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&&(_:_:)-7xzdg`

> The    SQL operator.

```swift
static func && (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&(_:_:)-1zick`

> The    SQL operator.

```swift
static func & (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&(_:_:)-2xao0`

> The    SQL operator.

```swift
static func & (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&(_:_:)-fkpu`

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

## `*(_:_:)-24jx6`

> The    SQL operator.

```swift
static func * (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `*(_:_:)-6h7bm`

> The    SQL operator.

```swift
static func * (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `*(_:_:)-9hvsn`

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

## `+(_:_:)-50wth`

> The    SQL operator.

```swift
static func + (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+(_:_:)-5si39`

> The    SQL operator.

```swift
static func + (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+(_:_:)-5v4vt`

> The    SQL operator.

```swift
static func + (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
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

## `-(_:_:)-1dpm3`

> The    SQL operator.

```swift
static func - (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `-(_:_:)-1jssv`

> The    SQL operator.

```swift
static func - (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `-(_:_:)-p51q`

> The    SQL operator.

```swift
static func - (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
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

## `==(_:_:)-14fh4`

> The    SQL operator.

```swift
static func == (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-2rg60`

> Compares two SQL expressions.

```swift
static func == (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-3u3dm`

> The    SQL operator.

```swift
static func == (lhs: Bool, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-41cn3`

> Compares two SQL expressions.

```swift
static func == (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-6fgll`

> The    SQL operator.

```swift
static func == (lhs: Self, rhs: Bool) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `===(_:_:)-50pqb`

> The    SQL operator.

```swift
static func === (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `===(_:_:)-776nr`

> The    SQL operator.

```swift
static func === (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `===(_:_:)-7aran`

> The    SQL operator.

```swift
static func === (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-1azrd`

> The    SQL operator.

```swift
static func > (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-1pm7z`

> The    SQL operator.

```swift
static func > (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-23wpz`

> The    SQL operator.

```swift
static func / (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-2wbk0`

> The    SQL operator.

```swift
static func / (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-376kg`

> The    SQL operator.

```swift
static func < (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-6gfu8`

> The    SQL operator.

```swift
static func | (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-6ujja`

> The    SQL operator.

```swift
static func | (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-8nnla`

> The    SQL operator.

```swift
static func / (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-8qeka`

> The    SQL operator.

```swift
static func < (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-9m0pi`

> The    SQL operator.

```swift
static func < (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-9tsz6`

> The    SQL operator.

```swift
static func | (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-mvto`

> The    SQL operator.

```swift
static func > (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-22kwf`

> The    SQL operator.

```swift
static func <= (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-4159w`

> The    SQL operator.

```swift
static func <= (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-41klj`

> Creates an assignment that applies a bitwise or.

```swift
static func |= (column: Self, value: some SQLExpressible) -> ColumnAssignment
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-5wdnj`

> Creates an assignment that divides by an SQL expression.

```swift
static func /= (column: Self, value: some SQLExpressible) -> ColumnAssignment
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-61pis`

> The    SQL operator.

```swift
static func <= (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-7aw9r`

> The    SQL operator.

```swift
static func >= (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-8gljw`

> The    SQL operator.

```swift
static func >= (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-8qp0b`

> The    SQL operator.

```swift
static func >= (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-1buij`

> The    SQL operator.

```swift
static func << (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-23com`

> The    SQL operator.

```swift
static func << (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-40kqw`

> The    SQL operator.

```swift
static func >> (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-444lx`

> The    SQL operator.

```swift
static func || (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-5nsge`

> The    SQL operator.

```swift
static func || (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-761dl`

> The    SQL operator.

```swift
static func || (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-7eleq`

> The    SQL function.

```swift
static func ?? (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-8ow12`

> The    SQL operator.

```swift
static func >> (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-8w02l`

> The    SQL operator.

```swift
static func >> (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-a1si`

> The    SQL operator.

```swift
static func << (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__=(_:_:)-1ma2v`

> Creates an assignment that applies a bitwise left shift.

```swift
static func <<= (column: Self, value: some SQLExpressible) -> ColumnAssignment
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__=(_:_:)-5gko1`

> Creates an assignment that applies a bitwise right shift.

```swift
static func >>= (column: Self, value: some SQLExpressible) -> ColumnAssignment
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

## `collating(_:)-2hpqb`

> Returns a collated expression.

```swift
func collating(_ collation: DatabaseCollation) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `collating(_:)-77ba2`

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

## `init(_:)-5eux2`

> Creates a    given its name.

```swift
init(_ name: String)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(_:)-twnz`

> Creates a    given a   .

```swift
init(_ codingKey: some CodingKey)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `jsonextract(atpath:)`

> The    SQL function.

```swift
func jsonExtract(atPath path: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `jsonextract(atpaths:)`

> The    SQL function.

```swift
func jsonExtract(atPaths paths: some Collection<some SQLExpressible>) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `jsonrepresentation(atpath:)`

> Returns a valid JSON string with the    SQL operator.

```swift
func jsonRepresentation(atPath path: some SQLExpressible) -> SQLExpression
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

## `match(_:)-47ku3`

> A matching SQL expression with the    SQL operator.

```swift
func match(_ pattern: FTS5Pattern) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `match(_:)-98o1b`

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

## `set(to:)`

> Returns an assignment of this column to an SQL expression.

```swift
func set(to value: (any SQLExpressible)?) -> ColumnAssignment
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `sqlexpression`

> Returns an SQL column that is interpreted as a JSON value.

```swift
var sqlExpression: SQLExpression { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `sqljsonexpressible-implementations`

- **Role Heading:** API Collection


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

## `subscript(_:)`

> The    SQL operator.

```swift
subscript(path: some SQLExpressible) -> SQLExpression { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


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
