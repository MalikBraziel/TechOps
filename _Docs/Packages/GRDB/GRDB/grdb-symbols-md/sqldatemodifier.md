# Index

- `!(_:)`
- `!=(_:_:)-14t09`
- `!=(_:_:)-1ddcw`
- `!=(_:_:)-3dvjm`
- `!=(_:_:)-4ho4b`
- `!=(_:_:)-749jt`
- `!==(_:_:)-1otgs`
- `!==(_:_:)-76n3o`
- `!==(_:_:)-j8qn`
- `&&(_:_:)-3v2av`
- `&&(_:_:)-57fxc`
- `&&(_:_:)-shd9`
- `&(_:_:)-557ar`
- `&(_:_:)-6g1jp`
- `&(_:_:)-8y455`
- `*(_:_:)-1u8e9`
- `*(_:_:)-2gnd8`
- `*(_:_:)-66t48`
- `+(_:_:)-47mgi`
- `+(_:_:)-7w932`
- `+(_:_:)-ahky`
- `-(_:)`
- `-(_:_:)-448mx`
- `-(_:_:)-73whd`
- `-(_:_:)-9ws3k`
- `==(_:_:)-1shea`
- `==(_:_:)-3dg4z`
- `==(_:_:)-4af59`
- `==(_:_:)-8bym1`
- `==(_:_:)-8hx3h`
- `===(_:_:)-2gcxg`
- `===(_:_:)-7yrvp`
- `===(_:_:)-8lbmg`
- `_(_:_:)-1dcvw`
- `_(_:_:)-1p4nj`
- `_(_:_:)-2i5df`
- `_(_:_:)-3p3zz`
- `_(_:_:)-4rh3d`
- `_(_:_:)-6li2j`
- `_(_:_:)-7mmvz`
- `_(_:_:)-8cs6n`
- `_(_:_:)-8qadk`
- `_(_:_:)-macp`
- `_(_:_:)-qgfn`
- `_(_:_:)-weqk`
- `_=(_:_:)-2ud7`
- `_=(_:_:)-40ji8`
- `_=(_:_:)-429zl`
- `_=(_:_:)-6z3gn`
- `_=(_:_:)-8apdl`
- `_=(_:_:)-bdyy`
- `__(_:_:)-38tu5`
- `__(_:_:)-3jqy7`
- `__(_:_:)-5of05`
- `__(_:_:)-6noh9`
- `__(_:_:)-7kp7k`
- `__(_:_:)-86bu9`
- `__(_:_:)-87zvm`
- `__(_:_:)-8d9dl`
- `__(_:_:)-94jmk`
- `__(_:_:)-ymt1`
- `asc`
- `ascnullslast`
- `asjson`
- `capitalized`
- `collating(_:)-400js`
- `collating(_:)-9f3r2`
- `day(_:)`
- `desc`
- `descnullsfirst`
- `forkey(_:)`
- `hour(_:)`
- `like(_:escape:)`
- `localizedcapitalized`
- `localizedlowercased`
- `localizeduppercased`
- `localtime`
- `lowercased`
- `minute(_:)`
- `month(_:)`
- `second(_:)`
- `sqlexpression`
- `sqlordering`
- `sqlorderingterm-implementations`
- `sqlselectable-implementations`
- `sqlselection`
- `sqlspecificexpressible-implementations`
- `startofday`
- `startofmonth`
- `startofyear`
- `unixepoch`
- `uppercased`
- `utc`
- `weekday(_:)`
- `year(_:)`
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

## `!=(_:_:)-14t09`

> The    SQL operator.

```swift
static func != (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-1ddcw`

> The    SQL operator.

```swift
static func != (lhs: Bool, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-3dvjm`

> The    SQL operator.

```swift
static func != (lhs: Self, rhs: Bool) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-4ho4b`

> Compares two SQL expressions.

```swift
static func != (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!=(_:_:)-749jt`

> Compares two SQL expressions.

```swift
static func != (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!==(_:_:)-1otgs`

> The    SQL operator.

```swift
static func !== (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!==(_:_:)-76n3o`

> The    SQL operator.

