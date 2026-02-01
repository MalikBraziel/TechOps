---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/reductions(into:_:)"
title: "reductions(into:_:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/reductions(into:_:)#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Reductions](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/reductions)
- reductions(into:\_:)

Instance Method

# reductions(into:\_:)

Returns a sequence containing the accumulated results of combining the elements of the sequence using the given closure.

AlgorithmsSwift

```
func reductions<Result>(
    into initial: Result,
    _ transform: @escaping (inout Result, Self.Element) -> Void
) -> [`ExclusiveReductionsSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/exclusivereductionssequence) <Self.Elements, Result>
```

[Reductions.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Reductions.swift#L68 "Open source file for Reductions.swift")

Available when `Self` is `LazySequenceProtocol`.

## [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/reductions(into:_:)\#parameters)

`initial`

The value to use as the initial value.

`transform`

A closure that combines the previously reduced result and the next element in the receiving sequence.

## [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/reductions(into:_:)\#return-value)

A sequence of the initial value followed by the reduced elements.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/reductions(into:_:)\#discussion)

This can be seen as applying the reduce function to each element and providing the initial value followed by these results as a sequence.

```
let runningTotal = [1, 2, 3, 4].lazy.reductions(into: 0, +)
print(Array(runningTotal))

// prints [0, 1, 3, 6, 10]

```

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/reductions(into:_:)\#see-also)

[`func reductions((Self.Element, Self.Element) throws -> Self.Element) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:))

Returns an array containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reductions<Result>(Result, (Result, Self.Element) throws -> Result) rethrows -> [Result]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:_:))

Returns an array containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reductions<Result>(into: Result, (inout Result, Self.Element) throws -> Void) rethrows -> [Result]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(into:_:))

Returns an array containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reductions((Self.Element, Self.Element) -> Self.Element) -> InclusiveReductionsSequence<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/reductions(_:))

Returns a sequence containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reductions<Result>(Result, (Result, Self.Element) -> Result) -> ExclusiveReductionsSequence<Self.Elements, Result>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/reductions(_:_:))

Returns a sequence containing the accumulated results of combining the elements of the sequence using the given closure.

- [reductions(into:\_:)](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/reductions(into:_:)#app-top)
- [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/reductions(into:_:)#parameters)
- [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/reductions(into:_:)#return-value)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/reductions(into:_:)#discussion)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/reductions(into:_:)#see-also)

Current page is reductions(into:\_:)

|
|