---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/scan(into:_:)"
title: "scan(into:_:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/scan(into:_:)#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Reductions](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/reductions)
- [DeprecatedScan](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/deprecatedscan)
- scan(into:\_:) Deprecated

Instance Method

# scan(into:\_:)

AlgorithmsSwift

```
func scan<Result>(
    into initial: Result,
    _ transform: @escaping (inout Result, Self.Element) -> Void
) -> [`ExclusiveReductionsSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/exclusivereductionssequence) <Self.Elements, Result>
```

[Reductions.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Reductions.swift#L574 "Open source file for Reductions.swift")

Available when `Self` is `LazySequenceProtocol`.

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/scan(into:_:)\#see-also)

[`func scan((Self.Element, Self.Element) throws -> Self.Element) rethrows -> [Self.Element]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/scan(_:)) Deprecated

[`func scan<Result>(Result, (Result, Self.Element) throws -> Result) rethrows -> [Result]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/scan(_:_:)) Deprecated

[`func scan<Result>(into: Result, (inout Result, Self.Element) throws -> Void) rethrows -> [Result]`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/sequence/scan(into:_:)) Deprecated

[`func scan((Self.Element, Self.Element) -> Self.Element) -> InclusiveReductionsSequence<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/scan(_:)) Deprecated

[`func scan<Result>(Result, (Result, Self.Element) -> Result) -> ExclusiveReductionsSequence<Self.Elements, Result>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/scan(_:_:)) Deprecated

Current page is scan(into:\_:)

|
|