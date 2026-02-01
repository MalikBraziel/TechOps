## Swift 6.0

### 2024-09-17 (Xcode 16.0)

* Swift 6 comes with a new language mode that prevents the risk of data races
  at compile time. This guarantee is accomplished through _data isolation_; the
  compiler will validate that data passed over a boundary between concurrently
  executing code is either safe to reference concurrently, or mutually
  exclusive access to the value is enforced.

  The data-race safety checks were previously available in Swift 5.10 through
  the `-strict-concurrency=complete` compiler flag. Complete concurrency
  checking in Swift 5.10 was overly restrictive, and Swift 6 removes many
  false-positive data-race warnings through better `Sendable` inference,
  new analysis that proves mutually exclusive access when passing values with
  non-`Sendable` type over isolation boundaries, and more.

  You can enable the Swift 6 language mode using the `-swift-version 6`
  compiler flag.

* [SE-0428][]:
  Distributed actors now have the ability to support complete split server / 
  client systems, thanks to the new `@Resolvable` macro and runtime changes.

  It is now possible to share an "API module" between a client and server 
  application, declare a resolvable distributed actor protocol with the expected 
  API contract and perform calls on it, without knowing the specific type the 
  server is implementing those actors as. 

  Declaring such protocol looks like this:

```swift
import Distributed 

@Resolvable
protocol Greeter where ActorSystem: DistributedActorSystem<any Codable> {
  distributed func greet(name: String) -> String
}
```

And the module structure to support such applications looks like this:

```
                         ┌────────────────────────────────────────┐
                         │                API Module              │
                         │========================================│
                         │ @Resolvable                            │
                         │ protocol Greeter: DistributedActor {   │
                 ┌───────┤   distributed func greet(name: String) ├───────┐
                 │       │ }                                      │       │
                 │       └────────────────────────────────────────┘       │
                 │                                                        │
                 ▼                                                        ▼   
┌────────────────────────────────────────────────┐      ┌──────────────────────────────────────────────┐
│             Client Module                      │      │               Server Module                  │
│================================================│      │==============================================│
│ let g = try $Greeter.resolve(...) /*new*/      │      │ distributed actor EnglishGreeter: Greeter {  │
│ try await greeter.hello(name: ...)             │      │   distributed func greet(name: String) {     │
└────────────────────────────────────────────────┘      │     "Greeting in english, for \(name)!"      │
/* Client cannot know about EnglishGreeter type */      │   }                                          │      
                                                        │ }                                            │
                                                        └──────────────────────────────────────────────┘
```

* [SE-0424][]:
  Serial executor gains a new customization point `checkIsolation()`, which can be
  implemented by custom executor implementations in order to provide a last resort  
  check before the isolation asserting APIs such as `Actor.assumeIsolated` or
  `assertIsolated` fail and crash.

  This specifically enables Dispatch to implement more sophisticated isolation
  checking, and now even an actor which is "on a queue which is targeting 
  another specific queue" can be properly detected using these APIs.

* Closures can now appear in pack expansion expressions, which allows you to
  construct a parameter pack of closures where each closure captures the
  corresponding element of some other parameter pack. For example:

  ```swift
  struct Manager<each T> {
    let fn: (repeat () -> (each T))

    init(_ t: repeat each T) {
      fn = (repeat { each t })
    }
  }
  ```

* [SE-0431][]:
  You can now require a function value to carry its actor isolation
  dynamically in a way that can be directly read by clients:

  ```swift
  func apply<R>(count: Int,
                operation: @isolated(any) async () -> R) async -> [R]
      where R: Sendable {
    // implementation
  }
  ```

  The isolation can read with the `.isolation` property, which has type
  `(any Actor)?`:

  ```swift
  let iso = operation.isolation
  ```

  This capability has been adopted by the task-creation APIs in the
  standard library.  As a result, creating a task with an actor-isolated
  function will now synchronously enqueue the task on the actor, which
  can be used for transitive event-ordering guarantees if the actor
  guarantees that jobs will be run in the order they are enqueued, as
  `@MainActor` does.  If the function is not explicitly isolated, Swift
  still retains the right to optimize enqueues for functions that actually
  start by doing work with different isolation from their formal isolation.

