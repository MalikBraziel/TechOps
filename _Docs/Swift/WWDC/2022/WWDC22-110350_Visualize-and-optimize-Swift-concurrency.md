---
URL: https://developer.apple.com/videos/play/wwdc2022/110350/
Title: Visualize and optimize Swift concurrency
Topics: Swift Concurrency
Date_Published: 2022-06-06
Swift_Version_At_Publish: Swift 5.7
---

# Visualize and optimize Swift concurrency

Learn how you can optimize your app with the Swift Concurrency template in Instruments. We'll discuss common performance issues and show you how to use Instruments to find and resolve these problems. Learn how you can keep your UI responsive, maximize parallel performance, and analyze Swift concurrency activity within your app.

To get the most out of this session, we recommend familiarity with Swift concurrency (including tasks and actors).

### Chapters

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2022/110350/?time=0)
- 1:29 - [Swift Concurrency recap](https://developer.apple.com/videos/play/wwdc2022/110350/?time=89)
- 2:34 - [Common performance issues](https://developer.apple.com/videos/play/wwdc2022/110350/?time=154)
- 2:54 - [Main Actor blocking](https://developer.apple.com/videos/play/wwdc2022/110350/?time=174)
- 7:52 - [Swift Concurrency template in Instruments](https://developer.apple.com/videos/play/wwdc2022/110350/?time=472)
- 7:56 - [Swift Tasks instrument](https://developer.apple.com/videos/play/wwdc2022/110350/?time=476)
- 8:08 - [Swift Actors instrument](https://developer.apple.com/videos/play/wwdc2022/110350/?time=488)
- 8:17 - [Task Forest view](https://developer.apple.com/videos/play/wwdc2022/110350/?time=497)
- 8:24 - [Task Summary view](https://developer.apple.com/videos/play/wwdc2022/110350/?time=504)
- 9:03 - [Pinning tracks](https://developer.apple.com/videos/play/wwdc2022/110350/?time=543)
- 9:23 - [Narrative view](https://developer.apple.com/videos/play/wwdc2022/110350/?time=563)
- 10:03 - [Profiling with Instruments](https://developer.apple.com/videos/play/wwdc2022/110350/?time=603)
- 10:24 - [CompressionState class](https://developer.apple.com/videos/play/wwdc2022/110350/?time=624)
- 11:49 - [CompressionState class using ParallelCompressor actor](https://developer.apple.com/videos/play/wwdc2022/110350/?time=709)
- 11:53 - [Actor contention](https://developer.apple.com/videos/play/wwdc2022/110350/?time=713)
- 12:04 - [Parallel computation](https://developer.apple.com/videos/play/wwdc2022/110350/?time=724)
- 12:27 - [Minimizing actor isolation](https://developer.apple.com/videos/play/wwdc2022/110350/?time=747)
- 12:43 - [Detached tasks](https://developer.apple.com/videos/play/wwdc2022/110350/?time=763)
- 12:55 - [Optimized code](https://developer.apple.com/videos/play/wwdc2022/110350/?time=775)
- 14:11 - [Thread pool exhaustion](https://developer.apple.com/videos/play/wwdc2022/110350/?time=851)
- 15:07 - [Continuation misuse](https://developer.apple.com/videos/play/wwdc2022/110350/?time=907)
- 15:23 - [Checked continuations](https://developer.apple.com/videos/play/wwdc2022/110350/?time=923)
- 15:42 - [Unsafe continuations](https://developer.apple.com/videos/play/wwdc2022/110350/?time=942)
- 16:22 - [Best practices](https://developer.apple.com/videos/play/wwdc2022/110350/?time=982)
- 17:23 - [Conclusion](https://developer.apple.com/videos/play/wwdc2022/110350/?time=1043)
- 17:47 - [Resources](https://developer.apple.com/videos/play/wwdc2022/110350/?time=1067)
- 17:53 - [Related sessions](https://developer.apple.com/videos/play/wwdc2022/110350/?time=1073)
- 18:29 - [Q&A](https://developer.apple.com/videos/play/wwdc2022/110350/?time=1109)
- 18:40 - [Wrap up](https://developer.apple.com/videos/play/wwdc2022/110350/?time=1120)
- 18:56 - [Credits](https://developer.apple.com/videos/play/wwdc2022/110350/?time=1136)
- 19:05 - [End](https://developer.apple.com/videos/play/wwdc2022/110350/?time=1145)

### Resources

- [Concurrency](https://developer.apple.com/documentation/swift/concurrency)
- [The Swift Programming Language: Concurrency](https://docs.swift.org/swift-book/LanguageGuide/Concurrency.html)
- [HD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2022/110350/6/0c2c6210-4f59-409a-ba23-36a7895563d3/downloads/wwdc2022-110350_hd.mp4?dl=1)
- [SD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2022/110350/6/0c2c6210-4f59-409a-ba23-36a7895563d3/downloads/wwdc2022-110350_sd.mp4?dl=1)

### Related Videos

#### WWDC23

- [Analyze hangs with Instruments](https://developer.apple.com/videos/play/wwdc2023/10158/)
- [Beyond the basics of structured concurrency](https://developer.apple.com/videos/play/wwdc2023/10170/)

#### WWDC22

- [Eliminate data races using Swift Concurrency](https://developer.apple.com/videos/play/wwdc2022/110350/)
- [Track down hangs with Xcode and on-device detection](https://developer.apple.com/videos/play/wwdc2022/10056/)
- [What's new in Swift](https://developer.apple.com/videos/play/wwdc2022/110351/)
- [What's new in UIKit](https://developer.apple.com/videos/play/wwdc2022/10056/)

#### WWDC21

- [Explore structured concurrency in Swift](https://developer.apple.com/videos/play/wwdc2021/10134/)
- [Meet async/await in Swift](https://developer.apple.com/videos/play/wwdc2021/10132/)
- [Protect mutable state with Swift actors](https://developer.apple.com/videos/play/wwdc2021/10133/)
- [Swift concurrency: Behind the scenes](https://developer.apple.com/videos/play/wwdc2021/10254/)
- [Swift concurrency: Update a sample app](https://developer.apple.com/videos/play/wwdc2021/10133/)

## Transcript

- [0:07] Welcome to Visualize and Optimize Swift Concurrency. My name is Mike, and I work on the Swift runtime library. Hi, I'm Harjas, and I work on Instruments. Together, we're going to discuss ways to better understand your Swift Concurrency code and make it go faster, including a new visualization tool available in Instruments 14. Let's start off with a really quick recap of the various parts of Swift Concurrency and how they work together, to make sure you're up to speed. After that, we'll demo the new concurrency instrument. We'll show you how we use it to solve some real performance issues with an app using Swift Concurrency. Finally, we'll discuss the potential problems of thread pool exhaustion and continuation misuse and how to avoid them. Last year, we introduced Swift Concurrency. This was a new language feature that includes async/await, structured concurrency, and Actors. We've been pleased to see a great deal of adoption of these features since then, both inside and outside Apple. Swift concurrency adds several new features to the language which work together to make concurrent programming easier and safer. Async/await are basic syntactic building blocks for concurrent code. They allow you to create and call functions that can suspend their work in the middle of execution, then resume that work later, without blocking an execution thread.

- [1:29] There are a few common problems that can arise when writing code using Swift concurrency that can cause poor performance or bugs. Main Actor blocking can cause your app to hang. Actor contention and thread pool exhaustion hurt performance by reducing parallel execution. Continuation misuse causes leaks or crashes. The new Swift Concurrency instrument can help you discover and fix these problems. Let's take a look at each of these, starting with main Actor blocking. Main Actor blocking occurs when a long-running task runs on the main Actor. The main Actor is a special Actor which executes all of its work on the main thread. UI work must be done on the main thread, and the main Actor allows you to integrate UI code into Swift Concurrency. However, because the main thread is so important for UI, it needs to be available and can't be occupied by a long-running unit of work. When this happens, your app appears to lock up and becomes unresponsive. Code running on the main Actor must finish quickly, and either complete its work or move computation off of the main Actor and into the background. Work can be moved into the background by putting it in a normal Actor or in a detached task. Small units of work can be executed on the main Actor to update UI or perform other tasks that must be done on the main thread.

- [7:52] To investigate this performance problem, we can use the new Swift Concurrency template in Instruments. The Swift Tasks and Swift Actors instruments provide a full suite of tools to help you visualize and optimize your concurrency code. When you're just starting to investigate a performance problem you should first take a look at the top-level statistics provided to you by the Swift Tasks instrument. The first of these is Running Tasks, which show you how many tasks are executing simultaneously. Next, we have Alive Tasks, which show how many tasks are present at a given point in time. And finally, Total Tasks; graph the total number of tasks that have been created up until that point in time. When you're attempting to reduce your application memory footprint, you should take a close look at the Alive and Total Tasks statistics. The combination of all of these statistics give you a good picture of how well your code is parallelizing and how many resources you are consuming. One of the many detail views for this instrument is the Task Forest; shown in the bottom half of this window, it provides a graphical representation of the parent-child relationships between Tasks in structured concurrency code. Next, we have our Task Summary view. This shows how much time each Task spends in different states. We have super-charged the view by allowing you to right-click on a Task to be able to pin a Track containing all the information about the selected Task to the timeline. This allows you to quickly find and learn about Tasks of interest that may be running for a very long time or stuck waiting to get access to an Actor. Once you pin a Swift Task to the timeline, you get four key features. First, is the track that shows you what state your Swift Task is in. Second, is the Task creation backtrace in the extended detail view. Third, is the narrative view that provides more context about the state a Swift Task is in. Such as, if it's waiting on a Task, it will inform you which Task you are waiting on. Lastly, you have access to the same pin action in the narrative view as you did in the summary view. So, you can pin a child Task, a thread, or even a Swift Actor to the timeline. This narrative view will be instrumental in finding how a Swift Task is related to your other concurrency primitives and the CPU.

- [11:49] The compress file function is located within the CompressionState class. The entire CompressionState class is annotated to run on the @MainActor. This explains why the Task also ran on the Main Thread. We need this entire class to be on the MainActor because the @Published property here must only be updated from the Main Thread, otherwise, we could run into runtime issues. So, instead we could try to convert this class into its own Actor. However, the compiler will tell us that we can't do this because essentially we would be saying that this shared mutable state needs to be protected by two different Actors. But that does give us a hint for what the real solution is. We have two different pieces of mutable state here within this class. One piece of state, the 'files' property, needs to be isolated to the MainActor because it is observed by SwiftUI. But access to the other piece of state, the logs, needs to be protected from concurrent access, but which thread accesses logs at any given point doesn't matter. Thus, it doesn't actually need to be on the Main Actor. We still want to protect it from concurrent access, though, so we wrap it in its own Actor. All we need now is add a way for Tasks to hop between the two as needed. We can create a new Actor and call it ParallelCompressor.

- [17:23] By doing this, we can have the detached task only on an Actor for as long as needed to update the relevant mutable state. So now the compress function can be executed freely, on any thread in the thread pool, until it needs to access Actor-protected state. For example, when it needs to access the 'files' property, it'll move onto the Main Actor. But as soon as it's done there, it moves into the "sea of concurrency" again, until it needs to access the logs property, for which it moves on to the ParallelCompressor Actor. But again, as soon as it's done there, it leaves the Actor again to be executed on the thread pool. But of course, we don't have just one task doing compression work; we have many. And by not being constrained to an Actor, they can all be executed concurrently, only limited by the number of threads.

- [18:29] Thread pool exhaustion can hurt performance or even deadlock an application. Swift concurrency requires tasks to make forward progress when they're running. When a task waits for something, it normally does so by suspending. However, it's possible for code within a task to perform a blocking call, such as blocking file or network IO, or acquiring locks, without suspending. This breaks the requirement for tasks to make forward progress. When this happens, the task continues to occupy the thread where it's executing, but it isn't actually using a CPU core. Because the pool of threads is limited and some of them are blocked, the concurrency runtime is unable to fully use all CPU cores. This reduces the amount of parallel computation that can be done and the maximum performance of your app. In extreme cases, when the entire thread pool is occupied by blocked tasks, and they're waiting on something that requires a new task to run on the thread pool, the concurrency runtime can deadlock. Be sure to avoid blocking calls in tasks. File and network IO must be performed using async APIs. Avoid waiting on condition variables or semaphores. Fine-grained, briefly-held locks are acceptable if necessary, but avoid locks that have a lot of contention or are held for long periods of time. If you have code that needs to do these things, move that code outside of the concurrency thread pool–for example, by running it on a Dispatch queue–and bridge it to the concurrency world using continuations.

- [19:05] Whenever possible, use async APIs for blocking operations to keep the system operating smoothly. When you're using continuations, you must be careful to use them correctly. Continuations are the bridge between Swift concurrency and other forms of async code. A continuation suspends the current task and provides a callback which resumes the task when called. This can then be used with callback-based async APIs. From the perspective of Swift concurrency, the task suspends, and then it resumes when the continuation is resumed. From the perspective of the callback-based async API, the work begins, and then the callback is called when the work completes. The Swift Concurrency instrument knows about continuations and will mark the time interval accordingly, showing you that the task was waiting on a continuation to be called. Continuation callbacks have a special requirement: they must be called exactly once, no more, no less. This is a common requirement in callback-based APIs, but it tends to be an informal one and is not enforced by the language, and oversights are common. Swift concurrency makes this a hard requirement. If the callback is called twice, the program will crash or misbehave. If the callback is never called, the task will leak. In this code snippet we use withCheckedContinuation to get a continuation. We then invoke a callback-based API. In the callback, we resume the continuation. This meets the requirement of calling it exactly once. It's important to be careful when the code is more complex. On the left, we've modified the callback to only resume the continuation on success. This is a bug. On failure, the continuation will not be resumed, and the task will be suspended forever. On the right, we're resuming the continuation twice. This is also a bug, and the app will misbehave or crash. Both of these snippets violate the requirement to resume the continuation exactly once.

- [2:34] There are a few common problems that can arise when writing code using Swift concurrency that can cause poor performance or bugs. Main Actor blocking can cause your app to hang. Actor contention and thread pool exhaustion hurt performance by reducing parallel execution. Continuation misuse causes leaks or crashes. The new Swift Concurrency instrument can help you discover and fix these problems. Let's take a look at each of these, starting with main Actor blocking. Main Actor blocking occurs when a long-running task runs on the main Actor. The main Actor is a special Actor which executes all of its work on the main thread. UI work must be done on the main thread, and the main Actor allows you to integrate UI code into Swift Concurrency. However, because the main thread is so important for UI, it needs to be available and can't be occupied by a long-running unit of work. When this happens, your app appears to lock up and becomes unresponsive. Code running on the main Actor must finish quickly, and either complete its work or move computation off of the main Actor and into the background. Work can be moved into the background by putting it in a normal Actor or in a detached task. Small units of work can be executed on the main Actor to update UI or perform other tasks that must be done on the main thread.

- [7:52] To investigate this performance problem, we can use the new Swift Concurrency template in Instruments. The Swift Tasks and Swift Actors instruments provide a full suite of tools to help you visualize and optimize your concurrency code. When you're just starting to investigate a performance problem you should first take a look at the top-level statistics provided to you by the Swift Tasks instrument. The first of these is Running Tasks, which show you how many tasks are executing simultaneously. Next, we have Alive Tasks, which show how many tasks are present at a given point in time. And finally, Total Tasks; graph the total number of tasks that have been created up until that point in time. When you're attempting to reduce your application memory footprint, you should take a close look at the Alive and Total Tasks statistics. The combination of all of these statistics give you a good picture of how well your code is parallelizing and how many resources you are consuming. One of the many detail views for this instrument is the Task Forest; shown in the bottom half of this window, it provides a graphical representation of the parent-child relationships between Tasks in structured concurrency code. Next, we have our Task Summary view. This shows how much time each Task spends in different states. We have super-charged the view by allowing you to right-click on a Task to be able to pin a Track containing all the information about the selected Task to the timeline. This allows you to quickly find and learn about Tasks of interest that may be running for a very long time or stuck waiting to get access to an Actor. Once you pin a Swift Task to the timeline, you get four key features. First, is the track that shows you what state your Swift Task is in. Second, is the Task creation backtrace in the extended detail view. Third, is the narrative view that provides more context about the state a Swift Task is in. Such as, if it's waiting on a Task, it will inform you which Task you are waiting on. Lastly, you have access to the same pin action in the narrative view as you did in the summary view. So, you can pin a child Task, a thread, or even a Swift Actor to the timeline. This narrative view will be instrumental in finding how a Swift Task is related to your other concurrency primitives and the CPU.

- [11:49] The compress file function is located within the CompressionState class. The entire CompressionState class is annotated to run on the @MainActor. This explains why the Task also ran on the Main Thread. We need this entire class to be on the MainActor because the @Published property here must only be updated from the Main Thread, otherwise, we could run into runtime issues. So, instead we could try to convert this class into its own Actor. However, the compiler will tell us that we can't do this because essentially we would be saying that this shared mutable state needs to be protected by two different Actors. But that does give us a hint for what the real solution is. We have two different pieces of mutable state here within this class. One piece of state, the 'files' property, needs to be isolated to the MainActor because it is observed by SwiftUI. But access to the other piece of state, the logs, needs to be protected from concurrent access, but which thread accesses logs at any given point doesn't matter. Thus, it doesn't actually need to be on the Main Actor. We still want to protect it from concurrent access, though, so we wrap it in its own Actor. All we need now is add a way for Tasks to hop between the two as needed. We can create a new Actor and call it ParallelCompressor.

- [14:11] By doing this, we can have the detached task only on an Actor for as long as needed to update the relevant mutable state. So now the compress function can be executed freely, on any thread in the thread pool, until it needs to access Actor-protected state. For example, when it needs to access the 'files' property, it'll move onto the Main Actor. But as soon as it's done there, it moves into the "sea of concurrency" again, until it needs to access the logs property, for which it moves on to the ParallelCompressor Actor. But again, as soon as it's done there, it leaves the Actor again to be executed on the thread pool. But of course, we don't have just one task doing compression work; we have many. And by not being constrained to an Actor, they can all be executed concurrently, only limited by the number of threads.

- [17:23] The app is able to compress all the files simultaneously and the UI remains responsive. To verify our improvements, we can check the Swift Actors instrument. Looking at the ParallelCompressor Actor, most of the work executed on the Actor is only for a short amount of time and the queue size never gets out of hand. To recap, we used the Instrument to Isolate the cause of a UI hang, we restructured our concurrency code for better parallelism, and verified performance improvements using data. Now Mike is gonna tell us about some other potential performance issues.

- [18:29] Thread pool exhaustion can hurt performance or even deadlock an application. Swift concurrency requires tasks to make forward progress when they're running. When a task waits for something, it normally does so by suspending. However, it's possible for code within a task to perform a blocking call, such as blocking file or network IO, or acquiring locks, without suspending. This breaks the requirement for tasks to make forward progress. When this happens, the task continues to occupy the thread where it's executing, but it isn't actually using a CPU core. Because the pool of threads is limited and some of them are blocked, the concurrency runtime is unable to fully use all CPU cores. This reduces the amount of parallel computation that can be done and the maximum performance of your app. In extreme cases, when the entire thread pool is occupied by blocked tasks, and they're waiting on something that requires a new task to run on the thread pool, the concurrency runtime can deadlock. Be sure to avoid blocking calls in tasks. File and network IO must be performed using async APIs. Avoid waiting on condition variables or semaphores. Fine-grained, briefly-held locks are acceptable if necessary, but avoid locks that have a lot of contention or are held for long periods of time. If you have code that needs to do these things, move that code outside of the concurrency thread pool–for example, by running it on a Dispatch queue–and bridge it to the concurrency world using continuations.

- [19:05] Whenever possible, use async APIs for blocking operations to keep the system operating smoothly. When you're using continuations, you must be careful to use them correctly. Continuations are the bridge between Swift concurrency and other forms of async code. A continuation suspends the current task and provides a callback which resumes the task when called. This can then be used with callback-based async APIs. From the perspective of Swift concurrency, the task suspends, and then it resumes when the continuation is resumed. From the perspective of the callback-based async API, the work begins, and then the callback is called when the work completes. The Swift Concurrency instrument knows about continuations and will mark the time interval accordingly, showing you that the task was waiting on a continuation to be called. Continuation callbacks have a special requirement: they must be called exactly once, no more, no less. This is a common requirement in callback-based APIs, but it tends to be an informal one and is not enforced by the language, and oversights are common. Swift concurrency makes this a hard requirement. If the callback is called twice, the program will crash or misbehave. If the callback is never called, the task will leak. In this code snippet we use withCheckedContinuation to get a continuation. We then invoke a callback-based API. In the callback, we resume the continuation. This meets the requirement of calling it exactly once. It's important to be careful when the code is more complex. On the left, we've modified the callback to only resume the continuation on success. This is a bug. On failure, the continuation will not be resumed, and the task will be suspended forever. On the right, we're resuming the continuation twice. This is also a bug, and the app will misbehave or crash. Both of these snippets violate the requirement to resume the continuation exactly once. Two kinds of continuations are available: checked and unsafe. Always use the withCheckedContinuation API for continuations unless performance is absolutely critical. Checked continuations automatically detect misuse and flag an error. When a checked continuation is called twice, the continuation traps. When the continuation is never called at all, a message is printed to the console when the continuation is destroyed warning you that the continuation leaked. The Swift Concurrency instrument will show the corresponding task stuck indefinitely in the continuation state. There is much more to look into for the new Swift Concurrency template in Instruments. You can get graphic visualization of structured concurrency, view task creation calltrees, and inspect the exact assembly instructions to get a full picture of the Swift Concurrency runtime. To learn more about how Swift Concurrency works under the hood, watch last year's session on "Swift Concurrency: Behind the Scenes." And to learn more about data races, watch "Eliminate data races using Swift Concurrency." Thanks for watching! And have fun debugging your concurrency code.

## Code

### CompressionState class

```swift
@MainActor
class CompressionState: ObservableObject {
    @Published var files: [FileStatus] = []
    var logs: [String] = []
    
    func update(url: URL, progress: Double) {
        if let loc = files.firstIndex(where: {$0.url == url}) {
            files[loc].progress = progress
        }
    }
    
    func update(url: URL, uncompressedSize: Int) {
        if let loc = files.firstIndex(where: {$0.url == url}) {
            files[loc].uncompressedSize = uncompressedSize
        }
    }
    
    func update(url: URL, compressedSize: Int) {
        if let loc = files.firstIndex(where: {$0.url == url}) {
            files[loc].compressedSize = compressedSize
        }
    }
    
    func compressAllFiles() {
        for file in files {
            Task {
                let compressedData = compressFile(url: file.url)
                await save(compressedData, to: file.url)
            }
        }
    }
    
    func compressFile(url: URL) -> Data {
        log(update: "Starting for \(url)")
        let compressedData = CompressionUtils.compressDataInFile(at: url) { uncompressedSize in
            update(url: url, uncompressedSize: uncompressedSize)
        } progressNotification: { progress in
            update(url: url, progress: progress)
            log(update: "Progress for \(url): \(progress)")
        } finalNotificaton: { compressedSize in
            update(url: url, compressedSize: compressedSize)
        }
        log(update: "Ending for \(url)")
        return compressedData
    }
    
    func log(update: String) {
        logs.append(update)
    }
}
```

### CompressionState class using ParallelCompressor actor

```swift
actor ParallelCompressor {
    var logs: [String] = []
    unowned let status: CompressionState
    
    init(status: CompressionState) {
        self.status = status
    }
    
    func compressFile(url: URL) -> Data {
        log(update: "Starting for \(url)")
        let compressedData = CompressionUtils.compressDataInFile(at: url) { uncompressedSize in
            Task { @MainActor in
                status.update(url: url, uncompressedSize: uncompressedSize)
            }
        } progressNotification: { progress in
            Task { @MainActor in
                status.update(url: url, progress: progress)
                await log(update: "Progress for \(url): \(progress)")
            }
        } finalNotificaton: { compressedSize in
            Task { @MainActor in
                status.update(url: url, compressedSize: compressedSize)
            }
        }
        log(update: "Ending for \(url)")
        return compressedData
    }
    
    func log(update: String) {
        logs.append(update)
    }
}

@MainActor
class CompressionState: ObservableObject {
    @Published var files: [FileStatus] = []
    var compressor: ParallelCompressor!
    
    init() {
        self.compressor = ParallelCompressor(status: self)
    }
    
    func update(url: URL, progress: Double) {
        if let loc = files.firstIndex(where: {$0.url == url}) {
            files[loc].progress = progress
        }
    }
    
    func update(url: URL, uncompressedSize: Int) {
        if let loc = files.firstIndex(where: {$0.url == url}) {
            files[loc].uncompressedSize = uncompressedSize
        }
    }
    
    func update(url: URL, compressedSize: Int) {
        if let loc = files.firstIndex(where: {$0.url == url}) {
            files[loc].compressedSize = compressedSize
        }
    }
    
    func compressAllFiles() {
        for file in files {
            Task {
                let compressedData = await compressor.compressFile(url: file.url)
                await save(compressedData, to: file.url)
            }
        }
    }
}
```

### CompressionState class using ParallelCompressor with minimal actor-isolation and detached tasks

```swift
actor ParallelCompressor {
    var logs: [String] = []
    unowned let status: CompressionState
    
    init(status: CompressionState) {
        self.status = status
    }
    
    nonisolated func compressFile(url: URL) async -> Data {
        await log(update: "Starting for \(url)")
        let compressedData = CompressionUtils.compressDataInFile(at: url) { uncompressedSize in
            Task { @MainActor in
                status.update(url: url, uncompressedSize: uncompressedSize)
            }
        } progressNotification: { progress in
            Task { @MainActor in
                status.update(url: url, progress: progress)
                await log(update: "Progress for \(url): \(progress)")
            }
        } finalNotificaton: { compressedSize in
            Task { @MainActor in
                status.update(url: url, compressedSize: compressedSize)
            }
        }
        await log(update: "Ending for \(url)")
        return compressedData
    }
    
    func log(update: String) {
        logs.append(update)
    }
}

@MainActor
class CompressionState: ObservableObject {
    @Published var files: [FileStatus] = []
    var compressor: ParallelCompressor!
    
    init() {
        self.compressor = ParallelCompressor(status: self)
    }
    
    func update(url: URL, progress: Double) {
        if let loc = files.firstIndex(where: {$0.url == url}) {
            files[loc].progress = progress
        }
    }
    
    func update(url: URL, uncompressedSize: Int) {
        if let loc = files.firstIndex(where: {$0.url == url}) {
            files[loc].uncompressedSize = uncompressedSize
        }
    }
    
    func update(url: URL, compressedSize: Int) {
        if let loc = files.firstIndex(where: {$0.url == url}) {
            files[loc].compressedSize = compressedSize
        }
    }
    
    func compressAllFiles() {
        for file in files {
            Task.detached {
                let compressedData = await self.compressor.compressFile(url: file.url)
                await save(compressedData, to: file.url)
            }
        }
    }
}
```

## Summary

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2022/110350/?time=0)
- Learn how you can optimize your app with the Swift Concurrency template in Instruments. We'll discuss common performance issues and show you how to use Instruments to find and resolve these problems.

- 1:29 - [Swift Concurrency recap](https://developer.apple.com/videos/play/wwdc2022/110350/?time=89)
- Swift concurrency includes async/await, structured concurrency, and Actors. These features work together to make concurrent programming easier and safer.

- 2:34 - [Common performance issues](https://developer.apple.com/videos/play/wwdc2022/110350/?time=154)
- Common problems include Main Actor blocking, actor contention, thread pool exhaustion, and continuation misuse. The new Swift Concurrency instrument helps discover and fix these issues.

- 2:54 - [Main Actor blocking](https://developer.apple.com/videos/play/wwdc2022/110350/?time=174)
- Main Actor blocking occurs when long-running tasks run on the main thread, causing the UI to become unresponsive. Move computation off the main Actor to keep the UI responsive.

- 7:52 - [Swift Concurrency template in Instruments](https://developer.apple.com/videos/play/wwdc2022/110350/?time=472)
- The Swift Tasks and Swift Actors instruments provide tools to visualize and optimize concurrency code, including statistics on running, alive, and total tasks.

- 7:56 - [Swift Tasks instrument](https://developer.apple.com/videos/play/wwdc2022/110350/?time=476)
- Shows task execution statistics and provides detailed views like Task Forest and Task Summary for analyzing concurrency behavior.

- 8:08 - [Swift Actors instrument](https://developer.apple.com/videos/play/wwdc2022/110350/?time=488)
- Helps analyze actor usage and contention.

- 8:17 - [Task Forest view](https://developer.apple.com/videos/play/wwdc2022/110350/?time=497)
- Graphical representation of parent-child relationships between tasks in structured concurrency.

- 8:24 - [Task Summary view](https://developer.apple.com/videos/play/wwdc2022/110350/?time=504)
- Shows time spent in different states with options to pin tracks for detailed analysis.

- 9:03 - [Pinning tracks](https://developer.apple.com/videos/play/wwdc2022/110350/?time=543)
- Pin tasks, threads, or actors to the timeline for detailed investigation.

- 9:23 - [Narrative view](https://developer.apple.com/videos/play/wwdc2022/110350/?time=563)
- Provides context about task states and relationships to other concurrency primitives.

- 10:03 - [Profiling with Instruments](https://developer.apple.com/videos/play/wwdc2022/110350/?time=603)
- Use Xcode's Command-I to profile applications and identify performance issues.

- 10:24 - [CompressionState class](https://developer.apple.com/videos/play/wwdc2022/110350/?time=624)
- Example code showing a class running on the MainActor that causes UI blocking.

- 11:49 - [CompressionState class using ParallelCompressor actor](https://developer.apple.com/videos/play/wwdc2022/110350/?time=709)
- Refactored code separating UI state from computation logic using an actor.

- 11:53 - [Actor contention](https://developer.apple.com/videos/play/wwdc2022/110350/?time=713)
- Actors serialize access to shared state, which can reduce parallel performance when multiple tasks compete for the same actor.

- 12:04 - [Parallel computation](https://developer.apple.com/videos/play/wwdc2022/110350/?time=724)
- Use unstructured tasks, task groups, and async let for maximum parallelization.

- 12:27 - [Minimizing actor isolation](https://developer.apple.com/videos/play/wwdc2022/110350/?time=747)
- Minimize time spent on actors to allow better parallel execution.

- 12:43 - [Detached tasks](https://developer.apple.com/videos/play/wwdc2022/110350/?time=763)
- Use detached tasks for independent work that doesn't need to be tied to a specific actor.

- 12:55 - [Optimized code](https://developer.apple.com/videos/play/wwdc2022/110350/?time=775)
- Optimized version using detached tasks for maximum parallelism while maintaining UI responsiveness.

- 14:11 - [Thread pool exhaustion](https://developer.apple.com/videos/play/wwdc2022/110350/?time=851)
- Occurs when tasks perform blocking calls without suspending, occupying threads unnecessarily and reducing parallel performance.

- 15:07 - [Continuation misuse](https://developer.apple.com/videos/play/wwdc2022/110350/?time=907)
- Continuations must be called exactly once. Use checked continuations for safety.

- 15:23 - [Checked continuations](https://developer.apple.com/videos/play/wwdc2022/110350/?time=923)
- Automatically detect misuse and provide warnings for incorrect continuation usage.

- 15:42 - [Unsafe continuations](https://developer.apple.com/videos/play/wwdc2022/110350/?time=942)
- For performance-critical code, but require careful manual management.

- 16:22 - [Best practices](https://developer.apple.com/videos/play/wwdc2022/110350/?time=982)
- Avoid blocking calls in tasks, use async APIs, and carefully manage continuations.

- 17:23 - [Conclusion](https://developer.apple.com/videos/play/wwdc2022/110350/?time=1043)
- Use the Swift Concurrency instrument to debug and optimize your concurrent code.

- The Swift Concurrency template in Instruments provides powerful tools for visualizing and optimizing Swift concurrency code, helping developers identify and resolve performance issues like Main Actor blocking, actor contention, thread pool exhaustion, and continuation misuse.
