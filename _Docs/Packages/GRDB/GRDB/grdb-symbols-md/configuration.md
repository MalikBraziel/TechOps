# Index

- `acceptsdoublequotedstringliterals`
- `allowsunsafetransactions`
- `automaticmemorymanagement`
- `busymode`
- `foreignkeysenabled`
- `init()`
- `journalmode`
- `journalmodeconfiguration`
- `label`
- `maximumreadercount`
- `observessuspensionnotifications`
- `persistentreadonlyconnections`
- `preparedatabase(_:)`
- `publicstatementarguments`
- `qos`
- `readonly`
- `readqos`
- `schemasource`
- `targetqueue`
- `transactionclock`
- `writeqos`
- `writetargetqueue`

---


## `acceptsdoublequotedstringliterals`

> A boolean value indicating whether SQLite 3.29+ interprets   double-quoted strings as string literals when they does not match any   valid identifier.

```swift
var acceptsDoubleQuotedStringLiterals: Bool
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `allowsunsafetransactions`

> A boolean value indicating whether it is valid to leave a transaction   opened at the end of a database access method.

```swift
var allowsUnsafeTransactions: Bool
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `automaticmemorymanagement`

> A boolean value indicating whether the database connection releases   memory when entering the background or upon receiving a memory warning   in iOS.

```swift
var automaticMemoryManagement: Bool
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `busymode`

> Defines the how    errors are handled.

```swift
var busyMode: Database.BusyMode
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `foreignkeysenabled`

> A boolean value indicating whether foreign key support is enabled.

```swift
var foreignKeysEnabled: Bool
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `init()`

> Creates a factory configuration.

```swift
init()
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `journalmode`

> Defines how the journal mode is configured when the database   connection is opened.

```swift
var journalMode: Configuration.JournalModeConfiguration
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `journalmodeconfiguration`

> Defines how the journal mode is configured when the database   connection is opened.

```swift
enum JournalModeConfiguration
```

- **Symbol Kind:** enum

- **Role Heading:** Enumeration


---

## `label`

> A label that describes a database connection.

```swift
var label: String?
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `maximumreadercount`

> The maximum number of concurrent reader connections.

```swift
var maximumReaderCount: Int
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `observessuspensionnotifications`

> A boolean value indicating whether the database connection listens to   the    and     notifications.

```swift
var observesSuspensionNotifications: Bool
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `persistentreadonlyconnections`

> A boolean value indicating whether read-only connections should be   kept open.

```swift
var persistentReadOnlyConnections: Bool
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `preparedatabase(_:)`

> Defines a function to run whenever an SQLite connection is opened.

```swift
mutating func prepareDatabase(_ setup: @escaping (Database) throws -> Void)
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `publicstatementarguments`

> A boolean value indicating whether statement arguments are visible in   the description of database errors and trace events.

```swift
var publicStatementArguments: Bool
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `qos`

> The quality of service of database accesses.

```swift
var qos: DispatchQoS
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `readonly`

> A boolean value indicating whether an SQLite connection is read-only.

```swift
var readonly: Bool
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `readqos`

> The effective quality of service of read-only database accesses.

```swift
var readQoS: DispatchQoS { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `schemasource`

> A custom schema source.

```swift
var schemaSource: (any DatabaseSchemaSource)?
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `targetqueue`

> The target dispatch queue for database accesses.

```swift
var targetQueue: DispatchQueue?
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `transactionclock`

> The clock that feeds   .

```swift
var transactionClock: any TransactionClock
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `writeqos`

> The effective quality of service of write database accesses.

```swift
var writeQoS: DispatchQoS { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `writetargetqueue`

> The target dispatch queue for write database accesses.

```swift
var writeTargetQueue: DispatchQueue?
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---
