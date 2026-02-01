# Index

- `callasfunction(_:)`
- `capitalize`
- `id-swift.property`
- `id-swift.struct`
- `init(_:argumentcount:pure:aggregate:)`
- `init(_:argumentcount:pure:function:)`
- `localizedcapitalize`
- `localizedlowercase`
- `localizeduppercase`
- `lowercase`
- `name`
- `uppercase`

---


## `callasfunction(_:)`

> Returns an SQL expression that applies the function.

```swift
func callAsFunction(_ arguments: any SQLExpressible...) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `capitalize`

> An SQL function that calls the Foundation     property.

```swift
static let capitalize: DatabaseFunction
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `id-swift.property`

> The identifier of the SQL function.

```swift
let id: ID
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `id-swift.struct`

> The identifier of an SQLite function.

```swift
struct ID
```

- **Symbol Kind:** struct

- **Role Heading:** Structure


---

## `init(_:argumentcount:pure:aggregate:)`

> Creates an SQL aggregate function.

```swift
init<Aggregate>(_ name: String, argumentCount: Int? = nil, pure: Bool = false, aggregate: Aggregate.Type) where Aggregate : DatabaseAggregate
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(_:argumentcount:pure:function:)`

> Creates an SQL function.

```swift
convenience init(_ name: String, argumentCount: Int? = nil, pure: Bool = false, function: @escaping ([DatabaseValue]) throws -> (any DatabaseValueConvertible)?)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `localizedcapitalize`

> An SQL function that calls the Foundation     property.

```swift
static let localizedCapitalize: DatabaseFunction
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `localizedlowercase`

> An SQL function that calls the Foundation     property.

```swift
static let localizedLowercase: DatabaseFunction
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `localizeduppercase`

> An SQL function that calls the Foundation     property.

```swift
static let localizedUppercase: DatabaseFunction
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `lowercase`

> An SQL function that calls the Swift     method.

```swift
static let lowercase: DatabaseFunction
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `name`

> The name of the SQL function.

```swift
var name: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `uppercase`

> An SQL function that calls the Swift     method.

```swift
static let uppercase: DatabaseFunction
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---
