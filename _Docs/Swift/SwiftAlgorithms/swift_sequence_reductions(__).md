---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:)"
title: "reductions(_:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:)#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Reductions](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/reductions)
- reductions(\_:)

Instance Method

# reductions(\_:)

Returns an array containing the accumulated results of combining the elements of the sequence using the given closure.

AlgorithmsSwift

```
func reductions(_ transform: (Self.Element, Self.Element) throws -> Self.Element) rethrows -> [Self.Element]
```

[Reductions.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Reductions.swift#L418 "Open source file for Reductions.swift")

Available when `Self` is `Sequence`.

## [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:)\#parameters)

`transform`

A closure that combines the previously reduced result and the next element in the receiving sequence.

## [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:)\#return-value)

An array of the reduced elements.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:)\#discussion)

This can be seen as applying the reduce function to each element and providing the initial value followed by these results as a sequence.

```
let runningTotal = [1, 2, 3, 4].reductions(+)
print(runningTotal)

// prints [1, 3, 6, 10]

```

When `reductions(_:)` is called, the following steps occur:

1. The `transform` closure is called with the first and second elements of the sequence, appending the result to an array of results.

2. The closure is called again repeatedly with the updated accumulating result and the next element of the sequence, adding each result to the array.

3. When the sequence is exhausted, the results array is returned to the caller.


If the sequence has no elements, `transform` is never executed and an empty array is returned.

If the sequence has one element, `transform` is never executed and an array containing only that first element is returned.

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:)\#see-also)

[`func reductions<Result>(Result, (Result, Self.Element) throws -> Result) rethrows -> [Result]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:_:))

Returns an array containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reductions<Result>(into: Result, (inout Result, Self.Element) throws -> Void) rethrows -> [Result]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(into:_:))

Returns an array containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reductions((Self.Element, Self.Element) -> Self.Element) -> InclusiveReductionsSequence<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/reductions(_:))

Returns a sequence containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reductions<Result>(Result, (Result, Self.Element) -> Result) -> ExclusiveReductionsSequence<Self.Elements, Result>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/reductions(_:_:))

Returns a sequence containing the accumulated results of combining the elements of the sequence using the given closure.

[`func reductions<Result>(into: Result, (inout Result, Self.Element) -> Void) -> ExclusiveReductionsSequence<Self.Elements, Result>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/reductions(into:_:))

Returns a sequence containing the accumulated results of combining the elements of the sequence using the given closure.

- [reductions(\_:)](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:)#app-top)
- [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:)#parameters)
- [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:)#return-value)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:)#discussion)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/reductions(_:)#see-also)

Current page is reductions(\_:)

|
|