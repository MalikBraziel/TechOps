# Index

- `appendinterpolation(_:)-10nsv`
- `appendinterpolation(_:)-1gt2s`
- `appendinterpolation(_:)-1qdgp`
- `appendinterpolation(_:)-1ruz1`
- `appendinterpolation(_:)-3ikkh`
- `appendinterpolation(_:)-3rfeo`
- `appendinterpolation(_:)-3x76m`
- `appendinterpolation(_:)-3xsut`
- `appendinterpolation(_:)-44wpl`
- `appendinterpolation(_:)-4qwko`
- `appendinterpolation(_:)-58myo`
- `appendinterpolation(_:)-5t8vy`
- `appendinterpolation(_:)-61b8s`
- `appendinterpolation(_:)-69037`
- `appendinterpolation(_:)-790jm`
- `appendinterpolation(_:)-791m8`
- `appendinterpolation(_:)-7n2an`
- `appendinterpolation(_:)-8dszx`
- `appendinterpolation(_:)-92kw7`
- `appendinterpolation(_:)-9mcge`
- `appendinterpolation(_:)-muws`
- `appendinterpolation(columnsof:tablealias:)`
- `appendinterpolation(definitionfor:)`
- `appendinterpolation(identifier:)`
- `appendinterpolation(literal:)`
- `appendinterpolation(sql:arguments:)`
- `appendinterpolation(tableof:)-4n2n3`
- `appendinterpolation(tableof:)-ms13`
- `appendliteral(_:)`
- `init(literalcapacity:interpolationcount:)`

---


## `appendinterpolation(_:)-10nsv`

> Appends the selectable SQL, or NULL if it is nil.

```swift
mutating func appendInterpolation(_ selection: (any SQLSelectable)?)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(_:)-1gt2s`

> Appends the name of the collation.

```swift
mutating func appendInterpolation(_ collation: DatabaseCollation)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(_:)-1qdgp`

> Appends the name of the collation.

```swift
mutating func appendInterpolation(_ collation: Database.CollationName)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(_:)-1ruz1`

> Appends the ordering SQL.

```swift
mutating func appendInterpolation(_ orderingTerm: any SQLOrderingTerm)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(_:)-3ikkh`

> Appends the ordering SQL.

```swift
mutating func appendInterpolation(_ orderingTerm: some SQLOrderingTerm)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(_:)-3rfeo`

> Appends the selectable SQL.

```swift
mutating func appendInterpolation(_ selection: some SQLSelectable)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(_:)-3x76m`

> Appends the table name.

```swift
mutating func appendInterpolation<T>(_ table: Table<T>)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(_:)-3xsut`

> Appends a sequence of expressions, wrapped in parentheses.

```swift
mutating func appendInterpolation(_ sequence: some Sequence<any SQLExpressible>)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(_:)-44wpl`

> Appends the table name of the record type.

```swift
mutating func appendInterpolation(_ table: any TableRecord.Type)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(_:)-4qwko`

> Appends a raw    literal.

```swift
mutating func appendInterpolation(_ sqlLiteral: SQL)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(_:)-58myo`

> Appends the expression SQL, or NULL if it is nil.

```swift
mutating func appendInterpolation(_ expressible: (any SQLExpressible)?)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(_:)-5t8vy`

> Appends the request SQL (not wrapped inside parentheses).

```swift
mutating func appendInterpolation(_ subquery: some SQLSubqueryable & SQLExpressible & SQLSelectable & SQLOrderingTerm)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(_:)-61b8s`

> Appends the name of the coding key.

```swift
mutating func appendInterpolation(_ key: some CodingKey)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(_:)-69037`

> Appends the table name of the record type.

```swift
mutating func appendInterpolation(_ table: (some TableRecord).Type)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(_:)-790jm`

> Appends the table name of the common table expression.

```swift
mutating func appendInterpolation(_ cte: CommonTableExpression<some Any>)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(_:)-791m8`

> Appends the name of the coding key.

```swift
mutating func appendInterpolation(_ key: any CodingKey)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(_:)-7n2an`

> Appends the expression SQL.

```swift
mutating func appendInterpolation(_ expressible: some SQLExpressible & SQLSelectable & SQLOrderingTerm)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(_:)-8dszx`

> Appends a String expression.

```swift
mutating func appendInterpolation<S>(_ string: S) where S : StringProtocol
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(_:)-92kw7`

> Appends the name of the coding key.

```swift
mutating func appendInterpolation(_ key: some CodingKey & SQLExpressible & SQLSelectable & SQLOrderingTerm)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(_:)-9mcge`

```swift
mutating func appendInterpolation<S>(_ expressible: S) where S : SQLExpressible, S : Sequence, S.Element : SQLExpressible
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(_:)-muws`

> Appends a sequence of expressions, wrapped in parentheses.

```swift
mutating func appendInterpolation(_ sequence: some Sequence<some SQLExpressible>)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(columnsof:tablealias:)`

> Appends the selection of the record type.

```swift
mutating func appendInterpolation(columnsOf recordType: (some TableRecord).Type, tableAlias: String? = nil)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(definitionfor:)`

> Appends the definition of the common table expression.

```swift
mutating func appendInterpolation(definitionFor cte: CommonTableExpression<some Any>)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(identifier:)`

> Appends a quoted identifier.

```swift
mutating func appendInterpolation(identifier: String)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(literal:)`

> Appends a raw    literal.

```swift
mutating func appendInterpolation(literal sqlLiteral: SQL)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(sql:arguments:)`

> Appends a raw SQL snippet, with eventual arguments.

```swift
mutating func appendInterpolation(sql: String, arguments: StatementArguments = StatementArguments())
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(tableof:)-4n2n3`

> Appends the table name of the record.

```swift
mutating func appendInterpolation(tableOf record: any TableRecord)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendinterpolation(tableof:)-ms13`

> Appends the table name of the record.

```swift
mutating func appendInterpolation(tableOf record: some TableRecord)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `appendliteral(_:)`

> Inherited from   .

```swift
mutating func appendLiteral(_ sql: String)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `init(literalcapacity:interpolationcount:)`

> Inherited from   .

```swift
init(literalCapacity: Int, interpolationCount: Int)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---
