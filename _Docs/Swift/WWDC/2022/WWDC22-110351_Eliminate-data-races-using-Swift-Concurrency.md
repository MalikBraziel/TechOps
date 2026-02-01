---
URL: https://developer.apple.com/videos/play/wwdc2022/110351/
Title: Eliminate data races using Swift Concurrency
Topics: Swift Concurrency
Date_Published: 2022-06-06
Swift_Version_At_Publish: Swift 5.7
---

# Eliminate data races using Swift Concurrency

<Transcript>

0:00

♪ Mellow instrumental hip-hop music ♪ ♪ Hello.

0:10

I'm Doug from the Swift team, and I'm here to talk about Swift Concurrency's approach to eliminating data races.

0:17

We introduced Swift Concurrency as a set of language features that make it easier to write concurrent programs.

0:23

For the mechanics of these individual language features, we refer you to the 2021 WWDC talks covering each of them.

0:32

This talk takes a different, more holistic view of Swift Concurrency as a way of structuring your program to make efficient use of concurrency without introducing data races.

0:42

But to do so, we need a great analogy, so we invite you to sail with us on the high seas of concurrency.

0:50

The sea of concurrency is unpredictable, with many things going on at once, but with you at the helm and Swift helping you navigate the waters, it can produce amazing things.

1:01

Let's dive in! We'll start by talking about isolation, which is one of the key ideas of Swift's concurrency model, ensuring that data is not shared in a manner that can introduce data races.

1:14

Let's start with task isolation.

1:17

In our sea of concurrency, tasks are represented by boats.

1:22

Boats are our main workers -- they have a job to do, which they perform sequentially from start to finish.

1:29

They are asynchronous, and their work can be suspended any number of times at "await" operations in the code.

1:37

Finally, they are self-contained: each task has its own resources, so it can operate by itself, independently of all of the other boats in the sea.

1:48

If our boats are completely independent, we have concurrency without data races, but it's not very useful without some way to communicate.

1:59

Let's add some communication! For example, one boat might have a pineapple that it wants to share with another boat.

2:07

So the boats meet on the open sea, and we transfer the pineapple from one boat to the other.

2:13

Now, this is where the physical analogy breaks down a little bit, because this pineapple is not a physical item that moves from one boat to the next.

2:22

It's data, and in Swift we have a couple of different ways we could represent that data.

2:29

How do we define our pineapple type? We like value types in Swift, so let's make the pineapple a struct that's defined by its weight and ripeness.

2:39

Let's see how this works.

2:41

When the boats meet on the open sea, we're really passing a copy of the pineapple instance from one boat to the next, and each boat goes away with its own copy.

2:52

If you were to mutate the copies, such as by calling the slice() and ripen() methods, it won't have any effect on the other one.

3:01

Swift has always preferred value types for exactly this reason -- mutations have only local effects.

3:09

That principle helps value types maintain isolation.

3:14

Now, let's extend our data model a bit and add chickens! Unlike pineapples, which are pretty much only good for eating, chickens are beautiful creatures with their own unique personalities.

3:26

So, we're going to model them with a class, like this.

3:30

Let's have our intrepid seafarers exchange a chicken.

3:34

When our boats meet, we share the chicken, except that copying a reference type like chicken doesn't give you another full copy of the chicken, it gives you a reference to that specific object.

3:47

So once our boats have gone their separate ways, we can see that we have a problem: both boats are doing their work concurrently, but they are not independent because they both reference the same chicken object.

4:00

That shared mutable data is prone to data races, such as when one boat is trying to feed the chicken and the other wants to play with it, leading to one very confused chicken.

4:12

We need a way to know that it was safe to share pineapples amongst boats, but not chickens.

4:18

And then we need some checking in place in the Swift compiler to ensure that chickens aren't accidentally passed from one boat to another.

4:27

Swift protocols are a great way of categorizing types so you can reason about their behavior.

4:33

The Sendable protocol is used to describe types that can safely be shared across different isolation domains, without creating data races.

4:43

A type can be made Sendable by writing a conformance.

4:47

