# Index

- `!=(_:_:)`
- `&+(_:_:)`
- `+(_:_:)`
- `+=(_:_:)`
- `append(contentsof:)`
- `customstringconvertible-implementations`
- `description`
- `equatable-implementations`
- `expressiblebyarrayliteral-implementations`
- `expressiblebydictionaryliteral-implementations`
- `init()`
- `init(_:)-1adxp`
- `init(_:)-3njz`
- `init(_:)-4t9et`
- `init(_:)-4v4c0`
- `init(_:)-5wf7z`
- `init(_:)-6opp1`
- `init(arrayliteral:)`
- `init(dictionaryliteral:)`
- `isempty`

---


## `!=(_:_:)`

> Inherited from   .

```swift
static func != (lhs: Self, rhs: Self) -> Bool
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `&+(_:_:)`

> Creates a new    by extending the left-hand size   arguments with the right-hand side arguments.

```swift
static func &+ (lhs: StatementArguments, rhs: StatementArguments) -> StatementArguments
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+(_:_:)`

> Creates a new    by extending the left-hand size   arguments with the right-hand side arguments.

```swift
static func + (lhs: StatementArguments, rhs: StatementArguments) -> StatementArguments
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `+=(_:_:)`

> Extends the left-hand size arguments with the right-hand side arguments.

```swift
static func += (lhs: inout StatementArguments, rhs: StatementArguments)
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `append(contentsof:)`

> Appends statement arguments.

```swift
mutating func append(contentsOf arguments: StatementArguments) -> [String : DatabaseValue]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `customstringconvertible-implementations`

- **Role Heading:** API Collection


---

## `description`

> Inherited from   .

```swift
var description: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `equatable-implementations`

- **Role Heading:** API Collection


---

## `expressiblebyarrayliteral-implementations`

- **Role Heading:** API Collection


---

## `expressiblebydictionaryliteral-implementations`

- **Role Heading:** API Collection


---

## `init()`

> Creates an empty   .

```swift
init()
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(_:)-1adxp`

> Creates a    of named arguments from a sequence of   (key, value) pairs.

```swift
init(_ keysAndValues: some Sequence<(String, (any DatabaseValueConvertible)?)>)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(_:)-3njz`

> Creates a    from a sequence of values.

```swift
init(_ values: some Sequence<some DatabaseValueConvertible>)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(_:)-4t9et`

> Creates a    of named arguments from a dictionary.

```swift
init(_ dictionary: [String : (any DatabaseValueConvertible)?])
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(_:)-4v4c0`

> Creates a    from an array.

```swift
init?(_ array: [Any])
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(_:)-5wf7z`

> Creates a    from a sequence of values.

```swift
init(_ values: some Sequence<(any DatabaseValueConvertible)?>)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(_:)-6opp1`

> Creates a    from a dictionary.

```swift
init?(_ dictionary: [AnyHashable : Any])
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(arrayliteral:)`

> Creates a    from an array literal.

```swift
init(arrayLiteral elements: (any DatabaseValueConvertible)?...)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(dictionaryliteral:)`

> Creates a    from a dictionary literal.

```swift
init(dictionaryLiteral elements: (String, (any DatabaseValueConvertible)?)...)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `isempty`

```swift
var isEmpty: Bool { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---
