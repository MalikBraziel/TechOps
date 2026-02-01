---
version: 1.0
---

# Swift Evolution Registry

## Swift Evolution Changelogs & Proposals

### Swift 5.9
**Release Date:** September 18, 2023 (Xcode 15.0)
- **Changelog:** `5.9_changelog.md`
- **Proposals:**
  - SE-0366: Move function
  - SE-0377: Parameter ownership modifiers
  - SE-0380: If/switch expressions
  - SE-0382: Expression macros
  - SE-0389: Attached macros
  - SE-0394: SwiftPM expression macros
  - SE-0397: Freestanding declaration macros

### Swift 5.9.2
**Release Date:** 2024 (Patch Release)
- **Changelog:** `5.9.2_changelog.md`
- **Proposals:**
  - SE-0407: Member macro conformances

### Swift 5.10
**Release Date:** March 5, 2024
- **Changelog:** `5.10_changelog.md`
- **Proposals:**
  - SE-0411: Isolated default values
  - SE-0412: Strict concurrency for global variables

### Swift 6.0
**Release Date:** September 17, 2024 (Xcode 16.0)
- **Changelog:** `6_0_changelog.md`
- **Proposals:**
  - SE-0110: Distinguish single tuple argument
  - SE-0270: RangeSet and collection operations
  - SE-0309: Unlock existential types for all protocols
  - SE-0346: Lightweight same-type syntax
  - SE-0352: Implicit open existentials
  - SE-0408: Pack iteration
  - SE-0413: Typed throws
  - SE-0414: Region-based isolation
  - SE-0417: Task executor preference
  - SE-0418: Inferring Sendable for methods
  - SE-0420: Inheritance of actor isolation
  - SE-0422: Caller-side default argument macro expression
  - SE-0423: Dynamic actor isolation
  - SE-0424: Custom isolation checking for SerialExecutor
  - SE-0427: Noncopyable generics
  - SE-0428: Resolve distributed actor protocols
  - SE-0429: Partial consumption
  - SE-0430: Transferring parameters and results
  - SE-0431: Isolated any functions
  - SE-0432: Noncopyable switch

### Swift 6.1
**Release Date:** March 31, 2025
- **Changelog:** `6_1_changelog.md`
- **Proposals:**
  - SE-0335: Existential any
  - SE-0442: Allow TaskGroup childTaskResult type to be inferred
  - SE-0444: Member import visibility

### Swift 6.2
**Release Date:** September 15, 2025
- **Changelog:** `6_2_changelog.md`
- **Proposals:**
  - SE-0419: Backtrace API
  - SE-0458: Strict memory safety
  - SE-0461: Async function isolation
  - SE-0462: Task priority escalation APIs
  - SE-0469: Task names
  - SE-0470: Isolated conformances
  - SE-0472: Task start synchronously on caller context

---

# SwiftLang