The Pineapple struct conforms to Sendable because it's a value type, but the Chicken class cannot because it's an unsynchronized reference type.

4:58

Modeling Sendable as a protocol allows us to describe the places where data is going to be shared across isolation domains.

5:06

For example, when a task returns a value, this value is provided to any of the tasks that are waiting for that value.

5:15

Here, we are trying to return a Chicken from our Task, and we get an error stating that this is unsafe because Chicken is not Sendable.

5:25

The actual Sendable constraint comes from the definition of the Task struct itself, which specifies that the result type of a Task, called Success, must conform to the Sendable protocol.

5:37

You should use Sendable constraints where you have generic parameters whose values will be passed across different isolation domains.

5:45

Now, let's revisit the idea of sharing data among boats.

5:50

When two boats meet on the high seas and want to share data, we need someone to consistently check all of the goods to make sure they're safe to share.

6:00

That's the role of our friendly customs inspector -- played here by the Swift compiler -- to make sure that only Sendable types are exchanged.

6:09

The pineapple is fine and can be exchanged freely, because it's Sendable.

6:14

However, the chicken cannot be exchanged, and our friendly customs inspector will prevent us from making that mistake.

6:23

The compiler is involved in checking Sendable correctness at many different points.

6:28

Sendable types must be correct by construction, and cannot allow any shared data to be smuggled through them.

6:35

Enums and structs generally define value types, which copy all of their instance data along with them to produce independent values.

6:44

Therefore, they can be Sendable so long as all of their instance data is also Sendable.

6:51

Sendable can be propagated through collections and other generic types using conditional conformance.

6:57

An array of Sendable types is Sendable, so a Crate full of pineapples is also Sendable.

7:04

All of these Sendable conformances can even be inferred by the Swift compiler for non-public types, so Ripeness, Pineapple, and Crate are all implicitly Sendable.

7:15

But let's say we create a coop to house our flock of chickens.

7:19

This type cannot be marked as Sendable, because it contains non-Sendable state: Chicken isn't Sendable, so the array of chickens isn't Sendable.

7:29

We'll get an error message from our compiler to indicate that this type cannot safely be shared.

7:35

Classes are reference types, so they can only be made Sendable under very narrow circumstances, such as when a final class only has immutable storage.

7:46

Our attempt to make the Chicken class Sendable will produce an error because it contains mutable state.

7:53

Now, it is possible to implement reference types that do their own internal synchronization, for example, by using a lock consistently.

8:01

These types are conceptually Sendable, but there is no way for Swift to reason about that.

8:07

Use unchecked Sendable to disable the compiler's checking.

8:12

Be careful with this, because smuggling mutable state through @unchecked Sendable undermines the data race safety guarantees Swift is providing.

8:21

Task creation involves executing a closure in a new, independent task, like sending off a rowboat from your boat.

8:30

When we do this, we can capture values from the original task and pass them into the new task, so we need Sendable checking to ensure we don't introduce data races.

8:41

If we do try to share a non-Sendable type across this boundary, the Swift compiler has us covered, producing an error message like this one.

8:51

This isn't magic for task creation.

8:53

The closure is being inferred to be a Sendable closure, which could have been written explicitly with At-Sendable.

9:01

Sendable closures are values of Sendable function type.

9:07

At-Sendable can be written on a function type to indicate that the function type conforms to the Sendable protocol.

9:13

That implies that values of that function type can be passed to other isolation domains and called there without introducing data races on their captured state.

9:23

Normally, function types cannot conform to protocols, but Sendable is special because the compiler validates the semantic requirements for it.

9:31

There is similar support for tuples of Sendable types conforming to the Sendable protocol, which allows Sendable to be used throughout the entire language.

9:41

The system we've described has many concurrently executing tasks that are isolated from each other.

9:48

The Sendable protocol describes types that can be safely shared among tasks, and the Swift compiler checks Sendable conformances at every level to maintain isolation of the tasks.

9:59

However, without any notion of shared mutable data anywhere, it's hard for the tasks to coordinate in a meaningful manner.

10:07

So we need some way to share data amongst our tasks that doesn't re-introduce data races.

