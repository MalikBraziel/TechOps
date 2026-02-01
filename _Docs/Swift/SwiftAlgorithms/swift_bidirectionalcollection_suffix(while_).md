---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/suffix(while:)"
title: "suffix(while:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/suffix(while:)#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Trimming](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/trimming)
- suffix(while:)

Instance Method

# suffix(while:)

Returns a subsequence containing the elements from the end until `predicate` returns `false` and skipping the remaining elements.

AlgorithmsSwift

```
func suffix(while predicate: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence
```

[Suffix.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Suffix.swift#L27 "Open source file for Suffix.swift")

Available when `Self` is `BidirectionalCollection`.

## [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/suffix(while:)\#parameters)

`predicate`

A closure that takes an element of the sequence as its argument and returns `true` if the element should be included or `false` if it should be excluded. Once the predicate returns `false` it will not be called again.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/suffix(while:)\#discussion)

- [suffix(while:)](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/suffix(while:)#app-top)
- [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/suffix(while:)#parameters)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/suffix(while:)#discussion)

Current page is suffix(while:)

|
|