# Index

- `databasechanges(from:)`
- `databasechanges(modify:)`
- `databasecolumnencodingstrategy-8st88`
- `databasecolumnencodingstrategy`
- `databasedataencodingstrategy(for:)-15jz8`
- `databasedataencodingstrategy(for:)`
- `databasedateencodingstrategy(for:)-6soh6`
- `databasedateencodingstrategy(for:)`
- `databasedictionary`
- `databaseencodinguserinfo-20z9a`
- `databaseencodinguserinfo`
- `databaseequals(_:)`
- `databasejsonencoder(for:)-8k2p4`
- `databasejsonencoder(for:)`
- `databaseuuidencodingstrategy(for:)-9862q`
- `databaseuuidencodingstrategy(for:)`
- `encode(to:)-1mrt`
- `encode(to:)`

---


## `databasechanges(from:)`

> Returns a dictionary of values changed from the other record.

```swift
func databaseChanges(from record: some EncodableRecord) throws -> [String : DatabaseValue]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `databasechanges(modify:)`

> Modifies the record according to the provided    closure, and   returns a dictionary of changed values.

```swift
mutating func databaseChanges(modify: (inout Self) throws -> Void) throws -> [String : DatabaseValue]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `databasecolumnencodingstrategy-8st88`

> Returns the default strategy for converting coding keys to column names:    .

```swift
static var databaseColumnEncodingStrategy: DatabaseColumnEncodingStrategy { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `databasecolumnencodingstrategy`

> The strategy for converting coding keys to column names.

```swift
static var databaseColumnEncodingStrategy: DatabaseColumnEncodingStrategy { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `databasedataencodingstrategy(for:)-15jz8`

> Returns the default strategy for encoding    columns:    .

```swift
static func databaseDataEncodingStrategy(for column: String) -> DatabaseDataEncodingStrategy
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `databasedataencodingstrategy(for:)`

> The strategy for encoding    columns.

```swift
static func databaseDataEncodingStrategy(for column: String) -> DatabaseDataEncodingStrategy
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `databasedateencodingstrategy(for:)-6soh6`

> Returns the default strategy for encoding    columns:    .

```swift
static func databaseDateEncodingStrategy(for column: String) -> DatabaseDateEncodingStrategy
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `databasedateencodingstrategy(for:)`

> The strategy for encoding    columns.

```swift
static func databaseDateEncodingStrategy(for column: String) -> DatabaseDateEncodingStrategy
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `databasedictionary`

> A dictionary whose keys are the columns encoded in the     method.

```swift
var databaseDictionary: [String : DatabaseValue] { get throws }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `databaseencodinguserinfo-20z9a`

> Contextual information made available to the     method.

```swift
static var databaseEncodingUserInfo: [CodingUserInfoKey : Any] { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `databaseencodinguserinfo`

> Contextual information made available to the     method.

```swift
static var databaseEncodingUserInfo: [CodingUserInfoKey : Any] { get }
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `databaseequals(_:)`

> Returns a boolean indicating whether this record and the other record   have the same database representation.

```swift
func databaseEquals(_ record: Self) -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `databasejsonencoder(for:)-8k2p4`

> Returns the    that encodes the value for a given column.

```swift
static func databaseJSONEncoder(for column: String) -> JSONEncoder
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `databasejsonencoder(for:)`

> Returns the    that encodes the value for a given column.

```swift
static func databaseJSONEncoder(for column: String) -> JSONEncoder
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `databaseuuidencodingstrategy(for:)-9862q`

> Returns the default strategy for encoding    columns:    .

```swift
static func databaseUUIDEncodingStrategy(for column: String) -> DatabaseUUIDEncodingStrategy
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `databaseuuidencodingstrategy(for:)`

> The strategy for encoding    columns.

```swift
static func databaseUUIDEncodingStrategy(for column: String) -> DatabaseUUIDEncodingStrategy
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `encode(to:)-1mrt`

> Encodes the record into the provided persistence container, using the     conformance.

```swift
func encode(to container: inout PersistenceContainer) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `encode(to:)`

> Encodes the record into the provided persistence container.

```swift
func encode(to container: inout PersistenceContainer) throws
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
