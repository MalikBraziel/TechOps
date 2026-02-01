# Index

- `all()`
- `association(to:)-6p49n`
- `association(to:)-8ymm1`
- `association(to:)-lpqk`
- `association(to:on:)-55fz9`
- `association(to:on:)-5xw7m`
- `association(to:on:)-8c8uo`
- `contains(_:)`
- `init(recursive:named:columns:literal:)-4nr63`
- `init(recursive:named:columns:literal:)-7vimx`
- `init(recursive:named:columns:request:)-35myd`
- `init(recursive:named:columns:request:)-69rlb`
- `init(recursive:named:columns:sql:arguments:)-1ft4x`
- `init(recursive:named:columns:sql:arguments:)-8hnp2`
- `tablename`

---


## `all()`

> Creates a request for all rows of the common table expression.

```swift
func all() -> QueryInterfaceRequest<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `association(to:)-6p49n`

> Creates an association to a table that you can join   or include in another request.

```swift
func association<Destination>(to destination: Table<Destination>) -> JoinAssociation<RowDecoder, Destination>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `association(to:)-8ymm1`

> Creates an association to a table record that you can join   or include in another request.

```swift
func association<Destination>(to destination: Destination.Type) -> JoinAssociation<RowDecoder, Destination> where Destination : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `association(to:)-lpqk`

> Creates an association to a common table expression that you can join   or include in another request.

```swift
func association<Destination>(to cte: CommonTableExpression<Destination>) -> JoinAssociation<RowDecoder, Destination>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `association(to:on:)-55fz9`

> Creates an association to a table record that you can join   or include in another request.

```swift
func association<Destination>(to destination: Destination.Type, on condition: @escaping (_ left: TableAlias<RowDecoder>, _ right: TableAlias<Destination>) -> any SQLExpressible) -> JoinAssociation<RowDecoder, Destination> where Destination : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `association(to:on:)-5xw7m`

> Creates an association to a table that you can join   or include in another request.

```swift
func association<Destination>(to destination: Table<Destination>, on condition: @escaping (_ left: TableAlias<RowDecoder>, _ right: TableAlias<Destination>) -> any SQLExpressible) -> JoinAssociation<RowDecoder, Destination>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `association(to:on:)-8c8uo`

> Creates an association to a common table expression that you can join   or include in another request.

```swift
func association<Destination>(to cte: CommonTableExpression<Destination>, on condition: @escaping (_ left: TableAlias<RowDecoder>, _ right: TableAlias<Destination>) -> any SQLExpressible) -> JoinAssociation<RowDecoder, Destination>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `contains(_:)`

> An SQL expression that checks the inclusion of an expression in a   common table expression.

```swift
func contains(_ element: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `init(recursive:named:columns:literal:)-4nr63`

> Creates a common table expression from an SQL   .

```swift
init(recursive: Bool = false, named tableName: String, columns: [String]? = nil, literal sqlLiteral: SQL)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(recursive:named:columns:literal:)-7vimx`

> Creates a common table expression from an SQL   .

```swift
init(recursive: Bool = false, named tableName: String, columns: [String]? = nil, literal sqlLiteral: SQL)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(recursive:named:columns:request:)-35myd`

> Creates a common table expression from a request.

```swift
init(recursive: Bool = false, named tableName: String, columns: [String]? = nil, request: some SQLSubqueryable)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(recursive:named:columns:request:)-69rlb`

> Creates a common table expression from a request.

```swift
init(recursive: Bool = false, named tableName: String, columns: [String]? = nil, request: some SQLSubqueryable)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(recursive:named:columns:sql:arguments:)-1ft4x`

> Creates a common table expression from an SQL string and   optional arguments.

```swift
init(recursive: Bool = false, named tableName: String, columns: [String]? = nil, sql: String, arguments: StatementArguments = StatementArguments())
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(recursive:named:columns:sql:arguments:)-8hnp2`

> Creates a common table expression from an SQL string and   optional arguments.

```swift
init(recursive: Bool = false, named tableName: String, columns: [String]? = nil, sql: String, arguments: StatementArguments = StatementArguments())
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `tablename`

> The table name of the common table expression.

```swift
var tableName: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---
