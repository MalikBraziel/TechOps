---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled()"
title: "cycled() | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled()#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Extending](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/extending)
- cycled()

Instance Method

# cycled()

Returns a sequence that repeats the elements of this collection forever.

AlgorithmsSwift

```
func cycled() -> [`CycledSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/cycledsequence) <Self>
```

[Cycle.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Cycle.swift#L197 "Open source file for Cycle.swift")

Available when `Self` is `Collection`.

## [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled()\#return-value)

A sequence that repeats the elements of this collection forever.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled()\#discussion)

Use the `cycled()` method to repeat the elements of a sequence or collection forever. You can combine `cycled()` with another, finite sequence to iterate over the two together.

```
for (evenOrOdd, number) in zip(["even", "odd"].cycled(), 0..<10) {
    print("\(number) is \(evenOrOdd)")
}
// 0 is even
// 1 is odd
// 2 is even
// 3 is odd
// ...
// 9 is odd

```

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled()\#see-also)

### [Cycling a Collection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled()\#Cycling-a-Collection)

[`func cycled(times: Int) -> CycledTimesCollection<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled(times:))

Returns a sequence that repeats the elements of this collection the specified number of times.

- [cycled()](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled()#app-top)
- [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled()#return-value)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled()#discussion)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/cycled()#see-also)

Current page is cycled()

|
|