* [SE-0423][]:
  You can now use `@preconcurrency` attribute to replace static actor isolation
  checking with dynamic checks for witnesses of synchronous nonisolated protocol
  requirements when the witness is isolated. This is common when Swift programs
  need to interoperate with frameworks written in C/C++/Objective-C whose
  implementations cannot participate in static data race safety.

  ```swift
  public protocol ViewDelegateProtocol {
    func respondToUIEvent()
  }
  ```

  It's now possible for a `@MainActor`-isolated type to conform to
  `ViewDelegateProtocol` by marking conformance declaration as `@preconcurrency`:

  ```swift
  @MainActor
  class MyViewController: @preconcurrency ViewDelegateProtocol {
    func respondToUIEvent() {
      // implementation...
    }
  }
  ```

  The compiler would emit dynamic checks into the `respondToUIEvent()` witness
  to make sure that it's always executed in `@MainActor` isolated context.

  Additionally, the compiler would emit dynamic actor isolation checks for:

  - `@objc` thunks of synchronous actor-isolated members of classes.

  - Synchronous actor-isolated function values passed to APIs that
    erase actor isolation and haven't yet adopted strict concurrency checking.

  - Call-sites of synchronous actor-isolated functions imported from Swift 6 libraries.

  The dynamic actor isolation checks can be disabled using the flag
  `-disable-dynamic-actor-isolation`.

* [SE-0420][]:
  `async` functions can now explicitly inherit the isolation of their caller
  by declaring an `isolated` parameter with the default value of `#isolation`:

  ```swift
  func poll(isolation: isolated (any Actor)? = #isolation) async -> [Item] {
    // implementation
  }
  ```

  When the caller is actor-isolated, this allows it to pass isolated state
  to the function, which would otherwise have concurrency problems.  The
  function may also be able to eliminate unwanted scheduling changes, such
  as when it can quickly return in a fast path without needing to suspend.

* [SE-0418][]:

  The compiler would now automatically employ `Sendable` on functions
  and key path literal expressions that cannot capture non-Sendable values.

  This includes partially-applied and unapplied instance methods of `Sendable`
  types, as well as non-local functions. Additionally, it is now disallowed
  to utilize `@Sendable` on instance methods of non-Sendable types.

  Let's use the following type to illustrate the new inference rules:

  ```swift
  public struct User {
    var name: String

    func getAge() -> Int { ... }
  }
  ```

  Key path `\User.name` would be inferred as `WritableKeyPath<User, String> & Sendable`
  because it doesn't capture any non-Sendable values.

  The same applies to keypath-as-function conversions:

  ```swift
  let _: @Sendable (User) -> String = \User.name // Ok
  ```

  A function value produced by an un-applied reference to `getAge`
  would be marked as `@Sendable` because `User` is a `Sendable` struct:

  ```swift
  let _ = User.getAge // Inferred as `@Sendable (User) -> @Sendable () -> Int`

  let user = User(...)
  user.getAge // Inferred as `@Sendable () -> Int`
  ```

* [SE-0432][]:
  Noncopyable enums can be pattern-matched with switches without consuming the
  value you switch over:

  ```swift
  enum Lunch: ~Copyable {
    case soup
    case salad
    case sandwich
  }
  
  func isSoup(_ lunch: borrowing Lunch) -> Bool {
    switch lunch {
      case .soup: true
      default: false
    }
  }
  ```


* [SE-0429][]:
  The noncopyable fields of certain types can now be consumed individually:

  ```swift
  struct Token: ~Copyable {}

  struct Authentication: ~Copyable {
    let id: Token
    let name: String

    mutating func exchange(_ new: consuming Token) -> Token {
      let old = self.id  // <- partial consumption of 'self'
      self = .init(id: new, name: self.name)
      return old
    }
  }
  ```

* [SE-0430][]:

  Region-Based Isolation is now extended to enable the application of an
  explicit `sending` annotation to function parameters and results. A function
  parameter or result that is annotated with `sending` is required to be
  disconnected at the function boundary and thus possesses the capability of
  being safely sent across an isolation domain or merged into an actor-isolated
  region in the function's body or the function's caller respectively. Example:
  
  ```swift
  func parameterWithoutSending(_ x: NonSendableType) async {
    // Error! Cannot send a task-isolated value to the main actor!
    await transferToMainActor(x)
  }
  
  func parameterWithSending(_ x: sending NonSendableType) async {
    // Ok since `x` is `sending` and thus disconnected.
    await transferToMainActor(x)
  }
  ```

* [SE-0414][]:

  The compiler is now capable of determining whether or not a value that does
  not conform to the `Sendable` protocol can safely be sent over an isolation
  boundary. This is done by introducing the concept of *isolation regions* that
  allows the compiler to reason conservatively if two values can affect each
  other. Through the usage of isolation regions, the compiler can now prove that
  sending a value that does not conform to the `Sendable` protocol over an
  isolation boundary cannot result in races because the value (and any other
  value that might reference it) is not used in the caller after the point of
  sending allowing code like the following to compile:
  
  ```swift
  actor MyActor {
      init(_ x: NonSendableType) { ... }
  }
  
  func useValue() {
    let x = NonSendableType()
    let a = await MyActor(x) // Error without Region-Based Isolation!
  }
  ```

