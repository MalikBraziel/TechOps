---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-3rwee"
title: "split(maxSplits:omittingEmptySubsequences:whereSeparator:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-3rwee#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Slicing and Splitting](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/slicingsplitting)
- split(maxSplits:omittingEmptySubsequences:whereSeparator:)

Instance Method

# split(maxSplits:omittingEmptySubsequences:whereSeparator:)

Lazily returns the longest possible subsequences of the collection, in order, that don’t contain elements satisfying the given predicate.

AlgorithmsSwift

```
func split(
    maxSplits: Int = Int.max,
    omittingEmptySubsequences: Bool = true,
    whereSeparator isSeparator: @escaping (Self.Element) -> Bool
) -> [`SplitCollection`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/splitcollection) <Self.Elements>
```

[Split.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Split.swift#L645 "Open source file for Split.swift")

Available when `Self` conforms to `Collection`, `Elements` conforms to `Collection`, and `Self` is `LazySequenceProtocol`.

## [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-3rwee\#parameters)

`maxSplits`

The maximum number of times to split the collection, or one less than the number of subsequences to return. If `maxSplits + 1` subsequences are returned, the last one is a suffix of the original collection containing the remaining elements. `maxSplits` must be greater than or equal to zero. The default value is `Int.max`.

`omittingEmptySubsequences`

If `false`, an empty subsequence is returned in the result for each pair of consecutive elements satisfying the `isSeparator` predicate and for each element at the start or end of the collection satisfying the `isSeparator` predicate. The default value is `true`.

## [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-3rwee\#return-value)

A lazy collection of subsequences, split from this collection’s elements.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-3rwee\#discussion)

The resulting lazy collection consists of at most `maxSplits + 1` subsequences. Elements that are used to split the collection are not returned as part of any subsequence (except possibly the last one, in the case where `maxSplits` is less than the number of separators in the collection).

The following examples show the effects of the `maxSplits` and `omittingEmptySubsequences` parameters when lazily splitting a string using a closure that matches spaces. The first use of `split` returns each word that was originally separated by one or more spaces.

```
let line = "BLANCHE:   I don't want realism. I want magic!"
for spaceless in line.lazy.split(whereSeparator: { $0 == " " }) {
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
for spaceless in line.lazy.split(
  maxSplits: 1,
  whereSeparator: { $0 == " " }
) {
  print(spaceless)
}
// Prints
// BLANCHE:
// I don't want realism. I want magic!

```

The final example passes `false` for the `omittingEmptySubsequences` parameter, so the returned array contains empty strings where spaces were repeated.

```
for spaceless in line.lazy.split(
  omittingEmptySubsequences: false,
  whereSeparator: { $0 == " " }
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

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-3rwee\#see-also)

### [Lazily Splitting a Collection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-3rwee\#Lazily-Splitting-a-Collection)

[`func split(separator: Self.Element, maxSplits: Int, omittingEmptySubsequences: Bool) -> SplitSequence<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-4q4x8)

Lazily returns the longest possible subsequences of the sequence, in order, around elements equal to the given element.

[`func split(maxSplits: Int, omittingEmptySubsequences: Bool, whereSeparator: (Self.Element) -> Bool) -> SplitSequence<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-68oqf)

Lazily returns the longest possible subsequences of the sequence, in order, that don’t contain elements satisfying the given predicate.

[`func split(separator: Self.Element, maxSplits: Int, omittingEmptySubsequences: Bool) -> SplitCollection<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-a46s)

Lazily returns the longest possible subsequences of the collection, in order, around elements equal to the given element.

- [split(maxSplits:omittingEmptySubsequences:whereSeparator:)](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-3rwee#app-top)
- [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-3rwee#parameters)
- [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-3rwee#return-value)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-3rwee#discussion)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-3rwee#see-also)

Current page is split(maxSplits:omittingEmptySubsequences:whereSeparator:)

|
|