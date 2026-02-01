# Index

- `handleevents(willstart:willfetch:willtrackregion:databasedidchange:didreceivevalue:didfail:didcancel:)`
- `map(_:)`
- `print(_:to:)`
- `publisher(in:scheduling:)`
- `removeduplicates()`
- `removeduplicates(by:)`
- `requireswriteaccess`
- `shared(in:scheduling:extent:)`
- `start(in:scheduling:onerror:onchange:)-4mqbs`
- `start(in:scheduling:onerror:onchange:)-t62r`
- `tracking(_:)`
- `tracking(region:_:fetch:)`
- `tracking(regions:fetch:)`
- `trackingconstantregion(_:)`
- `values(in:scheduling:bufferingpolicy:)`

---


## `handleevents(willstart:willfetch:willtrackregion:databasedidchange:didreceivevalue:didfail:didcancel:)`

> Performs the specified closures when observation events occur.

```swift
func handleEvents(willStart: (() -> Void)? = nil, willFetch: (() -> Void)? = nil, willTrackRegion: ((DatabaseRegion) -> Void)? = nil, databaseDidChange: (() -> Void)? = nil, didReceiveValue: ((Reducer.Value) -> Void)? = nil, didFail: ((Error) -> Void)? = nil, didCancel: (() -> Void)? = nil) -> ValueObservation<ValueReducers.Trace<Reducer>>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `map(_:)`

> Transforms all values from the upstream observation with a   provided closure.

```swift
func map<T>(_ transform: @escaping (Reducer.Value) throws -> T) -> ValueObservation<ValueReducers.Map<Reducer, T>> where T : Sendable
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `print(_:to:)`

> Prints log messages for all observation events.

```swift
func print(_ prefix: String = "", to stream: sending TextOutputStream? = nil) -> ValueObservation<ValueReducers.Trace<Reducer>>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `publisher(in:scheduling:)`

> Returns a publisher of observed values.

```swift
func publisher(in reader: any DatabaseReader, scheduling scheduler: some ValueObservationScheduler = .async(onQueue: .main)) -> DatabasePublishers.Value<Reducer.Value>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `removeduplicates()`

> Notifies only values that don’t match the previously observed value.

```swift
func removeDuplicates() -> ValueObservation<ValueReducers.RemoveDuplicates<Reducer>>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `removeduplicates(by:)`

> Notifies only values that don’t match the previously observed value, as   evaluated by a provided closure.

```swift
func removeDuplicates(by predicate: sending @escaping (Reducer.Value, Reducer.Value) -> Bool) -> ValueObservation<ValueReducers.RemoveDuplicates<Reducer>>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `requireswriteaccess`

> A boolean value indicating whether the observation requires write access   when it fetches fresh values.

```swift
var requiresWriteAccess: Bool
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `shared(in:scheduling:extent:)`

> Returns a shared value observation that spares database resources by   sharing a single underlying    subscription.

```swift
func shared(in reader: any DatabaseReader, scheduling scheduler: some ValueObservationScheduler = .async(onQueue: .main), extent: SharedValueObservationExtent = .whileObserved) -> SharedValueObservation<Reducer.Value>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `start(in:scheduling:onerror:onchange:)-4mqbs`

> Starts observing the database and notifies fresh values on the   main actor.

```swift
@preconcurrency @MainActor func start(in reader: any DatabaseReader, scheduling scheduler: some ValueObservationMainActorScheduler = .mainActor, onError: @escaping @MainActor (Error) -> Void, onChange: @escaping @MainActor (Reducer.Value) -> Void) -> AnyDatabaseCancellable
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `start(in:scheduling:onerror:onchange:)-t62r`

> Starts observing the database.

```swift
@preconcurrency func start(in reader: any DatabaseReader, scheduling scheduler: some ValueObservationScheduler, onError: @escaping (Error) -> Void, onChange: @escaping (Reducer.Value) -> Void) -> AnyDatabaseCancellable
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `tracking(_:)`

> Creates a    that notifies the fetched values whenever   it changes.

```swift
@preconcurrency static func tracking<Value>(_ fetch: @escaping (Database) throws -> Value) -> ValueObservation<Reducer> where Reducer == ValueReducers.Fetch<Value>, Value : Sendable
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `tracking(region:_:fetch:)`

> Creates a    that notifies the fetched value whenever   the provided regions are modified.

```swift
@preconcurrency static func tracking<Value>(region: any DatabaseRegionConvertible, _ otherRegions: any DatabaseRegionConvertible..., fetch: @escaping (Database) throws -> Value) -> ValueObservation<Reducer> where Reducer == ValueReducers.Fetch<Value>, Value : Sendable
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `tracking(regions:fetch:)`

> Creates a    that notifies the fetched value whenever   the provided regions are modified.

```swift
@preconcurrency static func tracking<Value>(regions: [any DatabaseRegionConvertible], fetch: @escaping (Database) throws -> Value) -> ValueObservation<Reducer> where Reducer == ValueReducers.Fetch<Value>, Value : Sendable
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `trackingconstantregion(_:)`

> Creates an optimized    that notifies the fetched value   whenever it changes.

```swift
@preconcurrency static func trackingConstantRegion<Value>(_ fetch: @escaping (Database) throws -> Value) -> ValueObservation<Reducer> where Reducer == ValueReducers.Fetch<Value>, Value : Sendable
```

- **Symbol Kind:** method

- **Role Heading:** Type Method


---

## `values(in:scheduling:bufferingpolicy:)`

> Returns an asynchronous sequence of observed values.

```swift
func values(in reader: any DatabaseReader, scheduling scheduler: some ValueObservationScheduler = .task, bufferingPolicy: AsyncValueObservation<Reducer.Value>.BufferingPolicy = .unbounded) -> AsyncValueObservation<Reducer.Value>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---