10:13

This is where actors come in.

10:16

Actors provide a way to isolate state that can be accessed by different tasks, but in a coordinated manner that eliminates data races.

10:26

Actors are the islands in our sea of concurrency.

10:30

Like boats, each island is self-contained, with its own state that is isolated from everything else in the sea.

10:38

To access that state, your code needs to be running on the island.

10:43

For example, the advanceTime method is isolated to this island.

10:47

It lives on the island and has access to all of the island's state.

10:51

To actually run code on an island, you need a boat.

10:56

A boat can visit the island to run code on the island, at which point it has access to that state.

11:02

Only one boat can visit the island to run code at a time, which ensures that there is no concurrent access to the island's state.

11:11

If other boats show up, they must await their turn to visit the island.

11:16

And because it might be a long time before a given boat gets a chance to visit the island, entering into an actor is a potential suspension point marked by the “await” keyword.

11:27

Once the island frees up -- again, at a suspension point -- another boat can visit.

11:34

Just like with two boats meeting on the open sea, interactions between a boat and an island need to maintain isolation of both, by making sure that non-Sendable types don't pass between the two.

11:47

For example, perhaps we try to add a chicken from our boat to the flock on the island.

11:52

This would create two references to the same chicken object from different isolation domains, so the Swift compiler rejects it.

12:00

Similarly, if we try to adopt a pet chicken from the island and take it away on our boat, Sendable checking ensures that we cannot create this data race.

12:11

Actors are reference types, but unlike classes, they isolate all of their properties and code to prevent concurrent access.

12:19

Therefore, having a reference to an actor from a different isolation domain is safe.

12:25

It's like having a map to an island: you can use the map to go visit the island, but you still need to go through the docking procedure to access its state.

12:34

Therefore, all actor types are implicitly Sendable.

12:40

You might be wondering how to know what code is isolated to the actor and what code isn't.

12:46

Actor isolation is determined by the context you're in.

12:50

The instance properties of an actor are isolated to that actor.

12:54

Instance methods on the actor or an extension of the actor are also isolated by default, like this advanceTime method.

13:03

Closures that are not Sendable, such as the closure passed to the reduce algorithm, stay on the actor and are actor-isolated when they are in an actor-isolated context.

13:14

The task initializer also inherits actor isolation from its context, so the created task will be scheduled on the same actor as it was initiated from.

13:23

Here, that grants access to the flock.

13:27

On the other hand, a detached task does not inherit actor isolation from its context, because it is completely independent of the context where it was created.

13:37

We can see that the code in the closure here is considered to be outside the actor because it needs to use “await” to refer to the isolated “food” property.

13:46

We have a term for this closure: it's non-isolated code.

13:52

No-isolated code is code that does not run on any actor at all.

13:56

You can explicitly make a function that's within an actor non-isolated by using the non-isolated keyword, putting it outside of the actor.

14:05

Just like what happened implicitly with the closure used for the detached task.

14:10

That means if we want to read some of the state that's isolated to the actor, we'll need to use “await” to visit the island and grab a copy of the state we need.

14:20

Non-isolated async code always runs on the global cooperative pool.

14:26

Think of it as only running when a boat is out on the open sea, so you have to leave the island you're visiting to do the work.

14:33

That means checking to ensure that you aren't taking any non-Sendable data with you! Here, the compiler detects the potential data race, where an instance of the non-Sendable Chicken is trying to leave the island.

14:47

Let's consider one more case of non-isolated code.

14:52

The “greet” operation is non-isolated, synchronous code.

14:56

It knows nothing about boats or islands or concurrency in general.

15:00

And here, we're calling it from the actor-isolated greetOne function, and that's okay! This synchronous code, when called from the island, will stay on the island, so it's free to operate on the chicken from the flock.

15:14

If instead we had a non-isolated async operation that calls “greet,” then “greet” will run there, on a boat, in the open sea.

15:23

Most Swift code is like this: synchronous, non-isolated to any actor, and only operates on the parameters it's been given, so it stays in the isolation domain where it is called.

15:35

