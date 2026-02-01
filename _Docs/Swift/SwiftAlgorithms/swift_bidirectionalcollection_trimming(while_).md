---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimming(while:)"
title: "trimming(while:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimming(while:)#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Trimming](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/trimming)
- trimming(while:)

Instance Method

# trimming(while:)

Returns a `SubSequence` formed by discarding all elements at the start and end of the collection which satisfy the given predicate.

AlgorithmsSwift

```
func trimming(while predicate: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence
```

[Trim.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Trim.swift#L113 "Open source file for Trim.swift")

Available when `Self` is `BidirectionalCollection`.

## [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimming(while:)\#parameters)

`predicate`

A closure which determines if the element should be omitted from the resulting slice.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimming(while:)\#discussion)

This example uses `trimming(while:)` to get a substring without the white space at the beginning and end of the string:

```
let myString = "  hello, world  "
print(myString.trimming(while: \.isWhitespace)) // "hello, world"

```

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimming(while:)\#see-also)

### [Trimming Both Ends of a Collection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimming(while:)\#Trimming-Both-Ends-of-a-Collection)

[`func trim(while: (Self.Element) throws -> Bool) rethrows`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trim(while:)-781az)

Mutates a `BidirectionalCollection` by discarding all elements at the start and at the end of it which satisfy the given predicate.

[`func trim(while: (Self.Element) throws -> Bool) rethrows`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trim(while:)-6cbz3)

Mutates a `BidirectionalCollection` by discarding all elements at the start and at the end of it which satisfy the given predicate.

- [trimming(while:)](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimming(while:)#app-top)
- [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimming(while:)#parameters)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimming(while:)#discussion)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimming(while:)#see-also)

Current page is trimming(while:)

|
|