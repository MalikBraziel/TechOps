# Index

- `caseinsensitivecompare`
- `id-swift.property`
- `id-swift.struct`
- `init(_:function:)`
- `localizedcaseinsensitivecompare`
- `localizedcompare`
- `localizedstandardcompare`
- `name`
- `unicodecompare`

---


## `caseinsensitivecompare`

> A collation that compares strings according to the Foundation     method.

```swift
static let caseInsensitiveCompare: DatabaseCollation
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `id-swift.property`

> The identifier of the collation.

```swift
var id: ID { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `id-swift.struct`

> The identifier of an SQLite collation.

```swift
struct ID
```

- **Symbol Kind:** struct

- **Role Heading:** Structure


---

## `init(_:function:)`

> Creates a collation.

```swift
convenience init(_ name: String, function: @escaping (String, String) -> ComparisonResult)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `localizedcaseinsensitivecompare`

> A collation that compares strings according to the Foundation     method.

```swift
static let localizedCaseInsensitiveCompare: DatabaseCollation
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `localizedcompare`

> A collation that compares strings according to the Foundation     method.

```swift
static let localizedCompare: DatabaseCollation
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `localizedstandardcompare`

> A collation that compares strings according to the Foundation     method.

```swift
static let localizedStandardCompare: DatabaseCollation
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `name`

> The name of the collation.

```swift
let name: String
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `unicodecompare`

> A collation that compares strings according to the built-in    and     operators of the Swift String.

```swift
static let unicodeCompare: DatabaseCollation
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---