Actors hold state that is isolated from the rest of the program.

15:40

Only one task can run on an actor at a time, so there is no concurrent access to that state.

15:47

Sendable checking applies any time a task enters or exits an actor to ensure that no unsynchronized mutable state escapes.

15:56

Altogether, this makes actors one of the building blocks for a concurrent program in Swift.

16:04

There's another special actor we often talk about called the main actor.

16:09

Think of the main actor as a big island in the middle of the sea.

16:13

It represents the main thread, where all of the drawing and interaction for your user interface occurs.

16:19

So if you want to draw something, you need to run the code on the main actor's island.

16:24

It's so important for your UI, that maybe we should even call it the “U-I-land." When we say that the main actor is “big,” what we mean is that it contains a lot of state related to the program's user interface.

16:39

There's a lot of code, both in the UI frameworks and in your apps, that needs to run on it.

16:45

However, it's still an actor, so it only runs one job at a time.

16:51

So you have to be careful not to put too much or long-running work on the main actor, because it can make your UI unresponsive.

17:00

Isolation to the main actor is expressed with the MainActor attribute.

17:04

This attribute can be applied to a function or closure to indicate that the code must run on the main actor.

17:12

Then, we say that this code is isolated to the main actor.

17:16

The Swift compiler will guarantee that main-actor-isolated code will only be executed on the main thread, using the same mechanism that ensures mutually exclusive access to other actors.

17:28

If one calls updateView from a context that isn't isolated to the main actor, it will need to introduce an “await” to account for the switch over to the main actor.

17:39

The main actor attribute can also be applied to types, in which case the instances of those types will be isolated to the main actor.

17:47

Again, this is just like any other actor -- the properties are only accessible while on the main actor, and the methods are isolated to the main actor unless they explicitly opt out.

17:58

Like normal actors, references to main-actor classes are themselves Sendable, because their data is isolated.

18:07

This makes the main actor annotation suitable for your UI views and view controllers, which are necessarily tied to the main thread by the frameworks themselves.

18:16

You can share a reference to your view controller with other tasks and actors in your program, and they can asynchronously call back into the view controller to post results.

18:26

This has a direct effect on your app's architecture.

18:30

In your app, your views and view controllers will be on the main actor.

18:35

Other program logic should be separated from that main actor, using other actors to safely model shared state and tasks to describe independent work.

18:45

And those tasks can shuttle between the main actor and other actors as necessary.

18:51

There's a lot going on in a concurrent app, so we've built some great tools to help you make sense of it.

18:57

I invite you to check out the "Visualize and Optimize Swift Concurrency" talk to learn more.

19:03

Let's dive into some deeper waters to talk about atomicity.

19:08

The goal of the Swift Concurrency model is to eliminate data races.

19:12

What that really means is that it eliminates low-level data races, which involve data corruption.

19:18

You still need to reason about atomicity at a high level.

19:23

As we've talked about before, actors only run one task at a time.

19:28

However, when you stop running on an actor, the actor can run other tasks.

19:32

This ensures that the program makes progress, eliminating the potential for deadlocks.

19:38

However, it requires you to consider your actor's invariants carefully around await statements.

19:43

Otherwise, you can end up with a high-level data race where the program is in an unexpected state, even though no data is actually corrupted.

19:52

Let's break down an example of this.

19:56

Here we have a function that intends to deposit some additional pineapples on an island.

20:01

It's outside of an actor, so it's non-isolated async code.

20:06

That means it runs out here in the open sea.

20:10

It's been given some pineapples and a map to the island where it should deposit those pineapples.

20:16

The first interesting operation here gets a copy of the food array from the island.

20:22

To do that, the boat needs to visit the island, signaled by the “await” keyword.

20:27

As soon as it has a copy of the food, the boat heads back out to the open sea to continue its work.

20:33

That means adding the pineapple from the pineapples parameter to the two it got from the island.

20:39

Now, we can move along to the last line of the function.

20:43

Our boat now needs to visit the island again to set the island's food array to those three pineapples.

20:50

Here, everything worked out fine, and we have the three pineapples on the island! But things could have gone a bit differently.

