---
URL: https://developer.apple.com/videos/play/wwdc2025/268/
Title: Embracing Swift concurrency
Topics:
Date_Published: June 2025
Swift_Version_At_Publish: Swift 6.1
---


# Embracing Swift concurrency

Join us to learn the core Swift concurrency concepts. Concurrency helps you improve app responsiveness and performance, and Swift is designed to make asynchronous and concurrent code easier to write correctly. We'll cover the steps you need to take an app through from single-threaded to concurrent. We'll also help you determine how and when to make the best use of Swift concurrency features – whether it's making your code more asynchronous, moving it to the background, or sharing data across concurrent tasks.

### Chapters

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2025/268/?time=0)
- 3:17 - [Single-threaded code](https://developer.apple.com/videos/play/wwdc2025/268/?time=197)
- 6:00 - [Asynchronous tasks](https://developer.apple.com/videos/play/wwdc2025/268/?time=360)
- 7:24 - [Interleaving](https://developer.apple.com/videos/play/wwdc2025/268/?time=444)
- 10:22 - [Introducing concurrency](https://developer.apple.com/videos/play/wwdc2025/268/?time=622)
- 11:07 - [Concurrent functions](https://developer.apple.com/videos/play/wwdc2025/268/?time=667)
- 13:10 - [Nonisolated code](https://developer.apple.com/videos/play/wwdc2025/268/?time=790)
- 14:13 - [Concurrent thread pool](https://developer.apple.com/videos/play/wwdc2025/268/?time=853)
- 14:58 - [Sharing data](https://developer.apple.com/videos/play/wwdc2025/268/?time=898)
- 15:49 - [Value types](https://developer.apple.com/videos/play/wwdc2025/268/?time=949)
- 17:16 - [Actor-isolated types](https://developer.apple.com/videos/play/wwdc2025/268/?time=1036)
- 18:30 - [Classes](https://developer.apple.com/videos/play/wwdc2025/268/?time=1110)
- 23:18 - [Actors](https://developer.apple.com/videos/play/wwdc2025/268/?time=1398)
- 26:12 - [Wrap-up](https://developer.apple.com/videos/play/wwdc2025/268/?time=1572)

### Resources

- [Swift Migration Guide](https://www.swift.org/migration/documentation/migrationguide/)
- [The Swift Programming Language: Concurrency](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/concurrency/)
- [HD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2025/268/4/9de10aea-96a5-468d-a7b9-211a8f9b2d0a/downloads/wwdc2025-268_hd.mp4?dl=1)
- [SD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2025/268/4/9de10aea-96a5-468d-a7b9-211a8f9b2d0a/downloads/wwdc2025-268_sd.mp4?dl=1)

### Related Videos

#### WWDC25

- [Code-along: Elevate an app with Swift concurrency](https://developer.apple.com/videos/play/wwdc2025/270)

#### WWDC23

- [Beyond the basics of structured concurrency](https://developer.apple.com/videos/play/wwdc2023/10170)

## Transcript

<Transcript>

0:06

Hello! I’m Doug from the Swift team, and I’m excited to talk to you about how to make the best use of Swift concurrency in your app.

0:15

Concurrency allows code to perform multiple tasks at the same time. You can use concurrency in your app to improve responsiveness when waiting on data, like when reading files from disk or performing a network request. It can also be used to offload expensive computation to the background, like processing large images.

0:36

Swift’s concurrency model is designed to make concurrent code easier to write correctly. It makes the introduction of concurrency explicit and identifies what data is shared across concurrent tasks.

0:50

It leverages this information to identify potential data races at compile time, so you can introduce concurrency as you need it without fear of creating hard-to-fix data races.

1:03

Many apps only need to use concurrency sparingly, and some don't need concurrency at all. Concurrent code is more complex than single-threaded code, and you should only introduce concurrency as you need it.

1:17

Your apps should start by running all of their code on the main thread, and you can get really far with single-threaded code. The main thread is where your app receives UI-related events and can update the UI in response. If you aren’t doing a lot of computation in your app, it’s fine to keep everything on the main thread! Eventually, you are likely to need to introduce asynchronous code, perhaps to fetch some content over the network.

1:44

Your code can wait for the content to come across the network without causing the UI to hang.

1:50

If those tasks take too long to run, we can move them off to a background thread that runs concurrently with the main thread.

1:59

As we develop our app further, we may find that keeping all our data within the main thread is causing the app to perform poorly. Here, we can introduce data types for specific purposes that always run in the background.

2:15

Swift concurrency provides tools like actors and tasks for expressing these kinds of concurrent operations. A large app is likely to have an architecture that looks a bit like this. But you don’t start there, and not every app needs to end up here. In this session, we’re going to talk through the steps to take an app through this journey from single-threaded to concurrent. For each step along the way, we’ll help you determine when to take that step, what Swift language features that you’ll use, how to use them effectively, and why they work the way they do. First, we’ll describe how single-threaded code works with Swift concurrency. Then, we’ll introduce asynchronous tasks to help with high-latency operations, like network access.

3:02

Next, we’ll introduce concurrency to move work to a background thread and learn about sharing data across threads without introducing data races.

3:13

Finally, we’ll move data off the main thread with actors.

3:17

Let’s start with single-threaded code. When you run a program, code starts running on the main thread.

3:24

Any code that you add stays on the main thread, until you explicitly introduce concurrency to run code somewhere else. Single-threaded code is easier to write and maintain, because the code is only doing one thing at a time. If you start to introduce concurrency later on, Swift will protect your main thread code.

3:44

The main thread and all of its data is represented by the main actor. There is no concurrency on the main actor, because there is only one main thread that can run it. We can specify that data or code is on the main actor using the @MainActor notation.

4:01

Swift will ensure that main-actor code only ever runs on the main thread, and main-actor data is only ever accessed from there. We say that such code is isolated to the main actor.

4:14

Swift protects your main thread code using the main actor by default.

4:18

This is like the Swift compiler writing @MainActor for you on everything in that module. It lets us freely access shared state like static variables from anywhere in our code. In main actor mode, we don't have to worry about concurrent access until we start to introduce concurrency.

4:36

Protecting code with the main actor by default is driven by a build setting. Use this primarily for your main app module and any modules that are focused on UI interactions. This mode is enabled by default for new app projects created with Xcode 26. In this talk, we'll assume that main actor mode is enabled throughout the code examples.

4:58

Let's add a method on our image model to fetch and display an image from a URL. We want to load an image from a local file. Then decode it, and display it in our UI.

5:10

Our app has no concurrency in it at all. There is just a single, main thread doing all of the work.

5:18

This whole function runs on the main thread in one piece. So long as every operation in here is fast enough, that’s fine.

5:27

Right now, we’re only able to read files locally. If we want to allow our app to fetch an image over the network, we need to use a different API.

5:37

This URLSession API lets us fetch data over the network given a URL. However, running this method on the main thread would freeze the UI until the data has been downloaded from the network.

5:50

As a developer, it’s important to keep your app responsive. That means taking care not to tie up the main thread for so long that the UI will glitch or hang. Swift concurrency provides tools to help: asynchronous tasks can be used when waiting on data, such as a network request, without tying up the main thread.

6:11

To prevent hangs like this, network access is asynchronous.

6:16

We can change fetchAndDisplayImage so that it's capable of handling asynchronous calls by making the function 'async', and calling the URL session API with 'await'.

6:27

The await indicates where the function might suspend, meaning that it stops running on the current thread until the event it’s waiting for happens. Then, it can resume execution.

6:39

We can think of this as breaking the function into two pieces: the piece that runs up until we start to fetch the image, and the piece that runs after the image has been fetched. By breaking up the function this way, we allow other work to run in between the two pieces, keeping our UI responsive.

6:58

In practice, many library APIs, like URLSession, will offload work to the background for you. We still have not introduced concurrency into our own code, because we didn't need to! We improved the responsiveness of our application by making parts of it asynchronous, and calling library APIs that offload work on our behalf. All we needed to do in our code was adopt async/await.

7:24

So far, our code is only running one async function. An async function runs in a task. A task executes independently of other code, and should be created to perform a specific operation end-to-end. It's common to create a task in response to an event, such as a button press. Here, the task performs the full fetch-and-display image operation.

7:49

There can be many asynchronous tasks in a given app. In addition to the fetch-and-display image task that we’ve been talking about, here I’ve added a second task that fetches the news, displays it, and then waits for a refresh. Each task will complete its operations in order from start to finish. Fetching happens in the background, but the other operations in each task will all run on the main thread, and only one operation can run at a time. The tasks are independent from each other, so each task can take turns on the main thread. The main thread will run the pieces of each task as they become ready to run.

8:28

A single thread alternating between multiple tasks is called 'interleaving'. This improves overall performance by making the most efficient use of system resources. A thread can start making progress on any of the tasks as soon as possible, rather than leaving the thread idle while waiting for a single operation.

8:48

If fetching the image completes before fetching the news, the main thread will start decoding and displaying the image before displaying the news.

8:57

But if fetching the news finishes first, the main thread can start displaying the news before decoding the image.

9:06

Multiple asynchronous tasks are great when your app needs to perform many independent operations at the same time. When you need to perform work in a specific order, you should run that work in a single task.

9:20

To make your app responsive when there are high-latency operations like a network request, use an asynchronous task to hide that latency. Libraries can help you here, by providing asynchronous APIs that might do some concurrency on your behalf, while your own code stays on the main thread. The URLSession API has already introduced some concurrency for us, because it’s handling the network access on a background thread. Our own fetch-and-display image operation is running on the main thread. We might find that the decode operation is taking too long. This could show up as UI hangs when decoding a large image.

9:59

Asynchronous, single-threaded is often enough for an app. But if you start to notice that your app isn’t responsive, it’s an indication that too much is happening on the main thread. A profiling tool such as Instruments can help you determine where you are spending too much time. If it’s work that can be made faster without concurrency, do that first.

10:22

If it can’t be made faster, you might need to introduce concurrency. Concurrency is what lets parts of your code run on a background thread in parallel with the main thread, so it doesn’t block the UI. It can also be used to get work done faster by using more of the CPU cores in your system.

10:41

Our goal is to get the decoding off the main thread, so that work can happen on the background thread. Because we're in the main actor by default mode, fetchAndDisplaylmage and decodelmage are both isolated to the main actor. Main actor code can freely access all data and code that is accessible only to the main thread, which is safe because there's no concurrency on the main thread.

11:07

We want to offload the call to decodeImage, Which we can do by applying the @concurrent attribute to the decodeImage function.

11:16

@concurrent tells Swift to run the function in the background.

11:21

Changing where decodeImage runs also changes our assumptions about what state decodeImage can access. Let's take a look at the implementation.

11:31

The implementation is checking a dictionary of cached image data that's stored on the main actor, which is only safe to do on the main thread.

11:41

The Swift compiler shows us where the function is trying to access data on the main actor. This is exactly what we need to know to make sure we're not introducing bugs as we add concurrency. There are a few strategies you can use when breaking ties to the main actor so you can introduce concurrency safely.

11:59

In some cases, you can move the main actor code into a caller that always runs on the main actor. This is a good strategy if you want to make sure that work happens synchronously.

12:11

Or, you can use await to access the main actor from concurrent code asynchronously.

12:18

If the code doesn’t need to be on the main actor at all, you can add the nonisolated keyword to separate it from any actor.

12:26

We’re going to explore the first strategy now, and will talk about the others later on.

12:32

I'm going to move the image caching into fetchAndDisplayImage, which runs on the main actor. Checking the cache before making any async calls is good for eliminating latency. If the image is in the cache, fetchAndDisplayImage will complete synchronously without suspending at all. This means the results will be delivered to the UI immediately, and it will only suspend if the image is not already available.

12:58

And we can remove the url parameter from decodeImage because we don't need it anymore. Now, all we have to do is await the result of decodeImage.

13:09

An @concurrent function will always switch off of an actor to run. If you want the function to stay on whatever actor it was called on, you can use the nonisolated keyword.

13:20

Swift has additional ways to introduce more concurrency. For more information, see “Beyond the basics of structured concurrency”.

13:29

If we were providing decoding APIs as part of a library for many clients to use, using @concurrent isn't always the best API choice.

13:38

How long it takes to decode data depends on how large the data is, and decoding small amounts of data is okay to do on the main thread. For libraries, it's best to provide a nonisolated API and let clients decide whether to offload work.

13:56

Nonisolated code is very flexible, because you can call it from anywhere: if you call it from the main actor, it will stay on the main actor. If you call it from a background thread, it will stay on a background thread. This makes it a great default for general-purpose libraries.

14:14

When you offload work to the background, the system handles scheduling the work to run on a background thread. The concurrent thread pool contains all of the system's background threads, which can involve any number of threads. For smaller devices like a watch, there might be only be one or two threads in the pool. Large systems with more cores will have more background threads in the pool. It doesn't matter which background thread a task runs on, and you can rely on the system to make the best use of resources. For example, when a task suspends, the original thread will start running other tasks that are ready. When the task resumes, it can start running on any available thread in the concurrent pool, which might be different from the background thread it started on.

14:59

Now that we have concurrency, we will be sharing data among different threads. Sharing mutable state in concurrent code is notoriously prone to mistakes that lead to hard-to-fix runtime bugs. Swift helps you catch these mistakes at compile time so you can write concurrent code with confidence. Each time we go between the main actor and the concurrent pool, we share data between different threads. When we get the URL from the UI, it’s passed from the main actor out the background thread to fetch the image.

15:32

Fetching the image returns data, which is passed along to image decoding.

15:38

Then, after we’ve decoded the image, the image is passed back into the main actor, along with self.

15:45

Swift ensures that all of these values are accessed safely in concurrent code. Let's see what happens if the UI update ends up creating additional tasks that involve the URL.

15:56

Fortunately, URL is a value type. That means that when we copy the URL into the background thread, the background thread has a separate copy from the one that’s on the main thread. If the user enters a new URL through the UI, code on the main thread is free to use or modify its copy, and the changes have no effect on the value used on the background thread.

16:20

This means that it is safe to share value types like URL because it isn’t really sharing after all: each copy is independent of the others.

16:30

Value types have been a big part of Swift from the beginning. All of the basic types like strings, integers, and dates, are value types.

16:40

Collections of value types, such as dictionaries and arrays, are also value types. And so are structs and enums that store value types in them, like this Post struct.

16:52

We refer to types that are always safe to share concurrently as Sendable types. Sendable is a protocol, and any type that conforms to Sendable is safe to share. Collections like Array define conditional conformances to Sendable, so they are Sendable when their elements are.

17:10

Structs and enums are allowed to be marked Sendable when all of their instance data is Sendable.

17:16

And main actor types are implicitly Sendable, so you don’t have to say so explicitly.

17:22

Actors like the main actor protect non-Sendable state by making sure it’s only ever accessed by one task at a time. Actors might store values passed into its methods, and the actor might return a reference to its protected state from its methods.

17:39

Whenever a value is sent into or out of an actor, the Swift compiler checks that the value is safe to send to concurrent code. Let's focus on the async call to decodeImage.

17:53

Decode image is an instance method, so we're passing an implicit self argument.

17:59

Here, we see two values being sent outside the main actor, and a result value being sent back into the main actor.

18:07

'self' is my image model class, which is main actor isolated. The main actor protects the mutable state, so it's safe to pass a reference to the class to the background thread. And Data is a value type, so it's Sendable.

18:22

That leaves the image type. It could be a value type, like Data, in which case it would be Sendable. Instead let’s talk about types that are not Sendable, such as classes. Classes are reference types, meaning that when you assign one variable to another, they point at the same object in memory. If you change something about the object through one variable, such as scaling the image, then those changes are immediately visible through the other variables that point at the same object.

18:54

fetchAndDisplayImage does not use the image value concurrently. decodeImage runs in the background, so it can't access any state protected by an actor. It creates a new instance of an image from the given data. This image can't be referenced by any concurrent code, so it's safe to send over to the main actor and display it in the UI.

19:16

Let’s see what happens when we introduce some concurrency. First, this scaleAndDisplay method loads a new image on the main thread. The image variable points to this image object, which contains the cat picture.

19:29

Then, the function creates a task running on the concurrent pool, and that gets a copy of the image.

19:36

Finally, the main thread moves on to display the image.

19:41

Now, we have a problem. The background thread is changing the image: making the width and height different, and replacing the pixels with those of a scaled version. At the same time, the main thread is iterating over the pixels based on the old width and height.

19:58

That’s a data race. You might end up with a UI glitch, or more likely you’ll end up with a crash when your program tries to access outside of the pixel array’s bounds. Swift concurrency prevents data races with compiler errors if your code tries to share a non-Sendable type. Here, the compiler is indicating that the concurrent task is capturing the image, which is also used by the main actor to display the image. To correct this, we need to make sure that we avoid sharing the same object concurrently. If we want the image effect to be shown in the UI, the right solution is to wait for the scaling to complete before displaying the image. We can move all three of these operations into the task to make sure they happen in order.

20:43

displayImage has to run on the main actor, so we use await to call it from a concurrent task.

20:51

If we can make scaleAndDisplay async directly, we can simplify the code to not create a new task, and perform the three operations in order in the task that calls scaleAndDisplay.

21:02

Once we send the image to the main actor to display in the UI, the main actor is free to store a reference to the image, for example by caching the image object.

21:12

If we try to change the image after it's displayed in the UI, we'll get a compiler error about unsafe concurrent access.

21:20

We can address the issue by making any changes to the image before we send it over to the main actor. If you are using classes for your data model, your model classes will likely start on the main actor, so you can present parts of them in the UI.

21:35

If you eventually decide that you need to work with them on a background thread, make them nonisolated. But they should probably not be Sendable. You don’t want to be in a position where some of the model is being updated on the main thread and other parts of the model are being updated on the background thread. Keeping model classes non-Sendable prevents this kind of concurrent modification from occurring. It's also easier, because making a class Sendable usually requires using a low-level synchronization mechanism like a lock. Like classes, closures can create shared state.

22:10

Here is a function similar to one we had earlier that scales and displays an image. It creates an image object. Then, it calls perform(afterDelay:), providing it with a closure that scales the image object. This closure contains another reference to the same image. We call this a capture of the image variable. Just like non-Sendable classes, a closure with shared state is still safe as long as it isn't called concurrently.

22:39

Only make a function type Sendable if you need to share it concurrently.

22:44

Sendable checking occurs whenever some data passes between actors and tasks. It’s there to ensure that there are no data races that could cause bugs in your app.

22:55

Many common types are Sendable, and these can be freely shared across concurrent tasks.

23:01

Classes and closures can involve mutable state that is not safe to share concurrently, so use them from one task at a time.

23:10

You can still send an object from one task to another, but be sure to make all modifications to the object before sending it.

23:18

Moving asynchronous tasks to background threads can free up the main thread to keep your app responsive. If you find that you have a lot of data on the main actor that is causing those asynchronous tasks to “check in” with the main thread too often, you might want to introduce actors.

23:35

As your app grows over time, you may find that the amount of state on the main actor also grows.

23:42

You’ll introduce new subsystems to handle things like managing access to the network. This can lead to a lot of state living on the main actor, for example the set of open connections handled by the network manager, which we would access whenever we need to fetch data over the network.

24:00

When we start using these extra subsystems, the fetch-and-display image task from earlier has gotten more complicated: it’s trying to run on the background thread, but it has to hop over to the main thread because that’s where the network manager’s data is. This can lead to contention, where many tasks are trying to run code on the main actor at the same time. The individual operations might be quick, but if you have a lot of tasks doing this, it can add up to UI glitches.

24:29

Earlier, we moved code off the main thread by putting it into an @concurrent function.

24:35

Here, all of the work is in accessing the network manager’s data. To move that out, we can introduce our own network manager actor.

24:44

Like the main actor, actors isolate their data, so you can only access that data when running on that actor.

24:51

Along with the main actor, you can define your own actor types. An actor type is similar to a main-actor class. Like a main actor-class, it will isolate its data so that only one thread can touch the data at a time.

25:05

An actor type is also Sendable, so you can freely share actor objects. Unlike the main actor, there can be many actor objects in a program, each of which is independent.

25:17

In addition, actor objects aren’t tied to a single thread like the main actor is.

25:23

So moving some state from the main actor over to an actor object will allow more code to execute on a background thread, leaving the main thread open to keep the UI responsive.

25:34

Use actors when you find that storing data on the main actor is causing too much code to run on the main thread. At that point, separate out the data for one non-UI part of your code, such as the network management code, into a new actor.

25:50

Be aware that most of the classes in your app probably are not meant to be actors: UI-facing classes should stay on the main actor so they can interact directly with UI state. Model classes should generally be on the main actor with the UI, or kept non-Sendable, so that you don’t encourage lots of concurrent accesses to your model.

26:12

In this talk, we started with single-threaded code.

26:16

As our needs grew, we introduced asynchronous tasks to hide latency, concurrent code to run on a background thread, and actors to move data access off the main thread.

26:28

Over time, many apps will follow this same course.

26:33

Use profiling tools to identify when and what code to move off the main thread.

26:39

Swift concurrency will help you separate that code from the main thread correctly, improving the performance and responsiveness of your app.

26:48

We have some recommended build settings for your app to help with the introduction of concurrency. The Approachable Concurrency setting enables a suite of upcoming features that make easier to work with concurrency. We recommend that all projects adopt this setting.

27:04

For Swift modules that are primarily interacting with the UI, such as your main app module, we also recommend setting the default actor isolation to 'main actor'. This puts code on the main actor unless you’ve said otherwise. These settings work together to make single-threaded apps easier to write, and provide a more approachable path to introducing concurrency when you need it.

27:28

Swift concurrency is a tool designed to help improve your app.

27:31

Use it to introduce asynchronous or concurrent code when you find performance problems with your app. The Swift 6 migration guide can help answer more questions about concurrency and the road to data-race safety. And to see how the concepts in this talk apply in an example app, please watch our code-along companion talk. Thank you.

</Transcript>

## Code

3:20 - [Single-threaded program](https://developer.apple.com/videos/play/wwdc2025/268/?time=200)

```swift
var greeting = "Hello, World!"

func readArguments() { }

func greet() {
  print(greeting)
}

readArguments()
greet()
```


4:13 - [Data types in a the app](https://developer.apple.com/videos/play/wwdc2025/268/?time=253)

```swift
struct Image {
}

final class ImageModel {
  var imageCache: [URL: Image] = [:]
}

final class Library {
  static let shared: Library = Library()
}
```


4:57 - [Load and display a local image](https://developer.apple.com/videos/play/wwdc2025/268/?time=297)

```swift
import Foundation

class Image {
}

final class View {
  func displayImage(_ image: Image) {
  }
}

final class ImageModel {
  var imageCache: [URL: Image] = [:]
  let view = View()

  func fetchAndDisplayImage(url: URL) throws {
    let data = try Data(contentsOf: url)
    let image = decodeImage(data)
    view.displayImage(image)
  }

  func decodeImage(_ data: Data) -> Image {
    Image()
  }
}

final class Library {
  static let shared: Library = Library()
}
```


5:36 - [Fetch and display an image over the network](https://developer.apple.com/videos/play/wwdc2025/268/?time=336)

```swift
import Foundation

struct Image {
}

final class View {
  func displayImage(_ image: Image) {
  }
}

final class ImageModel {
  var imageCache: [URL: Image] = [:]
  let view = View()

  func fetchAndDisplayImage(url: URL) throws {
    let (data, _) = try URLSession.shared.data(from: url)
    let image = decodeImage(data)
    view.displayImage(image)
  }

  func decodeImage(_ data: Data) -> Image {
    Image()
  }
}

final class Library {
  static let shared: Library = Library()
}
```


6:10 - [Fetch and display image over the network asynchronously](https://developer.apple.com/videos/play/wwdc2025/268/?time=370)

```swift
import Foundation

class Image {
}

final class View {
  func displayImage(_ image: Image) {
  }
}

final class ImageModel {
  var imageCache: [URL: Image] = [:]
  let view = View()

  func fetchAndDisplayImage(url: URL) async throws {
    let (data, _) = try await URLSession.shared.data(from: url)
    let image = decodeImage(data)
    view.displayImage(image)
  }

  func decodeImage(_ data: Data) -> Image {
    Image()
  }
}

final class Library {
  static let shared: Library = Library()
}
```


7:31 - [Creating a task to perform asynchronous work](https://developer.apple.com/videos/play/wwdc2025/268/?time=451)

```swift
import Foundation

class Image {
}

final class View {
  func displayImage(_ image: Image) {
  }
}

final class ImageModel {
  var imageCache: [URL: Image] = [:]
  let view = View()
  var url: URL = URL("https://swift.org")!

  func onTapEvent() {
    Task {
      do {
	try await fetchAndDisplayImage(url: url)
      } catch let error {
        displayError(error)
      }
    }
  }

  func displayError(_ error: any Error) {
  }

  func fetchAndDisplayImage(url: URL) async throws {
  }
}

final class Library {
  static let shared: Library = Library()
}
```


9:15 - [Ordered operations in a task](https://developer.apple.com/videos/play/wwdc2025/268/?time=555)

```swift
import Foundation

class Image {
  func applyImageEffect() async { }
}

final class ImageModel {
  func displayImage(_ image: Image) {
  }

  func loadImage() async -> Image {
    Image()
  }
  
  func onButtonTap() {
    Task {
      let image = await loadImage()
      await image.applyImageEffect()
      displayImage(image)
    }
  }
}
```


9:38 - [Fetch and display image over the network asynchronously](https://developer.apple.com/videos/play/wwdc2025/268/?time=578)

```swift
import Foundation

class Image {
}

final class View {
  func displayImage(_ image: Image) {
  }
}

final class ImageModel {
  var imageCache: [URL: Image] = [:]
  let view = View()

  func fetchAndDisplayImage(url: URL) async throws {
    let (data, _) = try await URLSession.shared.data(from: url)
    let image = decodeImage(data)
    view.displayImage(image)
  }

  func decodeImage(_ data: Data) -> Image {
    Image()
  }
}
```


10:40 - [Fetch and display image over the network asynchronously](https://developer.apple.com/videos/play/wwdc2025/268/?time=640)

```swift
import Foundation

class Image {
}

final class View {
  func displayImage(_ image: Image) {
  }
}

final class ImageModel {
  var imageCache: [URL: Image] = [:]
  let view = View()

  func fetchAndDisplayImage(url: URL) async throws {
    let (data, _) = try await URLSession.shared.data(from: url)
    let image = decodeImage(data, at: url)
    view.displayImage(image)
  }

  func decodeImage(_ data: Data, at url: URL) -> Image {
    Image()
  }
}
```


11:11 - [Fetch over network asynchronously and decode concurrently](https://developer.apple.com/videos/play/wwdc2025/268/?time=671)

```swift
import Foundation

class Image {
}

final class View {
  func displayImage(_ image: Image) {
  }
}

final class ImageModel {
  var imageCache: [URL: Image] = [:]
  let view = View()

  func fetchAndDisplayImage(url: URL) async throws {
    let (data, _) = try await URLSession.shared.data(from: url)
    let image = await decodeImage(data, at: url)
    view.displayImage(image)
  }

  @concurrent
  func decodeImage(_ data: Data, at url: URL) async -> Image {
    Image()
  }
}
```


11:30 - [Implementation of decodeImage](https://developer.apple.com/videos/play/wwdc2025/268/?time=690)

```swift
final class View {
  func displayImage(_ image: Image) {
  }
}

final class ImageModel {
  var cachedImage: [URL: Image] = [:]
  let view = View()

  func fetchAndDisplayImage(url: URL) async throws {
    let (data, _) = try await URLSession.shared.data(from: url)
    let image = await decodeImage(data, at: url)
    view.displayImage(image)
  }

  @concurrent
  func decodeImage(_ data: Data, at url: URL) async -> Image {
    if let image = cachedImage[url] {
      return image
    }

    // decode image
    let image = Image()
    cachedImage[url] = image
    return image
  }
}
```


12:37 - [Correct implementation of fetchAndDisplayImage with caching and concurrency](https://developer.apple.com/videos/play/wwdc2025/268/?time=757)

```swift
import Foundation

class Image {
}

final class View {
  func displayImage(_ image: Image) {
  }
}

final class ImageModel {
  var cachedImage: [URL: Image] = [:]
  let view = View()

  func fetchAndDisplayImage(url: URL) async throws {
    if let image = cachedImage[url] {
      view.displayImage(image)
      return
    }

    let (data, _) = try await URLSession.shared.data(from: url)
    let image = await decodeImage(data)
    view.displayImage(image)
  }

  @concurrent
  func decodeImage(_ data: Data) async -> Image {
    // decode image
    Image()
  }
}
```


13:30 - [JSONDecoder API should be non isolated](https://developer.apple.com/videos/play/wwdc2025/268/?time=810)

```swift
// Foundation
import Foundation

nonisolated
public class JSONDecoder {
  public func decode<T: Decodable>(_ type: T.Type, from data: Data) -> T {
    fatalError("not implemented")
  }
}
```


15:18 - [Fetch over network asynchronously and decode concurrently](https://developer.apple.com/videos/play/wwdc2025/268/?time=918)

```swift
import Foundation

class Image {
}

final class View {
  func displayImage(_ image: Image) {
  }
}

final class ImageModel {
  var imageCache: [URL: Image] = [:]
  let view = View()

  func fetchAndDisplayImage(url: URL) async throws {
    let (data, _) = try await URLSession.shared.data(from: url)
    let image = await decodeImage(data, at: url)
    view.displayImage(image)
  }

  @concurrent
  func decodeImage(_ data: Data, at url: URL) async -> Image {
    Image()
  }
}
```


16:30 - [Example of value types](https://developer.apple.com/videos/play/wwdc2025/268/?time=990)

```swift
// Value types are common in Swift
import Foundation

struct Post {
  var author: String
  var title: String
  var date: Date
  var categories: [String]
}
```


16:56 - [Sendable value types](https://developer.apple.com/videos/play/wwdc2025/268/?time=1016)

```swift
import Foundation

// Value types are Sendable
extension URL: Sendable {}

// Collections of Sendable elements
extension Array: Sendable where Element: Sendable {}

// Structs and enums with Sendable storage
struct ImageRequest: Sendable {
  var url: URL
}

// Main-actor types are implicitly Sendable
@MainActor class ImageModel {}
```


17:25 - [Fetch over network asynchronously and decode concurrently](https://developer.apple.com/videos/play/wwdc2025/268/?time=1045)

```swift
import Foundation

class Image {
}

final class View {
  func displayImage(_ image: Image) {
  }
}

final class ImageModel {
  var imageCache: [URL: Image] = [:]
  let view = View()

  func fetchAndDisplayImage(url: URL) async throws {
    let (data, _) = try await URLSession.shared.data(from: url)
    let image = await self.decodeImage(data, at: url)
    view.displayImage(image)
  }

  @concurrent
  func decodeImage(_ data: Data, at url: URL) async -> Image {
    Image()
  }
}
```


18:34 - [MyImage class with reference semantics](https://developer.apple.com/videos/play/wwdc2025/268/?time=1114)

```swift
import Foundation

struct Color { }

nonisolated class MyImage {
  var width: Int
  var height: Int
  var pixels: [Color]
  var url: URL

  init() {
    width = 100
    height = 100
    pixels = []
    url = URL("https://swift.org")!
  }

  func scale(by factor: Double) {
  }
}

let image = MyImage()
let otherImage = image // refers to the same object as 'image'
image.scale(by: 0.5)   // also changes otherImage!
```


19:19 - [Concurrently scaling while displaying an image is a data race](https://developer.apple.com/videos/play/wwdc2025/268/?time=1159)

```swift
import Foundation

struct Color { }

nonisolated class MyImage {
  var width: Int
  var height: Int
  var pixels: [Color]
  var url: URL

  init() {
    width = 100
    height = 100
    pixels = []
    url = URL("https://swift.org")!
  }

  func scaleImage(by factor: Double) {
  }
}

final class View {
  func displayImage(_ image: MyImage) {
  }
}

final class ImageModel {
  var cachedImage: [URL: MyImage] = [:]
  let view = View()

  // Slide content start
  func scaleAndDisplay(imageName: String) {
    let image = loadImage(imageName)
    Task { @concurrent in
      image.scaleImage(by: 0.5)
    }

    view.displayImage(image)
  }
  // Slide content end

  func loadImage(_ imageName: String) -> MyImage {
    // decode image
    return MyImage()
  }
}
```


20:38 - [Scaling and then displaying an image eliminates the data race](https://developer.apple.com/videos/play/wwdc2025/268/?time=1238)

```swift
import Foundation

struct Color { }

nonisolated class MyImage {
  var width: Int
  var height: Int
  var pixels: [Color]
  var url: URL

  init() {
    width = 100
    height = 100
    pixels = []
    url = URL("https://swift.org")!
  }

  func scaleImage(by factor: Double) {
  }
}

final class View {
  func displayImage(_ image: MyImage) {
  }
}

final class ImageModel {
  var cachedImage: [URL: MyImage] = [:]
  let view = View()

  func scaleAndDisplay(imageName: String) {
    Task { @concurrent in
      let image = loadImage(imageName)
      image.scaleImage(by: 0.5)
      await view.displayImage(image)
    }
  }

  nonisolated
  func loadImage(_ imageName: String) -> MyImage {
    // decode image
    return MyImage()
  }
}
```


20:54 - [Scaling and then displaying an image within a concurrent asynchronous function](https://developer.apple.com/videos/play/wwdc2025/268/?time=1254)

```swift
import Foundation

struct Color { }

nonisolated class MyImage {
  var width: Int
  var height: Int
  var pixels: [Color]
  var url: URL

  init() {
    width = 100
    height = 100
    pixels = []
    url = URL("https://swift.org")!
  }

  func scaleImage(by factor: Double) {
  }
}

final class View {
  func displayImage(_ image: MyImage) {
  }
}

final class ImageModel {
  var cachedImage: [URL: MyImage] = [:]
  let view = View()

  @concurrent
  func scaleAndDisplay(imageName: String) async {
    let image = loadImage(imageName)
    image.scaleImage(by: 0.5)
    await view.displayImage(image)
  }

  nonisolated
  func loadImage(_ imageName: String) -> MyImage {
    // decode image
    return MyImage()
  }
}
```


21:11 - [Scaling, then displaying and concurrently modifying an image is a data race](https://developer.apple.com/videos/play/wwdc2025/268/?time=1271)

```swift
import Foundation

struct Color { }

nonisolated class MyImage {
  var width: Int
  var height: Int
  var pixels: [Color]
  var url: URL

  init() {
    width = 100
    height = 100
    pixels = []
    url = URL("https://swift.org")!
  }

  func scaleImage(by factor: Double) {
  }

  func applyAnotherEffect() {
  }
}

final class View {
  func displayImage(_ image: MyImage) {
  }
}

final class ImageModel {
  var cachedImage: [URL: MyImage] = [:]
  let view = View()

  // Slide content start
  @concurrent
  func scaleAndDisplay(imageName: String) async {
    let image = loadImage(imageName)
    image.scaleImage(by: 0.5)
    await view.displayImage(image)
    image.applyAnotherEffect()
  }
  // Slide content end

  nonisolated
  func loadImage(_ imageName: String) -> MyImage {
    // decode image
    return MyImage()
  }
}
```


21:20 - [Applying image transforms before sending to the main actor](https://developer.apple.com/videos/play/wwdc2025/268/?time=1280)

```swift
import Foundation

struct Color { }

nonisolated class MyImage {
  var width: Int
  var height: Int
  var pixels: [Color]
  var url: URL

  init() {
    width = 100
    height = 100
    pixels = []
    url = URL("https://swift.org")!
  }

  func scaleImage(by factor: Double) {
  }

  func applyAnotherEffect() {
  }
}

final class View {
  func displayImage(_ image: MyImage) {
  }
}

final class ImageModel {
  var cachedImage: [URL: MyImage] = [:]
  let view = View()

  // Slide content start
  @concurrent
  func scaleAndDisplay(imageName: String) async {
    let image = loadImage(imageName)
    image.scaleImage(by: 0.5)
    image.applyAnotherEffect()
    await view.displayImage(image)
  }
  // Slide content end

  nonisolated
  func loadImage(_ imageName: String) -> MyImage {
    // decode image
    return MyImage()
  }
}
```


22:06 - [Closures create shared state](https://developer.apple.com/videos/play/wwdc2025/268/?time=1326)

```swift
import Foundation

struct Color { }

nonisolated class MyImage {
  var width: Int
  var height: Int
  var pixels: [Color]
  var url: URL

  init() {
    width = 100
    height = 100
    pixels = []
    url = URL("https://swift.org")!
  }

  func scale(by factor: Double) {
  }

  func applyAnotherEffect() {
  }
}

final class View {
  func displayImage(_ image: MyImage) {
  }
}

final class ImageModel {
  var cachedImage: [URL: MyImage] = [:]
  let view = View()

  // Slide content start
  @concurrent
  func scaleAndDisplay(imageName: String) async throws {
    let image = loadImage(imageName)
    try await perform(afterDelay: 0.1) {
      image.scale(by: 0.5)
    }
    await view.displayImage(image)
  }

  nonisolated
  func perform(afterDelay delay: Double, body: () -> Void) async throws {
    try await Task.sleep(for: .seconds(delay))
    body()
  }
  // Slide content end
  
  nonisolated
  func loadImage(_ imageName: String) -> MyImage {
    // decode image
    return MyImage()
  }
}pet.
```


23:47 - [Network manager class](https://developer.apple.com/videos/play/wwdc2025/268/?time=1427)

```swift
import Foundation

nonisolated class MyImage { }

struct Connection {
  func data(from url: URL) async throws -> Data { Data() }
}

final class NetworkManager {
  var openConnections: [URL: Connection] = [:]

  func openConnection(for url: URL) async -> Connection {
    if let connection = openConnections[url] {
      return connection
    }

    let connection = Connection()
    openConnections[url] = connection
    return connection
  }

  func closeConnection(_ connection: Connection, for url: URL) async {
    openConnections.removeValue(forKey: url)
  }

}

final class View {
  func displayImage(_ image: MyImage) {
  }
}

final class ImageModel {
  var cachedImage: [URL: MyImage] = [:]
  let view = View()
  let networkManager: NetworkManager = NetworkManager()

  func fetchAndDisplayImage(url: URL) async throws {
    if let image = cachedImage[url] {
      view.displayImage(image)
      return
    }

    let connection = await networkManager.openConnection(for: url)
    let data = try await connection.data(from: url)
    await networkManager.closeConnection(connection, for: url)

    let image = await decodeImage(data)
    view.displayImage(image)
  }

  @concurrent
  func decodeImage(_ data: Data) async -> MyImage {
    // decode image
    return MyImage()
  }
}
```


25:10 - [Network manager as an actor](https://developer.apple.com/videos/play/wwdc2025/268/?time=1510)

```swift
import Foundation

nonisolated class MyImage { }

struct Connection {
  func data(from url: URL) async throws -> Data { Data() }
}

actor NetworkManager {
  var openConnections: [URL: Connection] = [:]

  func openConnection(for url: URL) async -> Connection {
    if let connection = openConnections[url] {
      return connection
    }

    let connection = Connection()
    openConnections[url] = connection
    return connection
  }

  func closeConnection(_ connection: Connection, for url: URL) async {
    openConnections.removeValue(forKey: url)
  }

}

final class View {
  func displayImage(_ image: MyImage) {
  }
}

final class ImageModel {
  var cachedImage: [URL: MyImage] = [:]
  let view = View()
  let networkManager: NetworkManager = NetworkManager()

  func fetchAndDisplayImage(url: URL) async throws {
    if let image = cachedImage[url] {
      view.displayImage(image)
      return
    }

    let connection = await networkManager.openConnection(for: url)
    let data = try await connection.data(from: url)
    await networkManager.closeConnection(connection, for: url)

    let image = await decodeImage(data)
    view.displayImage(image)
  }

  @concurrent
  func decodeImage(_ data: Data) async -> MyImage {
    // decode image
    return MyImage()
  }
}
```

## Summary

0:00 - Introduction
Swift concurrency enables apps to perform multiple tasks simultaneously, improving responsiveness and offloading computation to the background. Swift's concurrency model makes concurrent code easier to write correctly by making the introduction of concurrency explicit, identifying data that is shared across concurrent tasks, and identifying potential data races at compile-time. Apps start by running all code on the main thread. As complexity increases, asynchronous tasks can be introduced for high-latency operations like network access. Background threads can be used for more computationally intensive tasks. Swift provides tools like actors and tasks to express these concurrent operations.

3:17 - Single-threaded code
In Swift, single-threaded code runs on the main thread, which is isolated to the main actor. There is no concurrency on the main actor because there is only one main thread that can run it. Data or code can be specified on the main actor using the @MainActor notation. Swift will ensure that main-actor code only ever runs on the main thread, and main-actor data is only ever accessed from there. We say that such code is isolated to the main actor. By default, Swift protects main thread code using the main actor, ensuring shared state can be accessed freely. Protecting code with the main actor by default is driven by a build setting. Use this primarily for your main app module and any modules that are focused on UI interactions.

6:00 - Asynchronous tasks
Swift concurrency uses async and await to make functions non-blocking, allowing other work to run while waiting for data like network requests. This prevents hangs and improves UI responsiveness by breaking functions into parts that run before and after the awaited event.

7:24 - Interleaving
Asynchronous functions run in a task, executing independently of other tasks. A single thread can alternate between running independent tasks as they become ready, using 'interleaving'. This improves performance by avoiding idle time and makes efficient use of system resources. Multiple asynchronous tasks are effective when performing many independent operations at the same time. When performing work in a specific order, use a single task. Using asynchronous tasks in a single thread is often sufficient. If the main thread becomes too burdened, profiling tools such as Instruments can help identify bottlenecks for optimization before introducing concurrency.

10:22 - Introducing concurrency
Concurrency allows parts of code to run on a background thread in parallel with the main thread, getting work done faster by using more of the CPU cores in your system. To improve performance, the example introduces concurrency to run code on background threads, freeing up the main thread.

11:07 - Concurrent functions
By applying the @concurrent attribute, Swift is instructed to run a function in the background. The Swift compiler highlights data access on the main actor to safely introduce concurrency. One best practice, to ensure work happens synchronously, is to move the main actor code into a caller that always runs on the main thread.

13:10 - Nonisolated code
An @concurrent function will always switch off of an actor to execute. The 'nonisolated' keyword allows clients to choose where to run code — main or background. For general-purpose libraries, it is recommended to provide a nonisolated API and let clients decide whether they want to offload work. For more concurrency options, see "Beyond the basics of structured concurrency" from WWDC23.

14:13 - Concurrent thread pool
When offloading work to the background, the system manages scheduling the work on threads in a concurrent thread pool. Smaller devices may have fewer threads in the pool, while larger systems with more cores will have more. Tasks are assigned to available threads in the pool, which may change as tasks suspend and resume, optimizing resource usage.

14:58 - Sharing data
When working with concurrency and sharing data between different threads, there is a risk of introducing runtime bugs due to accessing shared mutable state. Swift's design helps mitigate this issue by providing compile-time checks, enabling developers to write concurrent code more confidently.

15:49 - Value types
The use of value types provides a significant advantage when dealing with concurrent tasks. When a value type is copied into a background thread, it creates an independent copy, ensuring that any changes made on the main thread do not impact the background thread's value. This independence makes value types safe to share between threads. Value types that conform to the 'Sendable' protocol are always safe to share concurrently. Main actor types are implicitly Sendable.

17:16 - Actor-isolated types
Swift actors safeguard non-Sendable state by ensuring single-task access. When values are sent to and from actors, the Swift compiler verifies safety.

18:30 - Classes
In Swift, classes are reference types, meaning changes to an object through one variable are visible through all variables pointing to that object. When multiple threads access and modify the same non-Sendable object concurrently, it can result in data races, crashes, or glitches. Swift's concurrency system prevents this at compile-time by enforcing that only Sendable types are shared between actors and tasks. To avoid data races, it is crucial to ensure that mutable objects are not shared concurrently. Complete modifications to objects before sending them to another task or actor for display or processing. If an object needs to be modified on a background thread, make it 'nonisolated' but not Sendable. Closures with shared state can also be safe as long as they are not called concurrently.

23:18 - Actors
As an app grows, the main actor can manage a lot of state, leading to frequent context switching. Introducing actors can mitigate this. Actors isolate their data, allowing only one thread to access it at a time, preventing contention. By moving state from the main actor to dedicated actors, more code can execute concurrently on background threads. This frees up the main thread to maintain responsiveness. UI-facing classes and model classes generally need to remain on the main actor or be kept as non-Sendable.

26:12 - Wrap-up
Apps often start single-threaded and evolve to use asynchronous tasks, concurrent code, and actors for better performance. Swift concurrency aids in this transition, making it easier to move code off the main thread and improve responsiveness. Profiling tools like Instruments help identify when and what code needs to be moved off the main thread. Use the recommended build settings to help simplify introducing concurrency, and the Approachable Concurrency setting to enable a suite of upcoming features to make working with concurrency easier.