---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/startofsuffix(while:)"
title: "startOfSuffix(while:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/startofsuffix(while:)#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Trimming](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/trimming)
- startOfSuffix(while:)

Instance Method

# startOfSuffix(while:)

Returns the inclusive lower bound of the suffix of elements that satisfy the predicate.

AlgorithmsSwift

```
func startOfSuffix(while predicate: (Self.Element) throws -> Bool) rethrows -> Self.Index
```

[Suffix.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Suffix.swift#L75 "Open source file for Suffix.swift")

Available when `Self` is `BidirectionalCollection`.

## [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/startofsuffix(while:)\#parameters)

`predicate`

A closure that takes an element of the collection as its argument and returns `true` if the element is part of the suffix or `false` if it is not. Once the predicate returns `false` it will not be called again.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/startofsuffix(while:)\#discussion)

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/startofsuffix(while:)\#see-also)

### [Finding Boundaries within a Collection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/startofsuffix(while:)\#Finding-Boundaries-within-a-Collection)

[`func endOfPrefix(while: (Self.Element) throws -> Bool) rethrows -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/endofprefix(while:))

Returns the exclusive upper bound of the prefix of elements that satisfy the predicate.

- [startOfSuffix(while:)](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/startofsuffix(while:)#app-top)
- [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/startofsuffix(while:)#parameters)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/startofsuffix(while:)#discussion)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/startofsuffix(while:)#see-also)

Current page is startOfSuffix(while:)

|
|