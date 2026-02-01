# Index

- `adapted(_:)`
- `fetchall(_:)-1loau`
- `fetchall(_:)-28pne`
- `fetchall(_:)-7p809`
- `fetchall(_:)-vdos`
- `fetchcount(_:)`
- `fetchcursor(_:)-19f5g`
- `fetchcursor(_:)-2ah3q`
- `fetchcursor(_:)-66xoi`
- `fetchcursor(_:)-9283d`
- `fetchone(_:)-2bq0k`
- `fetchone(_:)-44mvv`
- `fetchone(_:)-5hlkf`
- `fetchone(_:)-9fafl`
- `fetchset(_:)-4hhtm`
- `fetchset(_:)-4jdrq`
- `fetchset(_:)-6bdrd`
- `fetchset(_:)-9wshm`
- `makepreparedrequest(_:forsingleresult:)`
- `rowdecoder`

---


## `adapted(_:)`

> Returns an adapted request.

```swift
func adapted(_ adapter: @escaping (Database) throws -> any RowAdapter) -> AdaptedFetchRequest<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchall(_:)-1loau`

> Returns an array of fetched values.

```swift
func fetchAll(_ db: Database) throws -> [RowDecoder]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchall(_:)-28pne`

> Returns an array of fetched values.

```swift
func fetchAll(_ db: Database) throws -> [RowDecoder]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchall(_:)-7p809`

> Returns an array of fetched rows.

```swift
func fetchAll(_ db: Database) throws -> [Row]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchall(_:)-vdos`

> Returns an array of fetched records.

```swift
func fetchAll(_ db: Database) throws -> [RowDecoder]
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchcount(_:)`

> Returns the number of rows fetched by the request.

```swift
func fetchCount(_ db: Database) throws -> Int
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchcursor(_:)-19f5g`

> Returns a cursor over fetched values.

```swift
func fetchCursor(_ db: Database) throws -> DatabaseValueCursor<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchcursor(_:)-2ah3q`

> Returns a cursor over fetched records.

```swift
func fetchCursor(_ db: Database) throws -> RecordCursor<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchcursor(_:)-66xoi`

> Returns a cursor over fetched values.

```swift
func fetchCursor(_ db: Database) throws -> FastDatabaseValueCursor<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchcursor(_:)-9283d`

> Returns a cursor over fetched rows.

```swift
func fetchCursor(_ db: Database) throws -> RowCursor
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchone(_:)-2bq0k`

> Returns a single record.

```swift
func fetchOne(_ db: Database) throws -> RowDecoder?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchone(_:)-44mvv`

> Returns a single fetched value.

```swift
func fetchOne(_ db: Database) throws -> RowDecoder?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchone(_:)-5hlkf`

> Returns a single fetched value.

```swift
func fetchOne(_ db: Database) throws -> RowDecoder?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchone(_:)-9fafl`

> Returns a single row.

```swift
func fetchOne(_ db: Database) throws -> Row?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchset(_:)-4hhtm`

> Returns a set of fetched values.

```swift
func fetchSet(_ db: Database) throws -> Set<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchset(_:)-4jdrq`

> Returns a set of fetched records.

```swift
func fetchSet(_ db: Database) throws -> Set<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchset(_:)-6bdrd`

> Returns a set of fetched rows.

```swift
func fetchSet(_ db: Database) throws -> Set<Row>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `fetchset(_:)-9wshm`

> Returns a set of fetched values.

```swift
func fetchSet(_ db: Database) throws -> Set<RowDecoder>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `makepreparedrequest(_:forsingleresult:)`

> Returns a   .

```swift
func makePreparedRequest(_ db: Database, forSingleResult singleResult: Bool) throws -> PreparedRequest
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `rowdecoder`

> The type that tells how fetched database rows should be interpreted.

```swift
associatedtype RowDecoder
```

- **Symbol Kind:** associatedtype

- **Role Heading:** Associated Type


---
