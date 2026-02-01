---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/striding(by:)"
title: "striding(by:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/striding(by:)#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Selecting Elements](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/selecting)
- striding(by:)

Instance Method

# striding(by:)

Returns a sequence stepping through the elements every `step` starting at the first value. Any remainders of the stride will be trimmed.

AlgorithmsSwift

```
func striding(by step: Int) -> [`StridingCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/stridingcollection) <Self>
```

[Stride.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Stride.swift#L50 "Open source file for Stride.swift")

Available when `Self` is `Collection`.

## [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/striding(by:)\#parameters)

`step`

The amount to step with each iteration.

## [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/striding(by:)\#return-value)

Returns a collection for stepping through the elements by the specified amount.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/striding(by:)\#discussion)

```
(0...10).striding(by: 2) // == [0, 2, 4, 6, 8, 10]
(0...10).striding(by: 3) // == [0, 3, 6, 9]

```

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/striding(by:)\#see-also)

### [Selecting Elements at an Interval](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/striding(by:)\#Selecting-Elements-at-an-Interval)

[`func striding(by: Int) -> StridingSequence<Self>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/striding(by:))

Returns a sequence stepping through the elements every `step` starting at the first value. Any remainders of the stride will be trimmed.

- [striding(by:)](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/striding(by:)#app-top)
- [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/striding(by:)#parameters)
- [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/striding(by:)#return-value)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/striding(by:)#discussion)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/striding(by:)#see-also)

Current page is striding(by:)

|
|