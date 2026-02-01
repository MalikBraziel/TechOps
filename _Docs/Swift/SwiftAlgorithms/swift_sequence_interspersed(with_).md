---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/interspersed(with:)"
title: "interspersed(with:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/interspersed(with:)#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Joining](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/joining)
- interspersed(with:)

Instance Method

# interspersed(with:)

Returns a sequence containing elements of this sequence with the given separator inserted in between each element.

AlgorithmsSwift

```
func interspersed(with separator: Self.Element) -> [`InterspersedSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/interspersedsequence) <Self>
```

[Intersperse.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Intersperse.swift#L634 "Open source file for Intersperse.swift")

Available when `Self` is `Sequence`.

## [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/interspersed(with:)\#parameters)

`separator`

Value to insert in between each of this sequence’s elements.

## [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/interspersed(with:)\#return-value)

The interspersed sequence of elements.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/interspersed(with:)\#discussion)

Any value of the sequence’s element type can be used as the separator.

```
for value in [1,2,3].interspersed(with: 0) {
    print(value)
}
// 1
// 0
// 2
// 0
// 3

```

The following shows a String being interspersed with a Character:

```
let result = "ABCDE".interspersed(with: "-")
print(String(result))
// "A-B-C-D-E"

```

- [interspersed(with:)](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/interspersed(with:)#app-top)
- [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/interspersed(with:)#parameters)
- [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/interspersed(with:)#return-value)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/interspersed(with:)#discussion)

Current page is interspersed(with:)

|
|