20:58

Let's say a pirate ship snuck in and stole all of the pineapples while our first boat was waiting its turn to visit the island.

21:07

Now, our original ship deposits its three pineapples on the island, and we notice a problem.

21:13

The three pineapples have suddenly turned into five pineapples! What happened here? Well, notice that we have two awaits for access to state on the same actor, and we're making an assumption here that the food array on the island doesn't change between those two awaits.

21:32

But these are awaits, meaning that our task could get suspended here and the actor could do other higher-priority work, like battling pirates.

21:42

In this specific case, the Swift compiler will reject an attempt to outright modify the state on another actor.

21:49

However, we should really rewrite our deposit operation as synchronous code on the actor, like this.

21:56

Because this is synchronous code, it will run on the actor without interruption.

22:01

So we can be sure that the state of the island will be unchanged by anyone else throughout the entire function.

22:09

When you are writing your actor, think in terms of synchronous, transactional operations that can be interleaved in any way.

22:17

Every one of them should ensure that the actor is in a good state when it exits.

22:23

For async actor operations, keep them simple, forming them primarily from your synchronous, transactional operations, and take care that your actor is in a good state at each await operation.

22:35

This way, you can make full use of actors to eliminate both low-level and high-level data races.

22:42

In a concurrent program, many things are happening at once, so the order in which those things happen can vary from one execution to the next.

22:51

And yet programs often rely on handling events in a consistent order.

22:56

For example, the stream of events that come in from user input or messages from a server.

23:02

When these event streams come in, we expect their effects to happen in order.

23:07

Swift Concurrency provides tools for ordering operations, however, actors are not the tool for doing so.

23:14

Actors execute the highest-priority work first, to help the overall system stay responsive.

23:20

This eliminates priority inversions where lower-priority work ends up happening before higher-priority work on the same actor.

23:28

Note that this is a significant difference from serial Dispatch queues, which execute in a strictly First-In, First-Out order.

23:38

Swift Concurrency has several tools for ordering work.

23:41

The first we've been talking about a lot already -- tasks.

23:45

Tasks execute from beginning to end, with the normal control flow you're used to, so they naturally order work.

23:54

AsyncStream can be used to model an actual stream of events.

23:58

One task can iterate over the stream of events with a for-await-in loop, processing each event in turn.

24:05

An AsyncStream can be shared with any number of event producers, which can add elements to the stream while maintaining order.

24:14

We've talked a lot about how Swift's concurrency model is designed to eliminate data races using the notion of isolation, which is maintained by Sendable checking at task and actor boundaries.

24:26

However, we cannot all just stop what we are doing to go mark all of the Sendable types everywhere.

24:32

Instead, we need an incremental approach.

24:36

Swift 5.7 introduces a build setting to specify how strictly the Swift compiler should check for Sendability.

24:44

The default setting is Minimal meaning that the compiler will only diagnose places where one has explicitly tried to mark something as Sendable.

24:53

This is similar to how Swift 5.5 and 5.6 behaved, and for the above, there won't be any warnings or errors.

25:00

Now, if you add a Sendable conformance, the compiler will complain that the Coop type cannot be Sendable because Chicken isn't Sendable.

25:09

However, this -- and other Sendable-related problems -- will be presented as warnings in Swift 5, not errors, to make it easier to work through the problems one by one.

25:22

To move further toward data race safety, enable the “targeted” strict concurrency setting.

25:28

This setting enables Sendable checking for code that has already adopted Swift Concurrency features like async/await, tasks, or actors.

25:37

This will identify, for example, attempts to capture values of non-Sendable type in a newly created task.

25:45

Sometimes the non-Sendable types come from another module.

25:50

Perhaps it's some package that hasn't been updated for Sendable yet, or even your own module that you just haven't gotten around to.

25:57

For those, you can temporarily disable the Sendable warnings for types that come from that module using the @preconcurrency attribute.

26:07

This will silence Sendable warnings for the Chicken type within this source file.

26:12

At some point, the FarmAnimals module will get updated with Sendable conformances.

