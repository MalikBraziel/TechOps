# Index

- `default`
- `init()`
- `irregularsuffix(_:_:)`
- `plural(_:options:_:)`
- `pluralize(_:)`
- `singular(_:options:_:)`
- `singularize(_:)`
- `uncountablewords(_:)`

---


## `default`

> The default inflections.

```swift
nonisolated(unsafe) static var `default`: Inflections
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `init()`

```swift
init()
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `irregularsuffix(_:_:)`

> Appends an irregular singular/plural pair.

```swift
mutating func irregularSuffix(_ singular: String, _ plural: String)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `plural(_:options:_:)`

> Appends a pluralization rule.

```swift
mutating func plural(_ pattern: String, options: NSRegularExpression.Options = [.caseInsensitive], _ template: String)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `pluralize(_:)`

> Returns a pluralized string.

```swift
func pluralize(_ string: String) -> String
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `singular(_:options:_:)`

> Appends a singularization rule.

```swift
mutating func singular(_ pattern: String, options: NSRegularExpression.Options = [.caseInsensitive], _ template: String)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `singularize(_:)`

> Returns a singularized string.

```swift
func singularize(_ string: String) -> String
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `uncountablewords(_:)`

> Appends uncountable words.

```swift
mutating func uncountableWords(_ words: [String])
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
