---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chain(_:_:)"
title: "chain(_:_:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chain(_:_:)#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Extending](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/extending)
- chain(\_:\_:)

Function

# chain(\_:\_:)

Returns a new sequence that iterates over the two given sequences, one followed by the other.

```
func chain<S1, S2>(
    _ s1: S1,
    _ s2: S2
) -> [`Chain2Sequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chain2sequence) <S1, S2> where S1 : Sequence, S2 : Sequence, S1.Element == S2.Element
```

[Chain.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Chain.swift#L317 "Open source file for Chain.swift")

## [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chain(_:_:)\#parameters)

`s1`

The first sequence.

`s2`

The second sequence.

## [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chain(_:_:)\#return-value)

A sequence that iterates first over the elements of `s1`, and then over the elements of `s2`.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chain(_:_:)\#discussion)

You can pass any two sequences or collections that have the same element type as this sequence. This example chains a closed range of `Int` with an array of `Int`:

```
let small = 1...3
let big = [100, 200, 300]
for num in chain(small, big) {
    print(num)
}
// 1
// 2
// 3
// 100
// 200
// 300

```

- [chain(\_:\_:)](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chain(_:_:)#app-top)
- [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chain(_:_:)#parameters)
- [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chain(_:_:)#return-value)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/chain(_:_:)#discussion)

Current page is chain(\_:\_:)

|
|