* [SE-0427][]:
  You can now suppress `Copyable` on protocols, generic parameters, 
  and existentials:

  ```swift
  // Protocol does not require conformers to be Copyable.
  protocol Flower: ~Copyable {
    func bloom()
  }

  // Noncopyable type
  struct Marigold: Flower, ~Copyable {
    func bloom() { print("Marigold blooming!") }
  }

  // Copyable type
  struct Hibiscus: Flower {
    func bloom() { print("Hibiscus blooming!") }
  }

  func startSeason(_ flower: borrowing some Flower & ~Copyable) {
    flower.bloom()
  }

  startSeason(Marigold())
  startSeason(Hibiscus())
  ```

  By writing `~Copyable` on a generic type, you're suppressing a default
  `Copyable` constraint that would otherwise appear on that type. This permits
  noncopyable types, which have no `Copyable` conformance, to conform to such 
  protocols and be substituted for those generic types. Full functionality of this
  feature requires the newer Swift 6 runtime.

* Since its introduction in Swift 5.1 the @TaskLocal property wrapper was used to   
  create and access task-local value bindings. Property wrappers introduce mutable storage,
  which was now properly flagged as potential source of concurrency unsafety.
 
  In order for Swift 6 language mode to not flag task-locals as potentially thread-unsafe,
  task locals are now implemented using a macro. The macro has the same general semantics 
  and usage patterns, however there are two source-break situations which the Swift 6 
  task locals cannot handle:

  Using an implicit default `nil` value for task local initialization, when combined with a type alias:
  ```swift
  // allowed in Swift 5.x, not allowed in Swift 6.x
  
  typealias MyValue = Optional<Int> 
  
  @TaskLocal
  static var number: MyValue // Swift 6: error, please specify default value explicitly
  
  // Solution 1: Specify the default value
  @TaskLocal
  static var number: MyValue = nil
  
  // Solution 2: Avoid the type-alias
  @TaskLocal
  static var number: Optional<Int>
  ```

  At the same time, task locals can now be declared as global properties, which wasn't possible before.

* Swift 5.10 missed a semantic check from [SE-0309][]. In type context, a reference to a
  protocol `P` that has associated types or `Self` requirements should use
  the `any` keyword, but this was not enforced in nested generic argument positions.
  This is now an error as required by the proposal:

  ```swift
  protocol P { associatedtype A }
  struct Outer<T> { struct Inner<U> { } }
  let x = Outer<P>.Inner<P>()  // error
  ```
  To correct the error, add `any` where appropriate, for example
  `Outer<any P>.Inner<any P>`.

* Swift 5.10 accepted certain invalid opaque return types from [SE-0346][].
  If a generic argument of a constrained opaque return type did not
  satisfy the requirements on the primary associated type, the generic
  argument was silently ignored and type checking would proceed as if it
  weren't stated. This now results in a diagnostic:

  ```swift
  protocol P<A> { associatedtype A: Sequence }
  struct G<A: Sequence>: P {}

  func f() -> some P<Int> { return G<Array<Int>>() }  // error
  ```

  The return type above should be written as `some P<Array<Int>>` to match
  the return statement. The old broken behavior in this situation can also
  be restored, by removing the erroneous constraint and using the more general
  upper bound `some P`.

* [SE-0408][]:
  A `for`-`in` loop statement can now accept a pack expansion expression,
  enabling iteration over the elements of its respective value pack. This form
  supports pattern matching, control transfer statements, and other features
  available to a `Sequence`-driven `for`-`in` loop, except for the `where`
  clause. Below is an example implementation of the equality operator for
  tuples of arbitrary length using pack iteration:

  ```swift
  func == <each Element: Equatable>(lhs: (repeat each Element),
                                    rhs: (repeat each Element)) -> Bool {

    for (left, right) in repeat (each lhs, each rhs) {
      guard left == right else { return false }
    }
    return true
  }
  ```

  The elements of the value pack corresponding to the pack expansion expression
  are evaluated on demand, meaning the i<sup>th</sup> element is evaluated on
  the i<sup>th</sup> iteration:

  ```swift
  func doSomething(_: some Any) {}

  func evaluateFirst<each T>(_ t: repeat each T) {
    for _ in repeat doSomething(each t) {
      break
    }
  }

  evaluateFirst(1, 2, 3) 
  // 'doSomething' will be called only on the first element of the pack.
  ```

* [SE-0352][]:
  The Swift 6 language mode will open existential values with
  "self-conforming" types (such as `any Error` or `@objc` protocols)
  passed to generic functions. For example:

  ```swift
  func takeError<E: Error>(_ error: E) { }

  func passError(error: any Error) {
    takeError(error)  // Swift 5 does not open `any Error`, Swift 6 does
  }
  ```

  This behavior can be enabled prior to the Swift 6 language mode
  using the upcoming language feature `ImplicitOpenExistentials`.

