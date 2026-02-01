# Index

- `custom(_:)`
- `deferredtodate`
- `formatted(_:)`
- `iso8601`
- `millisecondssince1970`
- `timeintervalsince1970`
- `timeintervalsincereferencedate`

---


## `custom(_:)`

> Decodes according to the user-provided function.

```swift
case custom((DatabaseValue) -> Date?)
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

> Decodes a String, according to the provided formatter

```swift
case formatted(DateFormatter)
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `iso8601`

> Decodes dates according to the ISO 8601 standards

```swift
case iso8601
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `millisecondssince1970`

> Decodes numeric values as a number of milliseconds between the date and   midnight UTC on 1 January 1970

```swift
case millisecondsSince1970
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `timeintervalsince1970`

> Decodes numeric values as a number of seconds between the date and   midnight UTC on 1 January 1970

```swift
case timeIntervalSince1970
```

- **Symbol Kind:** case

- **Role Heading:** Case


---

## `timeintervalsincereferencedate`

> Decodes numeric values as a number of seconds between the date and   midnight UTC on 1 January 2001

```swift
case timeIntervalSinceReferenceDate
```

- **Symbol Kind:** case

- **Role Heading:** Case


---
