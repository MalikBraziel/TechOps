---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:_:)"
title: "reductions(_:_:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:_:)#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Reductions](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/reductions)
- reductions(\_:\_:)

Instance Method

# reductions(\_:\_:)

Returns an array containing the accumulated results of combining the elements of the sequence using the given closure.

AlgorithmsSwift

```
func reductions<Result>(
    _ initial: Result,
    _ transform: (Result, Self.Element) throws -> Result
) rethrows -> [Result]
```

[Reductions.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Reductions.swift#L115 "Open source file for Reductions.swift")

Available when `Self` is `Sequence`.

## [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:_:)\#parameters)

`initial`

The value to use as the initial value.

`transform`

A closure that combines the previously reduced result and the next element in the receiving sequence.

## [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:_:)\#return-value)

An array of the initial value followed by the reduced elements.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:_:)\#discussion)

This can be seen as applying the reduce function to each element and providing the initial value followed by these results as a sequence.

```
let runningTotal = [1, 2, 3, 4].reductions(0, +)
print(runningTotal)

// prints [0, 1, 3, 6, 10]

```

When `reductions(_:_:)` is called, the following steps occur:

1. The `initial` result is added to an array of results.

2. The `transform` closure is called with the `initial` result and the first element of the sequence, appending the result to the array.

3. The closure is called again repeatedly with the updated accumulating result and each element of the sequence, adding each result to the array.

4. When the sequence is exhausted, the results array is returned to the caller.


If the sequence has no elements, `transform` is never executed and an array containing only the `initial` result is returned.

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:_:)\#see-also)

[`func reductions((Self.Element, Self.Element) throws -> Self.Element) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:))

Returns an array containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reductions<Result>(into: Result, (inout Result, Self.Element) throws -> Void) rethrows -> [Result]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(into:_:))

Returns an array containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reductions((Self.Element, Self.Element) -> Self.Element) -> InclusiveReductionsSequence<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/reductions(_:))

Returns a sequence containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reductions<Result>(Result, (Result, Self.Element) -> Result) -> ExclusiveReductionsSequence<Self.Elements, Result>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/reductions(_:_:))

Returns a sequence containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reductions<Result>(into: Result, (inout Result, Self.Element) -> Void) -> ExclusiveReductionsSequence<Self.Elements, Result>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/reductions(into:_:))

Returns a sequence containing the accumulated results of combining the elements of the sequence using the given closure.

- [reductions(\_:\_:)](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:_:)#app-top)
- [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:_:)#parameters)
- [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:_:)#return-value)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:_:)#discussion)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:_:)#see-also)

Current page is reductions(\_:\_:)

|
|