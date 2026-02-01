---
url: "https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-68oqf"
title: "split(maxSplits:omittingEmptySubsequences:whereSeparator:) | Documentation"
---

[Skip Navigation](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-68oqf#app-main)

- [Algorithms](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms)
- [Slicing and Splitting](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/slicingsplitting)
- split(maxSplits:omittingEmptySubsequences:whereSeparator:)

Instance Method

# split(maxSplits:omittingEmptySubsequences:whereSeparator:)

Lazily returns the longest possible subsequences of the sequence, in order, that don’t contain elements satisfying the given predicate.

AlgorithmsSwift

```
func split(
    maxSplits: Int = Int.max,
    omittingEmptySubsequences: Bool = true,
    whereSeparator isSeparator: @escaping (Self.Element) -> Bool
) -> [`SplitSequence`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/splitsequence) <Self.Elements>
```

[Split.swift](https://github.com/apple/swift-algorithms/blob/1.2.1/Sources/Algorithms/Split.swift#L230 "Open source file for Split.swift")

Available when `Self` is `LazySequenceProtocol`.

## [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-68oqf\#parameters)

`maxSplits`

The maximum number of times to split the sequence, or one less than the number of subsequences to return. If `maxSplits + 1` subsequences are returned, the last one is a suffix of the original sequence containing the remaining elements. `maxSplits` must be greater than or equal to zero. The default value is `Int.max`.

`omittingEmptySubsequences`

If `false`, an empty subsequence is returned in the result for each pair of consecutive elements satisfying the `isSeparator` predicate and for each element at the start or end of the sequence satisfying the `isSeparator` predicate. The default value is `true`.

## [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-68oqf\#return-value)

A lazy sequence of subsequences, split from this sequence’s elements.

## [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-68oqf\#discussion)

The resulting lazy sequence consists of at most `maxSplits + 1` subsequences. Elements that are used to split the sequence are not returned as part of any subsequence (except possibly the last one, in the case where `maxSplits` is less than the number of separators in the sequence).

The following examples show the effects of the `maxSplits` and `omittingEmptySubsequences` parameters when lazily splitting a sequence of integers using a closure that matches numbers evenly divisible by 3 or 5. The first use of `split` returns each subsequence that was originally separated by one or more such numbers.

```
let numbers = stride(from: 1, through: 16, by: 1)
for subsequence in numbers.lazy.split(
  whereSeparator: { $0 % 3 == 0 || $0 % 5 == 0 }
) {
  print(subsequence)
}
/* Prints:
[1, 2]
[4]
[7, 8]
[11]
[13, 14]
[16]
*/

```

The second example passes `1` for the `maxSplits` parameter, so the original sequence is split just once, into two subsequences.

```
for subsequence in numbers.lazy.split(
  maxSplits: 1,
  whereSeparator: { $0 % 3 == 0 || $0 % 5 == 0 }
) {
  print(subsequence)
}
/* Prints:
[1, 2]
[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
*/

```

The final example passes `false` for the `omittingEmptySubsequences` parameter, so the sequence of returned subsequences contains empty subsequences where numbers evenly divisible by 3 or 5 were repeated.

```
for subsequence in numbers.lazy.split(
    omittingEmptySubsequences: false,
    whereSeparator: { $0 % 3 == 0 || $0 % 5 == 0 }
) {
  print(subsequence)
}
/* Prints:
[1, 2]
[4]
[]
[7, 8]
[]
[11]
[13, 14]
[16]
*/

```

## [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-68oqf\#see-also)

### [Lazily Splitting a Collection](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-68oqf\#Lazily-Splitting-a-Collection)

[`func split(separator: Self.Element, maxSplits: Int, omittingEmptySubsequences: Bool) -> SplitSequence<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-4q4x8)

Lazily returns the longest possible subsequences of the sequence, in order, around elements equal to the given element.

[`func split(separator: Self.Element, maxSplits: Int, omittingEmptySubsequences: Bool) -> SplitCollection<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(separator:maxsplits:omittingemptysubsequences:)-a46s)

Lazily returns the longest possible subsequences of the collection, in order, around elements equal to the given element.

[`func split(maxSplits: Int, omittingEmptySubsequences: Bool, whereSeparator: (Self.Element) -> Bool) -> SplitCollection<Self.Elements>`](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-3rwee)

Lazily returns the longest possible subsequences of the collection, in order, that don’t contain elements satisfying the given predicate.

- [split(maxSplits:omittingEmptySubsequences:whereSeparator:)](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-68oqf#app-top)
- [Parameters](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-68oqf#parameters)
- [Return Value](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-68oqf#return-value)
- [Discussion](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-68oqf#discussion)
- [See Also](https://swiftpackageindex.com/apple/swift-algorithms/1.2.1/documentation/algorithms/swift/lazysequenceprotocol/split(maxsplits:omittingemptysubsequences:whereseparator:)-68oqf#see-also)

Current page is split(maxSplits:omittingEmptySubsequences:whereSeparator:)

|
|