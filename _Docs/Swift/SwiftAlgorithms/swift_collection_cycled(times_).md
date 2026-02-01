---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled(times:)"
title: "cycled(times:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled(times:)#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Extending](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/extending)
- cycled(times:)

Instance Method

# cycled(times:)

Returns a sequence that repeats the elements of this collection the specified number of times.

AlgorithmsSwift

```
func cycled(times: Int) -> [`CycledTimesCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/cycledtimescollection) <Self>
```

[Cycle.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Cycle.swift#L219 "Open source file for Cycle.swift")

Available when `Self` is `Collection`.

## [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled(times:)\#parameters)

`times`

The number of times to repeat this sequence. `times` must be zero or greater.

## [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled(times:)\#return-value)

A sequence that repeats the elements of this sequence `times` times.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled(times:)\#discussion)

Passing `1` as `times` results in this collection’s elements being provided a single time; passing `0` results in an empty sequence. The `print(_:)` function in this example is never called:

```
for x in [1, 2, 3].cycled(times: 0) {
    print(x)
}

```

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled(times:)\#see-also)

### [Cycling a Collection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled(times:)\#Cycling-a-Collection)

[`func cycled() -> CycledSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled())

Returns a sequence that repeats the elements of this collection forever.

- [cycled(times:)](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled(times:)#app-top)
- [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled(times:)#parameters)
- [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled(times:)#return-value)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled(times:)#discussion)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled(times:)#see-also)

Current page is cycled(times:)

|
|