```swift
static func !== (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `!==(_:_:)-j8qn`

> The    SQL operator.

```swift
static func !== (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&&(_:_:)-3v2av`

> The    SQL operator.

```swift
static func && (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&&(_:_:)-57fxc`

> The    SQL operator.

```swift
static func && (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&&(_:_:)-shd9`

> The    SQL operator.

```swift
static func && (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&(_:_:)-557ar`

> The    SQL operator.

```swift
static func & (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&(_:_:)-6g1jp`

> The    SQL operator.

```swift
static func & (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&(_:_:)-8y455`

> The    SQL operator.

```swift
static func & (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `*(_:_:)-1u8e9`

> The    SQL operator.

```swift
static func * (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `*(_:_:)-2gnd8`

> The    SQL operator.

```swift
static func * (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `*(_:_:)-66t48`

> The    SQL operator.

```swift
static func * (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+(_:_:)-47mgi`

> The    SQL operator.

```swift
static func + (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+(_:_:)-7w932`

> The    SQL operator.

```swift
static func + (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+(_:_:)-ahky`

> The    SQL operator.

```swift
static func + (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
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

## `-(_:_:)-448mx`

> The    SQL operator.

```swift
static func - (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `-(_:_:)-73whd`

> The    SQL operator.

```swift
static func - (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `-(_:_:)-9ws3k`

> The    SQL operator.

```swift
static func - (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-1shea`

> The    SQL operator.

```swift
static func == (lhs: Bool, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-3dg4z`

> Compares two SQL expressions.

```swift
static func == (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-4af59`

> The    SQL operator.

```swift
static func == (lhs: Self, rhs: Bool) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-8bym1`

> The    SQL operator.

```swift
static func == (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `==(_:_:)-8hx3h`

> Compares two SQL expressions.

```swift
static func == (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `===(_:_:)-2gcxg`

> The    SQL operator.

```swift
static func === (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `===(_:_:)-7yrvp`

> The    SQL operator.

```swift
static func === (lhs: (any SQLExpressible)?, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `===(_:_:)-8lbmg`

> The    SQL operator.

```swift
static func === (lhs: Self, rhs: (any SQLExpressible)?) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-1dcvw`

> The    SQL operator.

```swift
static func / (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-1p4nj`

> The    SQL operator.

```swift
static func > (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-2i5df`

> The    SQL operator.

```swift
static func > (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-3p3zz`

> The    SQL operator.

```swift
static func | (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-4rh3d`

> The    SQL operator.

```swift
static func < (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-6li2j`

> The    SQL operator.

```swift
static func / (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-7mmvz`

> The    SQL operator.

```swift
static func | (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-8cs6n`

> The    SQL operator.

```swift
static func < (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-8qadk`

> The    SQL operator.

```swift
static func / (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-macp`

> The    SQL operator.

```swift
static func < (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-qgfn`

> The    SQL operator.

```swift
static func | (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_(_:_:)-weqk`

> The    SQL operator.

```swift
static func > (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-2ud7`

> The    SQL operator.

```swift
static func >= (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-40ji8`

> The    SQL operator.

```swift
static func <= (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-429zl`

> The    SQL operator.

```swift
static func <= (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-6z3gn`

> The    SQL operator.

```swift
static func <= (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-8apdl`

> The    SQL operator.

```swift
static func >= (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `_=(_:_:)-bdyy`

> The    SQL operator.

```swift
static func >= (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-38tu5`

> The    SQL operator.

```swift
static func << (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-3jqy7`

> The    SQL operator.

```swift
static func >> (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-5of05`

> The    SQL operator.

```swift
static func >> (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-6noh9`

> The    SQL operator.

```swift
static func || (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-7kp7k`

> The    SQL function.

```swift
static func ?? (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-86bu9`

> The    SQL operator.

```swift
static func << (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-87zvm`

> The    SQL operator.

```swift
static func || (lhs: Self, rhs: some SQLSpecificExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-8d9dl`

> The    SQL operator.

```swift
static func << (lhs: Self, rhs: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-94jmk`

> The    SQL operator.

```swift
static func || (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `__(_:_:)-ymt1`

> The    SQL operator.

```swift
static func >> (lhs: some SQLExpressible, rhs: Self) -> SQLExpression
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

## `collating(_:)-400js`

> Returns a collated expression.

```swift
func collating(_ collation: DatabaseCollation) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `collating(_:)-9f3r2`

> Returns a collated expression.

```swift
func collating(_ collation: Database.CollationName) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `day(_:)`

> Adds the specified amount of days

```swift
case day(Int)
```

- **Symbol Kind:** case

- **Role Heading:** Case


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

## `forkey(_:)`

> Returns an aliased result column.

```swift
func forKey(_ key: String) -> SQLSelection
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `hour(_:)`

> Adds the specified amount of hours

```swift
case hour(Int)
```

- **Symbol Kind:** case

- **Role Heading:** Case


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

## `localtime`

> See  

```swift
case localTime
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `lowercased`

> An SQL expression that calls the Swift     method.

```swift
var lowercased: SQLExpression { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `minute(_:)`

> Adds the specified amount of minutes

```swift
case minute(Int)
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `month(_:)`

> Adds the specified amount of months

```swift
case month(Int)
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `second(_:)`

> Adds the specified amount of seconds

```swift
case second(Double)
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `sqlexpression`

> Returns an SQL expression.

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

## `startofday`

> Shifts the date backwards to the beginning of the current day

```swift
case startOfDay
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `startofmonth`

> Shifts the date backwards to the beginning of the current month

```swift
case startOfMonth
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `startofyear`

> Shifts the date backwards to the beginning of the current year

```swift
case startOfYear
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `unixepoch`

> See  

```swift
case unixEpoch
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `uppercased`

> An SQL expression that calls the Swift     method.

```swift
var uppercased: SQLExpression { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `utc`

> See  

```swift
case utc
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `weekday(_:)`

> See  

```swift
case weekday(Int)
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `year(_:)`

> Adds the specified amount of years

```swift
case year(Int)
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `~(_:)`

> The    SQL operator.

```swift
static func ~ (value: Self) -> SQLExpression
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---