### Links to add
#### Swift Changelog
- [Changelog](https://github.com/swiftlang/swift/blob/main/CHANGELOG.md?plain=1)

#### Swift/UserDocs/Diagnostics
- [Sending Risks Data Race](https://github.com/swiftlang/swift/blob/main/userdocs/diagnostics/sending-risks-data-race.md)
- [Actor Isolated Call](https://github.com/swiftlang/swift/blob/main/userdocs/diagnostics/actor-isolated-call.md)
- [Conformance Isolation](https://github.com/swiftlang/swift/blob/main/userdocs/diagnostics/conformance-isolation.md)
- [Isolated Conformances](https://github.com/swiftlang/swift/blob/main/userdocs/diagnostics/isolated-conformances.md)
- [Sendable Closure Captures](https://github.com/swiftlang/swift/blob/main/userdocs/diagnostics/sendable-closure-captures.md)
- [Sendable Closure Captures](https://github.com/swiftlang/swift/blob/main/userdocs/diagnostics/sending-risks-data-race.md)


---

## Swift Releases

  Version	    Announced   Released
- Swift 6.2	  2025-03-08	2025-09-15
- Swift 6.1	  2024-10-17	2025-03-31
- Swift 6.0	  2024-02-22	2024-09-17
- Swift 5.10	2023-08-23	2024-03-05
- Swift 5.9	  2023-03-06	2023-09-18
- Swift 5.8	  2022-11-19	2023-03-30
- Swift 5.7	  2022-03-29	2022-09-12
- Swift 5.6	  2021-11-10	2022-03-14
- Swift 5.5	  2021-03-12	2021-09-20
- Swift 5.4	  2020-11-11	2021-04-26
- Swift 5.3	  2020-03-25	2020-09-16
- Swift 5.2	  2019-09-24	2020-03-24
- Swift 5.1	  2019-02-18	2019-09-20
- Swift 5.0	  2018-09-25	2019-03-25
- Swift 4.2	  2018-02-28	2018-09-17
- Swift 4.1	  2017-10-17	2018-03-29
- Swift 4.0	  2017-02-16	2017-09-19
- Swift 3.1	  2016-12-09	2017-03-27
- Swift 3.0	  2016-05-06	2016-09-13
- Swift 2.2	  2016-01-05	2016-03-21

## Goals and Release Notes

* [Swift Language focus areas heading into 2025](https://forums.swift.org/t/swift-language-focus-areas-heading-into-2025/76611)
* [CHANGELOG](https://github.com/apple/swift/blob/main/CHANGELOG.md)

| Version   | Announced                                                                | Released                                                     |
| :-------- | :----------------------------------------------------------------------- | :----------------------------------------------------------- |
| Swift 6.2 | [2025-03-08](https://forums.swift.org/t/swift-6-2-release-process/78371) | [2025-09-15](https://www.swift.org/blog/swift-6.2-released/) |
| Swift 6.1 | [2024-10-17](https://forums.swift.org/t/swift-6-1-release-process/75442) | [2025-03-31](https://www.swift.org/blog/swift-6.1-released/) |
| Swift 6.0 | [2024-02-22](https://forums.swift.org/t/swift-6-0-release-process/70220) | [2024-09-17](https://www.swift.org/blog/announcing-swift-6/) |
| Swift 5.10 | [2023-08-23](https://forums.swift.org/t/swift-5-10-release-process/66911) | [2024-03-05](https://www.swift.org/blog/swift-5.10-released/) |
| Swift 5.9 | [2023-03-06](https://forums.swift.org/t/swift-5-9-release-process/63557) | [2023-09-18](https://www.swift.org/blog/swift-5.9-released/) |
| Swift 5.8 | [2022-11-19](https://forums.swift.org/t/swift-5-8-release-process/61540) | [2023-03-30](https://www.swift.org/blog/swift-5.8-released/) |
| Swift 5.7 | [2022-03-29](https://forums.swift.org/t/swift-5-7-release-process/56316) | [2022-09-12](https://www.swift.org/blog/swift-5.7-released/) |
| Swift 5.6 | [2021-11-10](https://forums.swift.org/t/swift-5-6-release-process/53412) | [2022-03-14](https://www.swift.org/blog/swift-5.6-released/) |
| Swift 5.5 | [2021-03-12](https://forums.swift.org/t/swift-5-5-release-process/45644) | [2021-09-20](https://www.swift.org/blog/swift-5.5-released/) |
| Swift 5.4 | [2020-11-11](https://forums.swift.org/t/swift-5-4-release-process/41936) | [2021-04-26](https://www.swift.org/blog/swift-5.4-released/) |
| Swift 5.3 | [2020-03-25](https://www.swift.org/blog/5.3-release-process/)            | [2020-09-16](https://www.swift.org/blog/swift-5.3-released/) |
| Swift 5.2 | [2019-09-24](https://www.swift.org/blog/5.2-release-process/)            | [2020-03-24](https://www.swift.org/blog/swift-5.2-released/) |
| Swift 5.1 | [2019-02-18](https://www.swift.org/blog/5.1-release-process/)            | [2019-09-20](https://www.swift.org/blog/swift-5.1-released/) |
| Swift 5.0 | [2018-09-25](https://www.swift.org/blog/5.0-release-process/)            | [2019-03-25](https://www.swift.org/blog/swift-5-released/)   |
| Swift 4.2 | [2018-02-28](https://www.swift.org/blog/4.2-release-process/)            | [2018-09-17](https://www.swift.org/blog/swift-4.2-released/) |
| Swift 4.1 | [2017-10-17](https://www.swift.org/blog/swift-4.1-release-process/)      | [2018-03-29](https://www.swift.org/blog/swift-4.1-released/) |
| Swift 4.0 | [2017-02-16](https://www.swift.org/blog/swift-4.0-release-process/)      | [2017-09-19](https://www.swift.org/blog/swift-4.0-released/) |
| Swift 3.1 | [2016-12-09](https://www.swift.org/blog/swift-3.1-release-process/)      | [2017-03-27](https://www.swift.org/blog/swift-3.1-released/) |
| Swift 3.0 | [2016-05-06](https://www.swift.org/blog/swift-3.0-release-process/)      | [2016-09-13](https://www.swift.org/blog/swift-3.0-released/) |
| Swift 2.2 | [2016-01-05](https://www.swift.org/blog/swift-2.2-release-process/)      | [2016-03-21](https://www.swift.org/blog/swift-2.2-released/) |


---