# Index

- `average(_:)-1ehdb`
- `average(_:)-4bbk9`
- `count`
- `databasecomponents`
- `isempty`
- `max(_:)-4g5ut`
- `max(_:)-a32j`
- `min(_:)-41jp8`
- `min(_:)-6al4w`
- `sum(_:)-47yg7`
- `sum(_:)-6ge96`
- `total(_:)-56v8i`
- `total(_:)-6dd9d`

---


## `average(_:)-1ehdb`

> Returns the average of the given expression in associated records.

```swift
func average(_ expression: (DatabaseComponents) throws -> some SQLSpecificExpressible) rethrows -> AssociationAggregate<OriginRowDecoder> where Self.RowDecoder : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `average(_:)-4bbk9`

> Returns the average of the given expression in associated records.

```swift
func average(_ expression: some SQLSpecificExpressible) -> AssociationAggregate<OriginRowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `count`

> The number of associated records.

```swift
var count: AssociationAggregate<OriginRowDecoder> { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `databasecomponents`

```swift
typealias DatabaseComponents = RowDecoder.DatabaseComponents
```

- **Symbol Kind:** typealias

- **Role Heading:** Type Alias


---

## `isempty`

> Returns a boolean aggregate that is true if no associated   records exist.

```swift
var isEmpty: AssociationAggregate<OriginRowDecoder> { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `max(_:)-4g5ut`

> Returns the maximum value of the given expression in associated records.

```swift
func max(_ expression: some SQLSpecificExpressible) -> AssociationAggregate<OriginRowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `max(_:)-a32j`

> Returns the maximum value of the given expression in associated records.

```swift
func max(_ expression: (DatabaseComponents) throws -> some SQLSpecificExpressible) rethrows -> AssociationAggregate<OriginRowDecoder> where Self.RowDecoder : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `min(_:)-41jp8`

> Returns the minimum value of the given expression in associated records.

```swift
func min(_ expression: (DatabaseComponents) throws -> some SQLSpecificExpressible) rethrows -> AssociationAggregate<OriginRowDecoder> where Self.RowDecoder : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `min(_:)-6al4w`

> Returns the minimum value of the given expression in associated records.

```swift
func min(_ expression: some SQLSpecificExpressible) -> AssociationAggregate<OriginRowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `sum(_:)-47yg7`

> Returns the sum of the given expression in associated records.

```swift
func sum(_ expression: (DatabaseComponents) throws -> some SQLSpecificExpressible) rethrows -> AssociationAggregate<OriginRowDecoder> where Self.RowDecoder : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `sum(_:)-6ge96`

> Returns the sum of the given expression in associated records.

```swift
func sum(_ expression: some SQLSpecificExpressible) -> AssociationAggregate<OriginRowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `total(_:)-56v8i`

> Returns the sum of the given expression in associated records.

```swift
func total(_ expression: some SQLSpecificExpressible) -> AssociationAggregate<OriginRowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `total(_:)-6dd9d`

> Returns the sum of the given expression in associated records.

```swift
func total(_ expression: (DatabaseComponents) throws -> some SQLSpecificExpressible) rethrows -> AssociationAggregate<OriginRowDecoder> where Self.RowDecoder : TableRecord
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
