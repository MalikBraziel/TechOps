# Index

- `!=(_:_:)`
- `colocated`
- `contains(_:)`
- `equatable-implementations`
- `formintersection(_:)`
- `formsymmetricdifference(_:)`
- `formunion(_:)`
- `init()`
- `init(_:)`
- `init(arrayliteral:)`
- `init(rawvalue:)`
- `insert(_:)`
- `intersection(_:)`
- `isdisjoint(with:)`
- `isempty`
- `isstrictsubset(of:)`
- `isstrictsuperset(of:)`
- `issubset(of:)`
- `issuperset(of:)`
- `optionset-implementations`
- `rawvalue`
- `remove(_:)`
- `setalgebra-implementations`
- `subtract(_:)`
- `subtracting(_:)`
- `symmetricdifference(_:)`
- `union(_:)`
- `update(with:)`

---


## `!=(_:_:)`

> Inherited from   .

```swift
static func != (lhs: Self, rhs: Self) -> Bool
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `colocated`

```swift
static let colocated: FTS5TokenFlags
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `contains(_:)`

> Inherited from   .

```swift
func contains(_ member: Self) -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `equatable-implementations`

- **Role Heading:** API Collection


---

## `formintersection(_:)`

> Inherited from   .

```swift
mutating func formIntersection(_ other: Self)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `formsymmetricdifference(_:)`

> Inherited from   .

```swift
mutating func formSymmetricDifference(_ other: Self)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `formunion(_:)`

> Inherited from   .

```swift
mutating func formUnion(_ other: Self)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `init()`

> Inherited from   .

```swift
init()
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(_:)`

> Inherited from   .

```swift
init<S>(_ sequence: S) where S : Sequence, Self.Element == S.Element
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(arrayliteral:)`

> Inherited from   .

```swift
init(arrayLiteral: Self.Element...)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `init(rawvalue:)`

> Inherited from   .

```swift
init(rawValue: CInt)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `insert(_:)`

> Inherited from   .

```swift
@discardableResult mutating func insert(_ newMember: Self.Element) -> (inserted: Bool, memberAfterInsert: Self.Element)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `intersection(_:)`

> Inherited from   .

```swift
func intersection(_ other: Self) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `isdisjoint(with:)`

> Inherited from   .

```swift
func isDisjoint(with other: Self) -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `isempty`

> Inherited from   .

```swift
var isEmpty: Bool { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `isstrictsubset(of:)`

> Inherited from   .

```swift
func isStrictSubset(of other: Self) -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `isstrictsuperset(of:)`

> Inherited from   .

```swift
func isStrictSuperset(of other: Self) -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `issubset(of:)`

> Inherited from   .

```swift
func isSubset(of other: Self) -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `issuperset(of:)`

> Inherited from   .

```swift
func isSuperset(of other: Self) -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `optionset-implementations`

- **Role Heading:** API Collection


---

## `rawvalue`

> Inherited from   .

```swift
let rawValue: CInt
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `remove(_:)`

> Inherited from   .

```swift
@discardableResult mutating func remove(_ member: Self.Element) -> Self.Element?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `setalgebra-implementations`

- **Role Heading:** API Collection


---

## `subtract(_:)`

> Inherited from   .

```swift
mutating func subtract(_ other: Self)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `subtracting(_:)`

> Inherited from   .

```swift
func subtracting(_ other: Self) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `symmetricdifference(_:)`

> Inherited from   .

```swift
func symmetricDifference(_ other: Self) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `union(_:)`

> Inherited from   .

```swift
func union(_ other: Self) -> Self
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `update(with:)`

> Inherited from   .

```swift
@discardableResult mutating func update(with newMember: Self.Element) -> Self.Element?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
