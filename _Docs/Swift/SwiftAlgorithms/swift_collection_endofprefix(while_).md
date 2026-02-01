---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/endofprefix(while:)"
title: "endOfPrefix(while:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/endofprefix(while:)#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Trimming](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/trimming)
- endOfPrefix(while:)

Instance Method

# endOfPrefix(while:)

Returns the exclusive upper bound of the prefix of elements that satisfy the predicate.

AlgorithmsSwift

```
func endOfPrefix(while predicate: (Self.Element) throws -> Bool) rethrows -> Self.Index
```

[Suffix.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Suffix.swift#L49 "Open source file for Suffix.swift")

Available when `Self` is `Collection`.

## [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/endofprefix(while:)\#parameters)

`predicate`

A closure that takes an element of the collection as its argument and returns `true` if the element is part of the prefix or `false` if it is not. Once the predicate returns `false` it will not be called again.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/endofprefix(while:)\#discussion)

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/endofprefix(while:)\#see-also)

### [Finding Boundaries within a Collection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/endofprefix(while:)\#Finding-Boundaries-within-a-Collection)

[`func startOfSuffix(while: (Self.Element) throws -> Bool) rethrows -> Self.Index`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/startofsuffix(while:))

Returns the inclusive lower bound of the suffix of elements that satisfy the predicate.

- [endOfPrefix(while:)](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/endofprefix(while:)#app-top)
- [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/endofprefix(while:)#parameters)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/endofprefix(while:)#discussion)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/endofprefix(while:)#see-also)

Current page is endOfPrefix(while:)

|
|