* [SE-0422][]:
  Non-built-in expression macros can now be used as default arguments that
  expand at each call site. For example, a custom `#CurrentFile` macro used as
  a default argument in 'Library.swift' won't be expanded to `"Library.swift"`:

  ```swift
  @freestanding(expression)
  public macro CurrentFile() -> String = ...

  public func currentFile(name: String = #CurrentFile) { name }
  ```

  Instead, it will be expanded at where the function is called:
  
  ```swift
  print(currentFile())
  // Prints "main.swift"
  ```

  The expanded code can also use declarations from the caller side context:

  ```swift
  var person = "client"
  greetPerson(/* greeting: #informalGreeting */)
  // Prints "Hi client" if macro expands to "Hi \(person)"
  ```

* [SE-0417][]:
  Tasks now gain the ability to respect Task Executor preference.
  This allows tasks executing default actors (which do not declare a custom executor),
  and nonisolated asynchronous functions to fall back to a preferred executor, rather than always
  executing on the default global pool.

  The executor preference may be stated using the `withTaskExecutorPreference` function:

  ```swift
  nonisolated func doSomething() async { ... }
  
  await withTaskExecutorPreference(preferredExecutor) {
    doSomething()
  ```

  Or when creating new unstructured or child-tasks (e.g. in a task group):

  ```swift
  Task(executorPreference: preferredExecutor) {
    // executes on 'preferredExecutor'
    await doSomething() // doSomething body would execute on 'preferredExecutor'
  }
  ```

* [SE-0413][]:

  Functions can now specify the type of error that they throw as part of the
  function signature. For example:

  ```swift
  func parseRecord(from string: String) throws(ParseError) -> Record { ... }
  ```

  A call to `parseRecord(from:)` will either return a `Record` instance or throw
  an error of type `ParseError`. For example, a `do..catch` block will infer
  the `error` variable as being of type `ParseError`:

  ```swift
  do {
    let record = try parseRecord(from: myString)
  } catch {
    // error has type ParseError
  }
  ```

  Typed throws generalizes over throwing and non-throwing functions. A function
  that is specified as `throws` (without an explicitly-specified error type) is
  equivalent to one that specifies `throws(any Error)`, whereas a non-throwing
  is equivalent to one that specifies `throws(Never)`. Calls to functions that
  are `throws(Never)` are non-throwing.

  Typed throws can also be used in generic functions to propagate error types
  from parameters, in a manner that is more precise than `rethrows`. For
  example, the `Sequence.map` operation can propagate the thrown error type from
  its closure parameter, indicating that it only throws errors of the same type
  as that closure does:

  ```swift
  extension Sequence {
    func map<T, E>(_ body: (Element) throws(E) -> T) throws(E) -> [T] { ... }
  }
  ```

  When given a non-throwing closure as a parameter, `map` will not throw.

* [#70065][]:

  With the implementation of [SE-0110][], a closure parameter syntax consisting
  of only a parameter type — and no parameter name — was accidentally made legal
  for certain unambiguous type syntaxes in Swift 4. For example:

  ```swift
  let closure = { ([Int]) in }
  ```

  Having been [gated](https://github.com/apple/swift/pull/28171) behind a
  compiler warning since at least Swift 5.2, this syntax is now rejected.

* [#71075][]:

  \_SwiftConcurrencyShims used to declare the `exit` function, even though it
  might not be available. The declaration has been removed, and must be imported
  from the appropriate C library module (e.g. Darwin or SwiftGlibc)
  
* [SE-0270][]:

  The Standard Library now provides APIs for performing collection operations
  over noncontiguous elements. For example:
  
  ```swift
  var numbers = Array(1...15)

  // Find the indices of all the even numbers
  let indicesOfEvens = numbers.indices(where: { $0.isMultiple(of: 2) })

  // Perform an operation with just the even numbers
  let sumOfEvens = numbers[indicesOfEvens].reduce(0, +)
  // sumOfEvens == 56

  // You can gather the even numbers at the beginning
  let rangeOfEvens = numbers.moveSubranges(indicesOfEvens, to: numbers.startIndex)
  // numbers == [2, 4, 6, 8, 10, 12, 14, 1, 3, 5, 7, 9, 11, 13, 15]
  // numbers[rangeOfEvens] == [2, 4, 6, 8, 10, 12, 14]
  ```
  
  The standard library now provides a new `indices(where:)` function which creates
  a `RangeSet` - a new type representing a set of discontiguous indices. `RangeSet`
  is generic over its index type and can be used to execute operations over
  noncontiguous indices such as collecting, moving, or removing elements from a
  collection. Additionally, `RangeSet` is generic over any `Comparable` collection
  index and can be used to represent a selection of items in a list or a refinement
  of a filter or search result.