26:17

Then, one of two things will happen: either Chicken becomes Sendable somehow, in which case the preconcurrency attribute can be removed from the import.

26:27

Or Chicken will be known to be non-Sendable, in which case the warning will come back, indicating that your assumptions about Chicken being Sendable are, in fact, not correct.

26:38

The targeted strictness setting tries to strike a balance between compatibility with existing code and identifying potential data races.

26:47

However, if you'd like to see everywhere that races could occur, there is one more option: complete checking.

26:55

Complete checking approximates the intended Swift 6 semantics to completely eliminate data races.

27:01

It checks everything that the earlier two modes check but does so for all code in the module.

27:07

Here, we're not actually making use of Swift's concurrency features at all.

27:11

Rather, it's performing work on a dispatch queue, which will execute that code concurrently.

27:17

The async operation on a dispatch queue is actually known to take a Sendable closure, so the compiler produces a warning indicating that there is a data race when the non-Sendable body is captured by the code running on the dispatch queue.

27:31

We can fix this by making the body parameter Sendable.

27:36

That change eliminates this warning, and now all of the callers of doWork know that they need to provide a Sendable closure.

27:45

That means we get better checking for data races, and we can see that the visit function now is the source of a data race.

27:53

Complete checking will help flush out the potential data races in your program.

28:00

To achieve Swift's goal of eliminating data races, we'll eventually need to get to complete checking.

28:06

We encourage you to work incrementally toward that goal: adopt Swift's concurrency model to architect your app for data race safety, then enable progressively stricter concurrency checking to eliminate classes of errors from your code.

28:21

And don't fret over marking your imports with @preconcurrency to suppress warnings for imported types.

28:27

As those modules adopt stricter concurrency checking, the compiler will recheck your assumptions.

28:33

At the end of this road, your code will benefit from both memory safety and data race safety, helping you focus on building great apps.

28:42

And thank you for sailing with me on the sea of concurrency.

</Transcript>

## Code

### Tasks

```swift
Task.detached {
  let fish = await catchFish()
  let dinner = await cook(fish)
  await eat(dinner)
}
```

### What is the pineapple?

```swift
enum Ripeness {
  case hard
  case perfect
  case mushy(daysPast: Int)
}

struct Pineapple {
  var weight: Double
  var ripeness: Ripeness
  
  mutating func ripen() async { … }
  mutating func slice() -> Int { … }
}
```

### Adding chickens

```swift
final class Chicken {
  let name: String
  var currentHunger: HungerLevel
  
  func feed() { … }
  func play() { … }
  func produce() -> Egg { … }
}
```

### Sendable protocol

```swift
protocol Sendable { }
```

### Use conformance to specify which types are Sendable

```swift
struct Pineapple: Sendable { … } // conforms to Sendable because its a value type

class Chicken: Sendable { } // cannot conform to Sendable because its an unsynchronized reference type.
```

### Check Sendable across task boundaries

```swift
// will get an error because Chicken is not Sendable

let petAdoption = Task {
  let chickens = await hatchNewFlock()
  return chickens.randomElement()!
}

let pet = await petAdoption.value
```

### The Sendable constraint is from the Task struct

```swift
struct Task<Success: Sendable, Failure: Error> {
  var value: Success {
    get async throws { … }
  }
}
```

### Sendable checking for enums and structs

```swift
enum Ripeness: Sendable {
  case hard
  case perfect
  case mushy(daysPast: Int)
}

struct Pineapple: Sendable {
  var weight: Double
  var ripeness: Ripeness
}
```

### Sendable checking for enums and structs with collections

```swift
// contains an array of Sendable types, therefore is Sendable

struct Crate: Sendable {
  var pineapples: [Pineapple]
}
```

### Sendable checking for enums and structs with non-Sendable collections

```swift
// stored property 'flock' of 'Sendable'-conforming struct 'Coop' has non-sendable type '[Chicken]'

struct Coop: Sendable {
  var flock: [Chicken]
}
```

### Sendable checking in classes

