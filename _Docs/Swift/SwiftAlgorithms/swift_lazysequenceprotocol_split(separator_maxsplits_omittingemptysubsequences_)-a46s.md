---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-a46s"
title: "split(separator:maxSplits:omittingEmptySubsequences:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-a46s#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Slicing and Splitting](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/slicingsplitting)
- split(separator:maxSplits:omittingEmptySubsequences:)

Instance Method

# split(separator:maxSplits:omittingEmptySubsequences:)

Lazily returns the longest possible subsequences of the collection, in order, around elements equal to the given element.

AlgorithmsSwift

```
func split(
    separator: Self.Element,
    maxSplits: Int = Int.max,
    omittingEmptySubsequences: Bool = true
) -> [`SplitCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/splitcollection) <Self.Elements>
```

[Split.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Split.swift#L742 "Open source file for Split.swift")

Available when `Self` conforms to `Collection`, `Element` conforms to `Equatable`, `Elements` conforms to `Collection`, and `Self` is `LazySequenceProtocol`.

## [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-a46s\#parameters)

`separator`

The element that should be split upon.

`maxSplits`

The maximum number of times to split the collection, or one less than the number of subsequences to return. If `maxSplits + 1` subsequences are returned, the last one is a suffix of the original collection containing the remaining elements. `maxSplits` must be greater than or equal to zero. The default value is `Int.max`.

`omittingEmptySubsequences`

If `false`, an empty subsequence is returned in the result for each consecutive pair of `separator` elements in the collection and for each instance of `separator` at the start or end of the collection. If `true`, only nonempty subsequences are returned. The default value is `true`.

## [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-a46s\#return-value)

A lazy collection of subsequences split from this collection’s elements.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-a46s\#discussion)

The resulting lazy collection consists of at most `maxSplits + 1` subsequences. Elements that are used to split the collection are not returned as part of any subsequence (except possibly the last one, in the case where `maxSplits` is less than the number of separators in the collection).

The following examples show the effects of the `maxSplits` and `omittingEmptySubsequences` parameters when splitting a string at each space character (” “). The first use of `split` returns each word that was originally separated by one or more spaces.

```
let line = "BLANCHE:   I don't want realism. I want magic!"
for spaceless in line.lazy.split(separator: " ") {
  print(spaceless)
}
// Prints
// BLANCHE:
// I
// don't
// want
// realism.
// I
// want
// magic!

```

The second example passes `1` for the `maxSplits` parameter, so the original string is split just once, into two new strings.

```
for spaceless in line.lazy.split(separator: " ", maxSplits: 1) {
  print(spaceless)
}
// Prints
// BLANCHE:
// I don't want realism. I want magic!

```

The final example passes `false` for the `omittingEmptySubsequences` parameter, so the returned array contains empty strings where spaces were repeated.

```
for spaceless in line.lazy.split(
  separator: " ",
  omittingEmptySubsequences: false
) {
  print(spaceless)
}
// Prints
// BLANCHE:
//
//
// I
// don't
// want
// realism.
// I
// want
// magic!

```

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-a46s\#see-also)

### [Lazily Splitting a Collection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-a46s\#Lazily-Splitting-a-Collection)

[`func split(separator: Self.Element, maxSplits: Int, omittingEmptySubsequences: Bool) -> SplitSequence<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-4q4x8)

Lazily returns the longest possible subsequences of the sequence, in order, around elements equal to the given element.

[`func split(maxSplits: Int, omittingEmptySubsequences: Bool, whereSeparator: (Self.Element) -> Bool) -> SplitSequence<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-68oqf)

Lazily returns the longest possible subsequences of the sequence, in order, that don’t contain elements satisfying the given predicate.

[`func split(maxSplits: Int, omittingEmptySubsequences: Bool, whereSeparator: (Self.Element) -> Bool) -> SplitCollection<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-3rwee)

Lazily returns the longest possible subsequences of the collection, in order, that don’t contain elements satisfying the given predicate.

- [split(separator:maxSplits:omittingEmptySubsequences:)](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-a46s#app-top)
- [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-a46s#parameters)
- [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-a46s#return-value)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-a46s#discussion)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-a46s#see-also)

Current page is split(separator:maxSplits:omittingEmptySubsequences:)

|
|