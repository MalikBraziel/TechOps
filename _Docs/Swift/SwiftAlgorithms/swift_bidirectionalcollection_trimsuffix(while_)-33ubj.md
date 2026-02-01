---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimsuffix(while:)-33ubj"
title: "trimSuffix(while:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimsuffix(while:)-33ubj#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Trimming](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/trimming)
- trimSuffix(while:)

Instance Method

# trimSuffix(while:)

Mutates a `BidirectionalCollection` by discarding all elements at the end of it which satisfy the given predicate.

AlgorithmsSwift

```
mutating func trimSuffix(while predicate: (Self.Element) throws -> Bool) rethrows
```

[Trim.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Trim.swift#L188 "Open source file for Trim.swift")

Available when `Self` conforms to `RangeReplaceableCollection` and `Self` is `BidirectionalCollection`.

## [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimsuffix(while:)-33ubj\#parameters)

`predicate`

A closure which determines if the element should be removed from the string.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimsuffix(while:)-33ubj\#discussion)

This example uses `trimSuffix(while:)` to remove the white space at the beginning of the string:

```
let myString = "  hello, world  "
myString.trimSuffix(while: \.isWhitespace)
print(myString) // "  hello, world"

```

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimsuffix(while:)-33ubj\#see-also)

### [Trimming from the End](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimsuffix(while:)-33ubj\#Trimming-from-the-End)

[`func trimmingSuffix(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimmingsuffix(while:))

Returns a `SubSequence` formed by discarding all elements at the end of the collection which satisfy the given predicate.

[`func trimSuffix(while: (Self.Element) throws -> Bool) rethrows`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimsuffix(while:)-3o6x9)

Mutates a `BidirectionalCollection` by discarding all elements at the end of it which satisfy the given predicate.

- [trimSuffix(while:)](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimsuffix(while:)-33ubj#app-top)
- [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimsuffix(while:)-33ubj#parameters)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimsuffix(while:)-33ubj#discussion)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/bidirectionalcollection/trimsuffix(while:)-33ubj#see-also)

Current page is trimSuffix(while:)

|
|