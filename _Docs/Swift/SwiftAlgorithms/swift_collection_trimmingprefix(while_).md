---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimmingprefix(while:)"
title: "trimmingPrefix(while:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimmingprefix(while:)#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Trimming](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/trimming)
- trimmingPrefix(while:)

Instance Method

# trimmingPrefix(while:)

Returns a `SubSequence` formed by discarding all elements at the start of the collection which satisfy the given predicate.

AlgorithmsSwift

```
func trimmingPrefix(while predicate: (Self.Element) throws -> Bool) rethrows -> Self.SubSequence
```

[Trim.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Trim.swift#L31 "Open source file for Trim.swift")

Available when `Self` is `Collection`.

## [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimmingprefix(while:)\#parameters)

`predicate`

A closure which determines if the element should be omitted from the resulting slice.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimmingprefix(while:)\#discussion)

This example uses `trimmingPrefix(while:)` to get a substring without the white space at the beginning of the string:

```
let myString = "  hello, world  "
print(myString.trimmingPrefix(while: \.isWhitespace)) // "hello, world  "

```

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimmingprefix(while:)\#see-also)

### [Trimming from the Start](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimmingprefix(while:)\#Trimming-from-the-Start)

[`func trimPrefix(while: (Self.Element) throws -> Bool) rethrows`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimprefix(while:)-2r8n8)

Mutates a `Collection` by discarding all elements at the start of it which satisfy the given predicate.

[`func trimPrefix(while: (Self.Element) throws -> Bool) rethrows`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimprefix(while:)-93obt)

Mutates a `Collection` by discarding all elements at the start of it which satisfy the given predicate.

- [trimmingPrefix(while:)](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimmingprefix(while:)#app-top)
- [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimmingprefix(while:)#parameters)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimmingprefix(while:)#discussion)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/trimmingprefix(while:)#see-also)

Current page is trimmingPrefix(while:)

|
|