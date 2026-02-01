---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/windows(ofcount:)"
title: "windows(ofCount:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/windows(ofcount:)#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Slicing and Splitting](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/slicingsplitting)
- windows(ofCount:)

Instance Method

# windows(ofCount:)

Returns a collection of all the overlapping slices of a given size.

AlgorithmsSwift

```
func windows(ofCount count: Int) -> [`WindowsOfCountCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/windowsofcountcollection) <Self>
```

[Windows.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Windows.swift#L42 "Open source file for Windows.swift")

Available when `Self` is `Collection`.

## [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/windows(ofcount:)\#parameters)

`count`

The number of elements in each window subsequence.

## [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/windows(ofcount:)\#return-value)

A collection of subsequences of this collection, each with length `count`. If this collection is shorter than `count`, the resulting collection is empty.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/windows(ofcount:)\#discussion)

Use this method to iterate over overlapping subsequences of this collection. This example prints every five character substring of `str`:

```
let str = "Hello, world!"
for substring in str.windows(ofCount: 5) {
    print(substring)
}
// "Hello"
// "ello,"
// "llo, "
// "lo, W"
// ...
// "orld!"

```

- [windows(ofCount:)](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/windows(ofcount:)#app-top)
- [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/windows(ofcount:)#parameters)
- [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/windows(ofcount:)#return-value)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/windows(ofcount:)#discussion)

Current page is windows(ofCount:)

|
|