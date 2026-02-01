---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/scan(_:_:)"
title: "scan(_:_:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/scan(_:_:)#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Reductions](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/reductions)
- [DeprecatedScan](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/deprecatedscan)
- scan(\_:\_:) Deprecated

Instance Method

# scan(\_:\_:)

AlgorithmsSwift

```
func scan<Result>(
    _ initial: Result,
    _ transform: (Result, Self.Element) throws -> Result
) rethrows -> [Result]
```

[Reductions.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Reductions.swift#L585 "Open source file for Reductions.swift")

Available when `Self` is `Sequence`.

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/scan(_:_:)\#see-also)

[`func scan((Self.Element, Self.Element) throws -> Self.Element) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/scan(_:)) Deprecated

[`func scan<Result>(into: Result, (inout Result, Self.Element) throws -> Void) rethrows -> [Result]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/scan(into:_:)) Deprecated

[`func scan((Self.Element, Self.Element) -> Self.Element) -> InclusiveReductionsSequence<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/scan(_:)) Deprecated

[`func scan<Result>(Result, (Result, Self.Element) -> Result) -> ExclusiveReductionsSequence<Self.Elements, Result>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/scan(_:_:)) Deprecated

[`func scan<Result>(into: Result, (inout Result, Self.Element) -> Void) -> ExclusiveReductionsSequence<Self.Elements, Result>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/scan(into:_:)) Deprecated

Current page is scan(\_:\_:)

|
|