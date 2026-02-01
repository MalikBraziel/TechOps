# Index

- `annotated(withoptional:)`
- `annotated(withrequired:)`
- `including(all:)`
- `including(optional:)`
- `including(required:)`
- `joining(optional:)`
- `joining(required:)`

---


## `annotated(withoptional:)`

> Appends the columns of the eventual associated record to the   selected columns.

```swift
func annotated<A>(withOptional association: A) -> Self where A : Association, Self.RowDecoder == A.OriginRowDecoder
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `annotated(withrequired:)`

> Appends the columns of the associated record to the selected columns.   Records that do not have an associated record are discarded.

```swift
func annotated<A>(withRequired association: A) -> Self where A : Association, Self.RowDecoder == A.OriginRowDecoder
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `including(all:)`

> Returns a request that fetches all records associated with each record   in this request.

```swift
func including<A>(all association: A) -> Self where A : AssociationToMany, Self.RowDecoder == A.OriginRowDecoder
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `including(optional:)`

> Returns a request that fetches the eventual record associated with each   record of this request.

```swift
func including<A>(optional association: A) -> Self where A : Association, Self.RowDecoder == A.OriginRowDecoder
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `including(required:)`

> Returns a request that fetches the record associated with each record in   this request. Records that do not have an associated record   are discarded.

```swift
func including<A>(required association: A) -> Self where A : Association, Self.RowDecoder == A.OriginRowDecoder
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `joining(optional:)`

> Returns a request that joins each record of this request to its   eventual associated record.

```swift
func joining<A>(optional association: A) -> Self where A : Association, Self.RowDecoder == A.OriginRowDecoder
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `joining(required:)`

> Returns a request that joins each record of this request to its   associated record. Records that do not have an associated record   are discarded.

```swift
func joining<A>(required association: A) -> Self where A : Association, Self.RowDecoder == A.OriginRowDecoder
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
