---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/indexed()"
title: "indexed() | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/indexed()#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Selecting Elements](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/selecting)
- indexed()

Instance Method

# indexed()

Returns a collection of pairs _(i, x)_, where _i_ represents an index of the collection, and _x_ represents an element.

AlgorithmsSwift

```
func indexed() -> [`IndexedCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/indexedcollection) <Self>
```

[Indexed.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Indexed.swift#L114 "Open source file for Indexed.swift")

Available when `Self` is `Collection`.

## [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/indexed()\#return-value)

A collection of paired indices and elements of this collection.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/indexed()\#discussion)

The `indexed()` method is similar to the standard library’s `enumerated()` method, but provides the index with each element instead of a zero-based counter.

This example iterates over the indices and elements of a set, building an array consisting of indices of names with five or fewer letters.

```
let names: Set = ["Sofia", "Camilla", "Martina", "Mateo", "Nicolás"]
var shorterIndices: [Set<String>.Index] = []
for (i, name) in names.indexed() {
    if name.count <= 5 {
        shorterIndices.append(i)
    }
}

```

- [indexed()](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/indexed()#app-top)
- [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/indexed()#return-value)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/collection/indexed()#discussion)

Current page is indexed()

|
|