```swift
// Can be Sendable if a final class has immutable storage

final class Chicken: Sendable {
  let name: String
  var currentHunger: HungerLevel //'currentHunger' is mutable, therefore Chicken cannot be Sendable
}
```

### Reference types that do their own internal synchronization

```swift
// @unchecked can be used, but be careful!

class ConcurrentCache<Key: Hashable & Sendable, Value: Sendable>: @unchecked Sendable {
  var lock: NSLock
  var storage: [Key: Value]
}
```

### Sendable checking during task creation

```swift
let lily = Chicken(name: "Lily")

Task.detached {@Sendable in
	lily.feed()
}
```

### Sendable function types

```swift
struct Task<Success: Sendable, Failure: Error> {
  static func detached(
    priority: TaskPriority? = nil,
    operation: @Sendable @escaping () async throws -> Success
  ) -> Task<Success, Failure>
}
```

### Actors

```swift
actor Island {
  var flock: [Chicken]
  var food: [Pineapple]

  func advanceTime()
}
```

### Only one boat can visit an island at a time

```swift
func nextRound(islands: [Island]) async {
  for island in islands {
    await island.advanceTime()
  }
}
```

### Non-Sendable data cannot be shared between a task and actor

```swift
// Both examples cannot be shared

await myIsland.addToFlock(myChicken)

myChicken = await myIsland.adoptPet()
```

### What code is actor-isolated?

```swift
actor Island {
  var flock: [Chicken]
  var food: [Pineapple]

  func advanceTime() {
    let totalSlices = food.indices.reduce(0) { (total, nextIndex) in
      total + food[nextIndex].slice()
    }

    Task {
      flock.map(Chicken.produce)
    }

    Task.detached {
      let ripePineapples = await food.filter { $0.ripeness == .perfect }
      print("There are \(ripePineapples.count) ripe pineapples on the island")
    }
  }
}
```

### Nonisolated code

```swift
extension Island {
  nonisolated func meetTheFlock() async {
    let flockNames = await flock.map { $0.name }
    print("Meet our fabulous flock: \(flockNames)")
  }
}
```

### Non-isolated synchronous code

```swift
func greet(_ friend: Chicken) { }

extension Island {
  func greetOne() {
    if let friend = flock.randomElement() { 
      greet(friend)
    }
  }
}
```

### Non-isolated asynchronous code

```swift
func greet(_ friend: Chicken) { }

func greetAny(flock: [Chicken]) async {
  if let friend = flock.randomElement() { 
    greet(friend)
  }
}
```

### Isolating functions to the main actor

```swift
@MainActor func updateView() { … }

Task { @MainActor in
	// …
  view.selectedChicken = lily
}

nonisolated func computeAndUpdate() async {
  computeNewValues()
  await updateView()
}
```

### @MainActor types

```swift
@MainActor

class ChickenValley: Sendable {
  var flock: [Chicken]
  var food: [Pineapple]

  func advanceTime() {
    for chicken in flock {
      chicken.eat(from: &food)
    }
  }
}
```

### Non-transactional code

```swift
func deposit(pineapples: [Pineapple], onto island: Island) async {
   var food = await island.food
   food += pineapples
   await island.food = food
}
```

### Modify `deposit` function to be synchronous

```swift
extension Island {
   func deposit(pineapples: [Pineapple]) {
      var food = self.food
      food += pineapples
      self.food = food
   }
}
```

### AsyncStreams deliver elements in order

```swift
for await event in eventStream {
  await process(event)
}
```

### Minimal strict concurrency checking

```swift
import FarmAnimals

struct Coop: Sendable {
  var flock: [Chicken]
}
```

### Targeted strict concurrency checking

```swift
@preconcurrency import FarmAnimals

func visit(coop: Coop) async {
  guard let favorite = coop.flock.randomElement() else {
    return
  }

  Task {
    favorite.play()
  }
}
```

### Complete strict concurrency checking

```swift
import FarmAnimals

func doWork(_ body: @Sendable @escaping () -> Void) {
  DispatchQueue.global().async {
    body()
  }
}

func visit(friend: Chicken) {
  doWork {
    friend.play()
  }
}
```
