---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/firstnonnil(_:)"
title: "firstNonNil(_:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/firstnonnil(_:)#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Selecting Elements](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/selecting)
- firstNonNil(\_:)

Instance Method

# firstNonNil(\_:)

Returns the first non- `nil` result obtained from applying the given transformation to the elements of the sequence.

AlgorithmsSwift

```
func firstNonNil<Result>(_ transform: (Self.Element) throws -> Result?) rethrows -> Result?
```

[FirstNonNil.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/FirstNonNil.swift#L34 "Open source file for FirstNonNil.swift")

Available when `Self` is `Sequence`.

## [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/firstnonnil(_:)\#parameters)

`transform`

A closure that takes an element of the sequence as its argument and returns an optional transformed value.

## [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/firstnonnil(_:)\#return-value)

The first non- `nil` return value of the transformation, or `nil` if no transformation is successful.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/firstnonnil(_:)\#discussion)

```
let strings = ["three", "3.14", "-5", "2"]
if let firstInt = strings.firstNonNil({ Int($0) }) {
    print(firstInt)
    // -5
}

```

- [firstNonNil(\_:)](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/firstnonnil(_:)#app-top)
- [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/firstnonnil(_:)#parameters)
- [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/firstnonnil(_:)#return-value)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/firstnonnil(_:)#discussion)

Current page is firstNonNil(\_:)

|
|