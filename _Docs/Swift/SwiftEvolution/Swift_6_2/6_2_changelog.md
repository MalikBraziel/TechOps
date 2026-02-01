## Swift 6.2

* [SE-0472][]:
  Introduced new `Task.immediate` and `taskGroup.addImmediateTask` APIs, which allow a task to run "immediately" in the
  calling context if its isolation is compatible with the enclosing one. This can be used to create tasks which execute 
  without additional scheduling overhead, and allow for finer-grained control over where a task begins running.

  The canonical example for using this new API is using an unstructured immediate task like this:
  
  ```swift
  func synchronous() { // synchronous function
  // executor / thread: "T1"
  let task: Task<Void, Never> = Task.immediate {
  // executor / thread: "T1"
  guard keepRunning() else { return } // synchronous call (1)
  
      // executor / thread: "T1"
      await noSuspension() // potential suspension point #1 // (2)
      
      // executor / thread: "T1"
      await suspend() // potential suspension point #2 // (3), suspend, (5)
      // executor / thread: "other"
  }
  
  // (4) continue execution
  // executor / thread: "T1"
  }
  ```

* [SE-0471][]:
  Actor and global actor annotated types may now declare a synchronous `isolated deinit`, which allows such deinitializer
  to access actor isolated state while deinitializing the actor. This enables actor deinitializers to safely access
  and shut down or close resources during an actors deinitialization, without explicitly resorting to unstructured 
  concurrency tasks.

  ```swift
  class NonSendableAhmed { 
    var state: Int = 0
  }

  @MainActor
  class Maria {
    let friend: NonSendableAhmed

    init() {
      self.friend = NonSendableAhmed()
    }

    init(sharingFriendOf otherMaria: Maria) {
      // While the friend is non-Sendable, this initializer and
      // and the otherMaria are isolated to the MainActor. That is,
      // they share the same executor. So, it's OK for the non-Sendable value
      // to cross between otherMaria and self.
      self.friend = otherMaria.friend
    }
    
    isolated deinit {
      // Used to be a potential data race. Now, deinit is also
      // isolated on the MainActor, so this code is perfectly
      // correct.
      friend.state += 1
    }
  }
    
  func example() async {
    let m1 = await Maria()
    let m2 = await Maria(sharingFriendOf: m1)
    doSomething(m1, m2)
  }
  ```

* [SE-0469][]:
  Swift concurrency tasks (both unstructured and structured, via the TaskGroup `addTask` APIs) may now be given 
  human-readable names, which can be used to support debugging and identifying tasks.

  ```swift
  let getUsers = Task("Get Users for \(accountID)") {
    await users.get(accountID)
  }
  ```

* [SE-0462][]:
  Task priority escalation may now be explicitly caused to a `Task`, as well as reacted to using the new task priority escalation handlers:      

  ```swift
  // priority: low
  // priority: high!
  await withTaskPriorityEscalationHandler {
  await work()
  } onPriorityEscalated: { newPriority in // may not be triggered if ->high escalation happened before handler was installed
  // do something
  }
  ```
* [SE-0461][]:
  Nonisolated asynchronous functions may now execute on the calling actor, when the upcoming feature `NonisolatedNonsendingByDefault`
  is enabled, or when explicitly opted-into using the `nonisolated(nonsending)` keywords. This allows for fine grained control
  over where nonisolated asynchronous functions execute, and allows for the default behavior of their execution to be changed
  from always executing on the global concurrent pool, to the calling actor, which can yield noticeable performance improvements 
  thanks to less executor hopping when nonisolated and isolated code is invoked in sequence. 
  
  This also allows for safely using asynchronous functions on non-sendable types from actors, like so:

  ```swift
  class NotSendable {
    func performSync() { ... }

    nonisolated(nonsending)
    func performAsync() async { ... }
  }

  actor MyActor {
    let x: NotSendable

    func call() async {
      x.performSync() // okay

      await x.performAsync() // okay
    }
  }
  ```

* The Swift compiler no longer diagnoses references to declarations that are
  potentially unavailable because the platform version might not be new enough
  when those references occur inside of contexts that are also unavailable to
  that platform. This addresses a long-standing nuisance for multi-platform
  code. However, there is also a chance that existing source code may become
  ambiguous as a result:

  ```swift
  struct A {}
  struct B {}

  func potentiallyAmbiguous(_: A) {}

  @available(macOS 99, *)
  func potentiallyAmbiguous(_: B) {}

  @available(macOS, unavailable)
  func unavailableOnMacOS() {
    potentiallyAmbiguous(.init()) // error: ambiguous use of 'init()'
  }
  ```

  Code that is now ambiguous as a result should likely be restructured since
  disambiguation based on platform introduction alone has never been a reliable
  strategy, given that the code would eventually become ambiguous anyways when
  the deployment target is raised.

* [SE-0470][]:
  A protocol conformance can be isolated to a specific global actor, meaning that the conformance can only be used by code running on that actor. Isolated conformances are expressed by specifying the global actor on the conformance itself:

  ```swift
  protocol P {
    func f()
  }

  @MainActor
  class MyType: @MainActor P {
    /*@MainActor*/ func f() {
      // must be called on the main actor
    }
  }
  ```

  Swift will produce diagnostics if the conformance is directly accessed in code that isn't guaranteed to execute in the same global actor. For example:

  ```swift
  func acceptP<T: P>(_ value: T) { }

  /*nonisolated*/ func useIsolatedConformance(myType: MyType) {
    acceptP(myType) // error: main actor-isolated conformance of 'MyType' to 'P' cannot be used in nonisolated context
  }
  ```

  To address such issues, only use an isolated conformance from code that executes on the same global actor.

* [SE-0419][]:
  Introduced the new `Runtime` module, which contains a public API that can
  generate backtraces, presently supported on macOS and Linux.  Capturing a
  backtrace is as simple as

  ```swift
  import Runtime

  func foo() {
    // Without symbols
    let backtrace = try! Backtrace.capture()

    print(backtrace)

    // With symbol lookup
    let symbolicated = backtrace.symbolicated()!

    print(symbolicated)
  }
  ```

* [SE-0458][]:
  Introduced an opt-in mode for strict checking of memory safety, which can be
  enabled with the compiler flag `-strict-memory-safety`. In this mode,
  the Swift compiler will produce warnings for uses of memory-unsafe constructs
  and APIs. For example, 

  ```swift
  func evilMalloc(size: Int) -> Int {
    // use of global function 'malloc' involves unsafe type 'UnsafeMutableRawPointer'
    return Int(bitPattern: malloc(size))
  }
  ```

  These warnings are in their own diagnostic group (`StrictMemorySafety`) and can
  be suppressed by ackwnowledging the memory-unsafe behavior, for
  example with an `unsafe` expression:

  ```swift
  func evilMalloc(size: Int) -> Int {
    return unsafe Int(bitPattern: malloc(size)) // no warning
  }
  ```

