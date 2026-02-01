---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimprefix(while:)-2r8n8"
title: "trimPrefix(while:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimprefix(while:)-2r8n8#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Trimming](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/trimming)
- trimPrefix(while:)

Instance Method

# trimPrefix(while:)

Mutates a `Collection` by discarding all elements at the start of it which satisfy the given predicate.

AlgorithmsSwift

```
mutating func trimPrefix(while predicate: (Self.Element) throws -> Bool) rethrows
```

[Trim.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Trim.swift#L61 "Open source file for Trim.swift")

Available when `Self` conforms to `RangeReplaceableCollection` and `Self` is `Collection`.

## [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimprefix(while:)-2r8n8\#parameters)

`predicate`

A closure which determines if the element should be removed from the string.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimprefix(while:)-2r8n8\#discussion)

This example uses `trimPrefix(while:)` to remove the white space at the beginning of the string:

```
let myString = "  hello, world  "
myString.trimPrefix(while: \.isWhitespace)
print(myString) // "hello, world  "

```

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimprefix(while:)-2r8n8\#see-also)

### [Trimming from the Start](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimprefix(while:)-2r8n8\#Trimming-from-the-Start)

[`func trimmingPrefix(while: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimmingprefix(while:))

Returns a `SubSequence` formed by discarding all elements at the start of the collection which satisfy the given predicate.

[`func trimPrefix(while: (Self.Element) throws -> Bool) rethrows`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimprefix(while:)-93obt)

Mutates a `Collection` by discarding all elements at the start of it which satisfy the given predicate.

- [trimPrefix(while:)](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimprefix(while:)-2r8n8#app-top)
- [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimprefix(while:)-2r8n8#parameters)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimprefix(while:)-2r8n8#discussion)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimprefix(while:)-2r8n8#see-also)

Current page is trimPrefix(while:)

|
|