---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-4q4x8"
title: "split(separator:maxSplits:omittingEmptySubsequences:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-4q4x8#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Slicing and Splitting](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/slicingsplitting)
- split(separator:maxSplits:omittingEmptySubsequences:)

Instance Method

# split(separator:maxSplits:omittingEmptySubsequences:)

Lazily returns the longest possible subsequences of the sequence, in order, around elements equal to the given element.

AlgorithmsSwift

```
func split(
    separator: Self.Element,
    maxSplits: Int = Int.max,
    omittingEmptySubsequences: Bool = true
) -> [`SplitSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/splitsequence) <Self.Elements>
```

[Split.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Split.swift#L320 "Open source file for Split.swift")

Available when `Element` conforms to `Equatable` and `Self` is `LazySequenceProtocol`.

## [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-4q4x8\#parameters)

`separator`

The element that should be split upon.

`maxSplits`

The maximum number of times to split the sequence, or one less than the number of subsequences to return. If `maxSplits + 1` subsequences are returned, the last one is a suffix of the original sequence containing the remaining elements. `maxSplits` must be greater than or equal to zero. The default value is `Int.max`.

`omittingEmptySubsequences`

If `false`, an empty subsequence is returned in the result for each consecutive pair of `separator` elements in the sequence and for each instance of `separator` at the start or end of the sequence. If `true`, only nonempty subsequences are returned. The default value is `true`.

## [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-4q4x8\#return-value)

A lazy sequence of subsequences, split from this sequence’s elements.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-4q4x8\#discussion)

The resulting lazy sequence consists of at most `maxSplits + 1` subsequences. Elements that are used to split the sequence are not returned as part of any subsequence (except possibly the last one, in the case where `maxSplits` is less than the number of separators in the sequence).

The following examples show the effects of the `maxSplits` and `omittingEmptySubsequences` parameters when splitting a sequence of integers at each zero ( `0`). The first use of `split` returns each subsequence that was originally separated by one or more zeros.

```
let numbers = AnySequence([1, 2, 0, 3, 4, 0, 0, 5])
for subsequence in numbers.lazy.split(separator: 0) {
  print(subsequence)
}
/* Prints:
[1, 2]
[3, 4]
[5]
*/

```

The second example passes `1` for the `maxSplits` parameter, so the original sequence is split just once, into two subsequences.

```
for subsequence in numbers.lazy.split(
    separator: 0,
    maxSplits: 1
) {
  print(subsequence)
}
/* Prints:
[1, 2]
[3, 4, 0, 0, 5]
*/

```

The final example passes `false` for the `omittingEmptySubsequences` parameter, so the sequence of returned subsequences contains empty subsequences where zeros were repeated.

```
for subsequence in numbers.lazy.split(
    separator: 0,
    omittingEmptySubsequences: false
) {
  print(subsequence)
}
/* Prints:
[1, 2]
[3, 4]
[]
[5]
*/

```

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-4q4x8\#see-also)

### [Lazily Splitting a Collection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-4q4x8\#Lazily-Splitting-a-Collection)

[`func split(maxSplits: Int, omittingEmptySubsequences: Bool, whereSeparator: (Self.Element) -> Bool) -> SplitSequence<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-68oqf)

Lazily returns the longest possible subsequences of the sequence, in order, that don’t contain elements satisfying the given predicate.

[`func split(separator: Self.Element, maxSplits: Int, omittingEmptySubsequences: Bool) -> SplitCollection<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-a46s)

Lazily returns the longest possible subsequences of the collection, in order, around elements equal to the given element.

[`func split(maxSplits: Int, omittingEmptySubsequences: Bool, whereSeparator: (Self.Element) -> Bool) -> SplitCollection<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-3rwee)

Lazily returns the longest possible subsequences of the collection, in order, that don’t contain elements satisfying the given predicate.

- [split(separator:maxSplits:omittingEmptySubsequences:)](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-4q4x8#app-top)
- [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-4q4x8#parameters)
- [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-4q4x8#return-value)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-4q4x8#discussion)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-4q4x8#see-also)

Current page is split(separator:maxSplits:omittingEmptySubsequences:)

|
|