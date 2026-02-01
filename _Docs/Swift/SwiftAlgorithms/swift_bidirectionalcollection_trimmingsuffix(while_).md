---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimmingsuffix(while:)"
title: "trimmingSuffix(while:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimmingsuffix(while:)#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Trimming](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/trimming)
- trimmingSuffix(while:)

Instance Method

# trimmingSuffix(while:)

Returns a `SubSequence` formed by discarding all elements at the end of the collection which satisfy the given predicate.

AlgorithmsSwift

```
func trimmingSuffix(while predicate: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence
```

[Trim.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Trim.swift#L134 "Open source file for Trim.swift")

Available when `Self` is `BidirectionalCollection`.

## [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimmingsuffix(while:)\#parameters)

`predicate`

A closure which determines if the element should be omitted from the resulting slice.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimmingsuffix(while:)\#discussion)

This example uses `trimmingSuffix(while:)` to get a substring without the white space at the end of the string:

```
let myString = "  hello, world  "
print(myString.trimmingSuffix(while: \.isWhitespace)) // "  hello, world"

```

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimmingsuffix(while:)\#see-also)

### [Trimming from the End](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimmingsuffix(while:)\#Trimming-from-the-End)

[`func trimSuffix(while: (Self.Element) throws -> Bool) rethrows`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimsuffix(while:)-33ubj)

Mutates a `BidirectionalCollection` by discarding all elements at the end of it which satisfy the given predicate.

[`func trimSuffix(while: (Self.Element) throws -> Bool) rethrows`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimsuffix(while:)-3o6x9)

Mutates a `BidirectionalCollection` by discarding all elements at the end of it which satisfy the given predicate.

- [trimmingSuffix(while:)](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimmingsuffix(while:)#app-top)
- [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimmingsuffix(while:)#parameters)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimmingsuffix(while:)#discussion)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimmingsuffix(while:)#see-also)

Current page is trimmingSuffix(while:)

|
|