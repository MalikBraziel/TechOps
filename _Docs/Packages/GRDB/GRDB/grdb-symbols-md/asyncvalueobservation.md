# Index

- `allsatisfy(_:)`
- `asynciterator`
- `asyncsequence-implementations`
- `bufferingpolicy`
- `characters`
- `compactmap(_:)-25ou7`
- `compactmap(_:)-7qh78`
- `contains(_:)`
- `contains(where:)`
- `drop(while:)`
- `dropfirst(_:)`
- `filter(_:)`
- `first(where:)`
- `flatmap(_:)-4eac9`
- `flatmap(_:)-6grlk`
- `flatmap(_:)-jstc`
- `flatmap(_:)-psoy`
- `iterator`
- `lines`
- `makeasynciterator()`
- `map(_:)-6jgpd`
- `map(_:)-9p6ja`
- `max()`
- `max(by:)`
- `min()`
- `min(by:)`
- `prefix(_:)`
- `prefix(while:)`
- `reduce(_:_:)`
- `reduce(into:_:)`
- `unicodescalars`

---


## `allsatisfy(_:)`

> Inherited from   .

```swift
func allSatisfy(_ predicate: (Self.Element) async throws -> Bool) async rethrows -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `asynciterator`

> Inherited from   .

```swift
typealias AsyncIterator = Iterator
```

- **Symbol Kind:** typealias

- **Role Heading:** Type Alias


---

## `asyncsequence-implementations`

- **Role Heading:** API Collection


---

## `bufferingpolicy`

```swift
typealias BufferingPolicy = AsyncThrowingStream<Element, Error>.Continuation.BufferingPolicy
```

- **Symbol Kind:** typealias

- **Role Heading:** Type Alias


---

## `characters`

> Inherited from   .

```swift
var characters: AsyncCharacterSequence<Self> { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `compactmap(_:)-25ou7`

> Inherited from   .

```swift
@preconcurrency func compactMap<ElementOfResult>(_ transform: @escaping (Self.Element) async throws -> ElementOfResult?) -> AsyncThrowingCompactMapSequence<Self, ElementOfResult>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `compactmap(_:)-7qh78`

> Inherited from   .

```swift
@preconcurrency func compactMap<ElementOfResult>(_ transform: @escaping (Self.Element) async -> ElementOfResult?) -> AsyncCompactMapSequence<Self, ElementOfResult>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `contains(_:)`

> Inherited from   .

```swift
func contains(_ search: Self.Element) async rethrows -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `contains(where:)`

> Inherited from   .

```swift
func contains(where predicate: (Self.Element) async throws -> Bool) async rethrows -> Bool
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `drop(while:)`

> Inherited from   .

```swift
@preconcurrency func drop(while predicate: @escaping (Self.Element) async -> Bool) -> AsyncDropWhileSequence<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `dropfirst(_:)`

> Inherited from   .

```swift
func dropFirst(_ count: Int = 1) -> AsyncDropFirstSequence<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `filter(_:)`

> Inherited from   .

```swift
@preconcurrency func filter(_ isIncluded: @escaping (Self.Element) async -> Bool) -> AsyncFilterSequence<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `first(where:)`

> Inherited from   .

```swift
func first(where predicate: (Self.Element) async throws -> Bool) async rethrows -> Self.Element?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `flatmap(_:)-4eac9`

> Inherited from   .

```swift
@preconcurrency func flatMap<SegmentOfResult>(_ transform: @escaping (Self.Element) async -> SegmentOfResult) -> AsyncFlatMapSequence<Self, SegmentOfResult> where SegmentOfResult : AsyncSequence, Self.Failure == SegmentOfResult.Failure
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `flatmap(_:)-6grlk`

> Inherited from   .

```swift
@preconcurrency func flatMap<SegmentOfResult>(_ transform: @escaping (Self.Element) async throws -> SegmentOfResult) -> AsyncThrowingFlatMapSequence<Self, SegmentOfResult> where SegmentOfResult : AsyncSequence
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `flatmap(_:)-jstc`

> Inherited from   .

```swift
@preconcurrency func flatMap<SegmentOfResult>(_ transform: @escaping (Self.Element) async -> SegmentOfResult) -> AsyncFlatMapSequence<Self, SegmentOfResult> where SegmentOfResult : AsyncSequence, SegmentOfResult.Failure == Never
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `flatmap(_:)-psoy`

> Inherited from   .

```swift
@preconcurrency func flatMap<SegmentOfResult>(_ transform: @escaping (Self.Element) async -> SegmentOfResult) -> AsyncFlatMapSequence<Self, SegmentOfResult> where SegmentOfResult : AsyncSequence, Self.Failure == Never, SegmentOfResult.Failure == Never
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `iterator`

```swift
struct Iterator
```

- **Symbol Kind:** struct

- **Role Heading:** Structure


---

## `lines`

> Inherited from   .

```swift
var lines: AsyncLineSequence<Self> { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `makeasynciterator()`

> Inherited from   .

```swift
func makeAsyncIterator() -> Iterator
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `map(_:)-6jgpd`

> Inherited from   .

```swift
@preconcurrency func map<Transformed>(_ transform: @escaping (Self.Element) async throws -> Transformed) -> AsyncThrowingMapSequence<Self, Transformed>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `map(_:)-9p6ja`

> Inherited from   .

```swift
@preconcurrency func map<Transformed>(_ transform: @escaping (Self.Element) async -> Transformed) -> AsyncMapSequence<Self, Transformed>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `max()`

> Inherited from   .

```swift
@warn_unqualified_access func max() async rethrows -> Self.Element?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `max(by:)`

> Inherited from   .

```swift
@warn_unqualified_access func max(by areInIncreasingOrder: (Self.Element, Self.Element) async throws -> Bool) async rethrows -> Self.Element?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `min()`

> Inherited from   .

```swift
@warn_unqualified_access func min() async rethrows -> Self.Element?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `min(by:)`

> Inherited from   .

```swift
@warn_unqualified_access func min(by areInIncreasingOrder: (Self.Element, Self.Element) async throws -> Bool) async rethrows -> Self.Element?
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `prefix(_:)`

> Inherited from   .

```swift
func prefix(_ count: Int) -> AsyncPrefixSequence<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `prefix(while:)`

> Inherited from   .

```swift
@preconcurrency func prefix(while predicate: @escaping (Self.Element) async -> Bool) rethrows -> AsyncPrefixWhileSequence<Self>
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `reduce(_:_:)`

> Inherited from   .

```swift
func reduce<Result>(_ initialResult: Result, _ nextPartialResult: (Result, Self.Element) async throws -> Result) async rethrows -> Result
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `reduce(into:_:)`

> Inherited from   .

```swift
func reduce<Result>(into initialResult: Result, _ updateAccumulatingResult: (inout Result, Self.Element) async throws -> Void) async rethrows -> Result
```

- **Symbol Kind:** method

- **Role Heading:** Instance Method


---

## `unicodescalars`

> Inherited from   .

```swift
var unicodeScalars: AsyncUnicodeScalarSequence<Self> { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---
