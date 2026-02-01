# Index

- `custom(_:)`
- `deferredtodate`
- `formatted(_:)`
- `iso8601`
- `millisecondssince1970`
- `secondssince1970`
- `timeintervalsince1970`
- `timeintervalsincereferencedate`

---


## `custom(_:)`

> Encodes the result of the user-provided function

```swift
case custom((Date) -> (any DatabaseValueConvertible)?)
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `deferredtodate`

> The strategy that uses formatting from the Date structure.

```swift
case deferredToDate
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `formatted(_:)`

> Encodes a String, according to the provided formatter

```swift
case formatted(DateFormatter)
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `iso8601`

> Encodes dates according to the ISO 8601 and RFC 3339 standards

```swift
case iso8601
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `millisecondssince1970`

> Encodes an Int64: the number of milliseconds between the date and   midnight UTC on 1 January 1970

```swift
case millisecondsSince1970
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `secondssince1970`

> Encodes an Int64: the number of seconds between the date and   midnight UTC on 1 January 1970

```swift
case secondsSince1970
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `timeintervalsince1970`

> Encodes a Double: the number of seconds between the date and   midnight UTC on 1 January 1970

```swift
case timeIntervalSince1970
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `timeintervalsincereferencedate`

> Encodes a Double: the number of seconds between the date and   midnight UTC on 1 January 2001

```swift
case timeIntervalSinceReferenceDate
```

- **Symbol Kind:** case

- **Role Heading:** Case


---
