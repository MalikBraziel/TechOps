---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trim(while:)-781az"
title: "trim(while:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trim(while:)-781az#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Trimming](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/trimming)
- trim(while:)

Instance Method

# trim(while:)

Mutates a `BidirectionalCollection` by discarding all elements at the start and at the end of it which satisfy the given predicate.

AlgorithmsSwift

```
mutating func trim(while predicate: (Self.Element) throws -> Bool) rethrows
```

[Trim.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Trim.swift#L213 "Open source file for Trim.swift")

Available when `Self` is `Self.SubSequence` and `BidirectionalCollection`.

## [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trim(while:)-781az\#parameters)

`predicate`

A closure which determines if the element should be removed from the string.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trim(while:)-781az\#discussion)

This example uses `trim(while:)` to remove the white space at the beginning of the string:

```
let myString = "  hello, world  "
myString.trim(while: \.isWhitespace)
print(myString) // "hello, world"

```

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trim(while:)-781az\#see-also)

### [Trimming Both Ends of a Collection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trim(while:)-781az\#Trimming-Both-Ends-of-a-Collection)

[`func trimming(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimming(while:))

Returns a `SubSequence` formed by discarding all elements at the start and end of the collection which satisfy the given predicate.

[`func trim(while: (Self.Element) throws -> Bool) rethrows`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trim(while:)-6cbz3)

Mutates a `BidirectionalCollection` by discarding all elements at the start and at the end of it which satisfy the given predicate.

- [trim(while:)](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trim(while:)-781az#app-top)
- [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trim(while:)-781az#parameters)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trim(while:)-781az#discussion)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trim(while:)-781az#see-also)

Current page is trim(while:)

|
|