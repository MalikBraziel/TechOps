# Index

- `jsonextract(atpath:)`
- `jsonextract(atpaths:)`
- `jsonrepresentation(atpath:)`
- `subscript(_:)`

---


## `jsonextract(atpath:)`

> The    SQL function.

```swift
func jsonExtract(atPath path: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `jsonextract(atpaths:)`

> The    SQL function.

```swift
func jsonExtract(atPaths paths: some Collection<some SQLExpressible>) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `jsonrepresentation(atpath:)`

> Returns a valid JSON string with the    SQL operator.

```swift
func jsonRepresentation(atPath path: some SQLExpressible) -> SQLExpression
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `subscript(_:)`

> The    SQL operator.

```swift
subscript(path: some SQLExpressible) -> SQLExpression { get }
```

- **Symbol Kind:** subscript

- **Role Heading:** Instance Subscript


---
