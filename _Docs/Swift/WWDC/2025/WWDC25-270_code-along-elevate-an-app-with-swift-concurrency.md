---
URL: https://developer.apple.com/videos/play/wwdc2025/270/
Title: Code-along: Elevate an app with Swift concurrency
Topics:
Date_Published: June 2025
Swift_Version_At_Publish: Swift 6.1
---


# Code-along: Elevate an app with Swift concurrency

Learn how to optimize your app's user experience with Swift concurrency as we update an existing sample app. We'll start with a main-actor app, then gradually introduce asynchronous code as we need to. We'll use tasks to optimize code running on the main actor, and discover how to parallelize code by offloading work to the background. We'll explore what data-race safety provides, and work through interpreting and fixing data-race safety errors. Finally, we'll show how you can make the most out of structured concurrency in the context of an app.

### Chapters

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2025/270/?time=0)
- 2:11 - [Approachable concurrency configuration](https://developer.apple.com/videos/play/wwdc2025/270/?time=131)
- 2:51 - [Sample app architecture](https://developer.apple.com/videos/play/wwdc2025/270/?time=171)
- 3:42 - [Asynchronously loading photos from the photo library](https://developer.apple.com/videos/play/wwdc2025/270/?time=222)
- 9:03 - [Extracting the sticker and the colors from the photo](https://developer.apple.com/videos/play/wwdc2025/270/?time=543)
- 12:30 - [Running tasks on a background thread](https://developer.apple.com/videos/play/wwdc2025/270/?time=750)
- 15:58 - [Parallelizing tasks](https://developer.apple.com/videos/play/wwdc2025/270/?time=958)
- 18:44 - [Preventing data races with Swift 6](https://developer.apple.com/videos/play/wwdc2025/270/?time=1124)
- 27:56 - [Controlling asynchronous code with structured concurrency](https://developer.apple.com/videos/play/wwdc2025/270/?time=1676)
- 31:36 - [Wrap-up](https://developer.apple.com/videos/play/wwdc2025/270/?time=1896)

### Resources

- [Code-along: Elevating an app with Swift concurrency](https://developer.apple.com/documentation/Swift/code-along-elevating-an-app-with-swift-concurrency)
- [Swift Migration Guide](https://www.swift.org/migration/documentation/migrationguide/)
- [HD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2025/270/4/fec27360-7913-4e07-8025-e80187a8d00a/downloads/wwdc2025-270_hd.mp4?dl=1)
- [SD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2025/270/4/fec27360-7913-4e07-8025-e80187a8d00a/downloads/wwdc2025-270_sd.mp4?dl=1)

### Related Videos

#### WWDC25

- [Embracing Swift concurrency](https://developer.apple.com/videos/play/wwdc2025/268)
- [Explore concurrency in SwiftUI](https://developer.apple.com/videos/play/wwdc2025/266)

#### WWDC23

- [Analyze hangs with Instruments](https://developer.apple.com/videos/play/wwdc2023/10248)
- [Beyond the basics of structured concurrency](https://developer.apple.com/videos/play/wwdc2023/10170)

## Transcript

<Transcript>

0:06

Hi! I’m Sima, and I work on Swift and SwiftUI. In this video, you will learn how to elevate your app with Swift concurrency. As app developers, most of the code we write is on the main thread.

0:24

Single-threaded code is easy to understand and maintain. But at the same time, a modern app often needs to perform time-consuming tasks, like a network request, or an expensive computation. In such cases, it is a great practice to move work off the main thread to keep the app responsive. Swift gives you all the tools you need to write concurrent code with confidence. In this session, I will show you how by building an app with you. We will start with a single-threaded app, and gradually introduce asynchronous code as we need to. Then, we will improve the performance of the app by offloading some of the expensive tasks and running them in parallel. Next, we’ll discuss some common data-race safety scenarios you might encounter and explore ways to approach them. And finally, I will touch on structured concurrency and show you how to use tools such as a TaskGroup for more control over your concurrent code. I can’t wait to get started! I love journaling, and decorating my entries with stickers, so I will walk you through building an app for composing sticker packs out of any set of photos. Our app will have two main views. The first view will feature a carousel with all stickers with a gradient reflecting the colors from the original photo, and the second one will show a grid preview of the entire sticker pack, ready to be exported. Feel free to download the sample app below to follow along! When I created the project, Xcode enabled a few features that provide a more approachable path to introducing concurrency, including main actor by default mode and a few upcoming features. These features are enabled by default in new app projects in Xcode 26.

2:32

In the approachable concurrency configuration, the Swift 6 language mode will provide data-race safety without introducing concurrency until you are ready. If you want to enable these features in existing projects, you can learn how in the Swift migration guide. In code, the app will have two main views—StickerCarousel and StickerGrid. These views will use the stickers that the PhotoProcessor struct is responsible for extracting. The PhotoProcessor gets the raw image from the photo library before it returns the sticker. The StickerGrid view has a ShareLink which it can use for sharing the stickers. The PhotoProcessor type performs two expensive operations: the sticker extraction and the dominant colors computation. Let’s see how Swift concurrency features can help us optimize for smooth user experience, while still letting the device perform these expensive tasks! I’m going to start with the StickerCarousel view. This view displays the stickers in a horizontal scroll view. Inside of the scroll view, it has a ForEach which iterates over the array of selected photos from the photo library stored in the view model. It checks the processedPhotos dictionary in the viewModel to get the processed photo corresponding to the selection in the photo library. Currently, we don’t have any processed photos, since I haven’t actually written any code to get an image from the photo picker. If I run the app now, all we will see in the scroll view, is the StickerPlaceholder view. I’ll navigate to StickerViewModel using command-click. The StickerViewModel stores an array of currently selected photos from the photo library, represented as a SelectedPhoto type. I’ll open Quick Help with Option-click to learn more about this type. SelectedPhoto is an Identifiable type that stores a PhotosPickerItem from the PhotosUI framework and its associated ID. The model also has the dictionary called processedPhotos that maps the ID of the selected photo to the SwiftUI Image it represents. I have already started working on the loadPhoto function that takes the selected photo. But currently it does not load any data from the photo picker item that it stores. The PhotosPickerItem conforms to the Transferable protocol from the SDK, which allows me to load the representation I request with the asynchronous loadTransferable function. I will request the Data representation.

5:41

Now, we have a compiler error.

5:46

It’s because the call to `loadTransferable` is asynchronous, and my `loadPhoto` function where I call it is not set up to handle asynchronous calls, so Swift helps me by suggesting to mark `loadPhoto` with the async keyword. I’m going to apply this suggestion.

6:07

Our function is capable of handling asynchronous code. But, there’s still one more error. While `loadPhoto` can handle asynchronous calls, we need to tell it what to wait for. To do this, I need to mark the call to `loadTransferable` with the `await` keyword. I’ll apply the suggested fix.

6:30

I’ll call this function in the StickerCarousel view. With command-shift-O, I can use Xcode’s Open Quickly to navigate back to the StickerCarousel.

6:43

I would like to call the loadPhoto function when the StickerPlaceholder view appears. Because this function is asynchronous, I will use the SwiftUI task modifier to kick off photo processing when this view appears.

7:03

Let’s check this out on my device! Great, it’s up and running. Let’s try selecting a few photos to test it out.

7:18

Great! Looks like the images are getting loaded from my photo library. The task allows me to keep the app’s UI responsive while the image is being loaded from the data. And because I'm using LazyHStack for displaying the images, I'm only kicking off photo loading tasks for views that need to be rendered on screen, so the app is not performing more work than necessary. Let’s talk about why async/await improves responsiveness of our app.

7:52

We added the `await` keyword when calling the `loadTransferable` method, and annotated the `loadPhoto` function with `async`. The `await` keyword marks a possible suspension point. It means that initially, the loadPhoto function starts on the main thread, and when it calls loadTransferable at the await, it suspends while it’s waiting for loadTransferable to complete. While loadPhoto is suspended, the Transferable framework will run loadTransferable on the background thread. When loadTransferable is done, loadPhoto will resume its execution on the main thread and update the image. The main thread is free to respond to UI events and run other tasks while the loadPhoto is suspended. The await keyword indicates a point in your code where other work can happen while your function is suspended. And just like that, we are done with loading the images from the photo library! Along the way, we learned what asynchronous code means, how to write and think about it. Now, let’s add some code to our app that would extract the sticker from the photo, and its primary colors that we can use for the background gradient when displayed in a carousel view. I’m going to use command-click to navigate back to loadPhoto where I can apply these effects.

9:26

The project already includes a PhotoProcessor, which takes the Data, extracts the colors and the sticker, and returns the processed photo. Rather than providing the basic image from the data, I’m going to use the PhotoProcessor instead.

9:50

The PhotoProcessor returns a processed photo, so I’ll update the dictionary’s type.

10:04

This ProcessedPhoto will provide us the sticker extracted from the photo and the array of colors to compose the gradient from.

10:16

I’ve already included a GradientSticker view in the project that takes a processedPhoto. I’m going to use Open Quickly to navigate to it.

10:31

This view shows a sticker stored in a processed photo on top of a linear gradient in a ZStack. I’m going to add this GradientSticker in the carousel.

10:44

Currently, in the StickerCarousel we are just resizing the photo, but now that we have a processed photo, we can use the GradientSticker here instead.

10:59

Let’s build and run the app to see our stickers! It’s working! Oh no! While the stickers are being extracted, scrolling through the carousel isn’t that smooth.

11:19

I suspect the image processing is very expensive. I have profiled the app using Instruments to confirm that. The trace shows that our app has Severe Hangs. If I zoom in on it and look at the heaviest stack trace, I can see the photo processor blocking the main thread with the expensive processing tasks for more than 10 seconds! If you want to learn more about analyzing hangs in your app, check out our session “Analyze hangs with Instruments”. Now, let’s talk more about the work our app is doing on the main thread.

11:59

The implementation of `loadTransferable` handled offloading the work to the background to avoid causing the loading work to happen on the main thread. Now, that we’ve added the image processing code, which is running on the main thread, and takes a long time to complete, the main thread is unable to receive any UI updates, like responding to scrolling gestures, leading to poor user experience in my app.

12:29

Previously, we adopted an asynchronous API from the SDK, which offloaded the work on our behalf. Now, we need to run our own code in parallel to fix the hang. We can move some of the image transformations into the background. Transforming the image is composed of these three operations. Getting the raw image and updating the image have to interact with the UI, so we can't move this work to the background, but we can offload the image processing. This will ensure the main thread is free to respond to other events while the expensive image processing work is happening. Let’s look at the PhotoProcessor struct to understand how we can do this! Because my app is in the main actor by default mode, the PhotoProcessor is tied to the @MainActor, meaning all of its methods must run on the main actor. The `process` method calls extract sticker and extract colors methods, so I need to mark all methods of this type as capable of running off the main actor. To do this, I can mark the whole PhotoProcessor type with nonisolated. This is a new feature introduced in Swift 6.1. When the type is marked with nonisolated, all of its properties and methods are automatically nonisolated.

14:02

Now that the PhotoProcessor is not tied to the MainActor, we can apply the new `@concurrent` attribute to the process function and mark it with `async`. This will tell Swift to always switch to a background thread when running this method. I’ll use Open Quickly to navigate back to the PhotoProcessor.

14:29

First, I’m going to apply nonisolated on the type to decouple the PhotoProcessor from the main actor and allow its methods to be called from concurrent code.

14:46

Now that PhotoProcessor is nonisolated, to make sure that the process method will get called from the background thread, I will apply @concurrent and async.

15:09

Now, I’ll navigate back to the StickerViewModel with Open Quickly.

15:17

Here, in the loadPhoto method I need to get off the main thread by calling the process method with the `await` keyword, which Swift already suggests. I’m going to apply this suggestion.

15:32

Let’s build and run our app to see if moving this work off the main actor helped with the hangs! Looks like there are no more hangs on scroll! But even though I can interact with the UI, the image is taking a while to appear in the UI while I'm scrolling. Keeping an app responsive isn't the only factor for improving user experience. If we move work off the main thread but it takes a long time to get results to the user, that can still lead to a frustrating experience using the app.

16:16

We moved the image processing operation to a background thread, but it still takes a lot of time to complete. Let’s see how we can optimize this operation with concurrency to have it complete faster. Processing the image requires extraction of stickers and the dominant colors, but these operations are independent of each other. So we can run these tasks in parallel with each other using async let. Now, the concurrent thread pool, which manages all of the background threads, will schedule these two tasks to start on two different background threads at once. This allows me to take advantage of multiple cores on my phone.

17:02

I’ll command-click on the process method to adopt async let.

17:09

By holding down control + shift and down arrow key, I can use multiline cursor to add async in front of sticker and colors variables.

17:22

Now that we’ve made these two calls run in parallel, we need to await on their results to resume our process function. Let’s fix all of these issues using the Editor menu.

17:41

But, there’s still one more error. This time it’s about a data race! Let’s take some time to understand this error.

17:53

This error means that my PhotoProcessor type is not safe to share between concurrent tasks. To understand why, let’s look at its stored properties. The only property the PhotoProcessor stores is an instance of ColorExtractor, needed to extract the colors from the photo. The ColorExtractor class computes the dominant colors that appear in the image. This computation operates on low-level, mutable image data including pixel buffers, so the color extractor type is not safe to access concurrently.

18:31

Right now, all color extraction operations share the same instance of the ColorExtractor. This leads to concurrent access to the same memory. This is called a “data race”, which can lead to runtime bugs like crashes and unpredictable behavior. The Swift 6 language mode will identify these at compile time, which defines away this set of bugs when you’re writing code that runs in parallel. This moves what would’ve been a tricky runtime bug into a compiler error that you can address right away. If you click the “help” button on the error message, you can learn more about this error on the Swift website. There are multiple options you can consider when trying to solve a data race. Choosing one depends on how your code uses the shared data. First, ask yourself: Does this mutable state need to be shared between concurrent code? In many cases, you can simply avoid sharing it. However, there are cases where the state needs to be shared by such code. If that is the case, consider extracting what you need to share to a value type that’s safe to send. Only if any of these solutions aren’t applicable to your situation, consider isolating this state to an actor such as the MainActor. Let’s see if the first solution would work for our case! While we could refactor this type to work differently to handle multiple concurrent operations, instead we can move the color extractor to a local variable in the extractColors function, so that each photo being processed has its own instance of the color extractor. This is the correct code change, because the color extractor is intended to work on one photo at a time. So we want a separate instance of it for each color extraction task. With this change, nothing outside of the extractColors function can access the color extractor, which prevents the data race! To make this change, let’s move the color extractor property to the extractColors function.

20:59

Great! With the compiler’s help, we’ve been able to detect and eliminate a data race in our app. Now, let’s run it! I can feel the app running faster! If I collect a profiler trace in Instruments and open it, I no longer see the hangs. Let’s quickly recap the optimizations we made with Swift concurrency! By adopting the `@concurrent` attribute, we have successfully moved our image processing code off the main thread. We have also parallelized its operations, sticker and color extraction with each other using `async let`, making our app much more performant! The optimizations you make with Swift concurrency should always be based on data from analysis tools, such as the time profiler instrument. If you can make your code more efficient without introducing concurrency, you should always do that first. The app feels snappy now! Let’s take a break from image processing and add something fun! Let’s add a visual effect for our processed stickers that will make the sticker scrolled past fade away and blur. Let’s switch to Xcode to write that! I’ll go back to the StickerCarousel using the Xcode project navigator.

22:33

Now, I’m going to apply the visual effect on each image in the scroll view using the visualEffect modifier.

22:47

Here, I’m applying some effects to the view. I want to change the offset, the blur, and opacity only for the last sticker in the scroll view, so I need to access the viewModel’s selection property to check if the visual effect is applied to the last sticker.

23:09

Looks like there’s a compiler error because I’m trying to access main-actor protected view state from the visualEffect closure. Because computing a visual effect is an expensive computation, SwiftUI offloads it off the main thread for maximizing performance of my app. If you feel adventurous and want to learn more, check out our session Explore concurrency in SwiftUI. That’s what this error is telling me: this closure will be evaluated later on the background. Let’s confirm this by looking at the definition of the `visualEffect`, which I’ll command-click on.

23:53

In the definition, this closure is @Sendable, which is an indication from SwiftUI that this closure will be evaluated on the background.

24:06

In this case, SwiftUI calls visual effect again whenever selection changes, so I can make a copy of it using the closure's capture list.

24:31

Now, when SwiftUI calls this closure, it will operate on a copy of selection value, making this operation data-race free.

24:41

Let’s check out our visual effect! It’s looking great, and I can see how the previous image blurs and fades out as I’m scrolling.

24:58

In both of these data-race scenarios we’ve encountered, the solution was to not share data that can be mutated from concurrent code. The key difference was that in the first example, I introduced a data-race myself by running some of the code in parallel. In the second example though, I used a SwiftUI API that offloads work to the background thread on my behalf.

25:25

If you must share mutable state, there are other ways to protect it. Sendable value types prevent the type from being able to be shared by concurrent code. For example, extractSticker and extractColors methods are running in parallel and both take the same image’s data. But there’s no data-race condition in this case because Data is a Sendable value type. Data also implements copy-on-write, so it’s only copied if it’s mutated. If you can’t use a value type, you can consider isolating your state to the main actor. Luckily, the main actor by default mode already does that for you. For example, our model is a class, and we can access it from a concurrent task. Because the model is implicitly marked with the MainActor, it is safe to reference from concurrent code. The code will have to switch to the main actor to access the state. In this case, the class is protected by the main actor but the same applies to other actors that you might have in your code. Our app is looking great so far! But it still doesn’t feel complete. To be able to export the stickers, let’s add a sticker grid view that kicks off a photo processing task for each photo that hasn't been processed yet, and displays all of the stickers at once. It will also have a share button that would allow for export of these stickers. Let’s jump back to the code! First, I’ll use command-click to navigate to the StickerViewModel.

27:11

I’m going to add another method to our model, `processAllPhotos()`.

27:22

Here, I want to iterate over all processed photos saved so far in my model, and if there are still unprocessed photos, I want to start multiple parallel tasks to kick off processing for them at once.

27:37

We’ve used async let before, but that only worked because we knew that there’s only two tasks to kick off —the sticker and color extraction. Now, we need to create a new task for all raw photos in the array, and there can be any amount of these processing tasks.

27:56

APIs like TaskGroup allow you to take more control over the asynchronous work your app needs to perform.

28:05

Task groups provide fine grained control over child tasks and their results. The task group allows to kick off any number of child tasks which can be run in parallel. Each child task can take arbitrary amounts of time to finish, so they might be done in a different order. In our case, the processed photos will be saved into a dictionary, so the order doesn't matter.

28:33

TaskGroup conforms to AsyncSequence, so we can iterate over the results as they’re done to store them into the dictionary. And finally, we can await on the whole group to finish the child tasks. Let's go back to the code to adopt a task group! To adopt the task group, I’ll start by declaring it.

28:58

Here, inside the closure I have a reference to the group which I can add image processing tasks to. I’m going to iterate over the selection saved in the model.

29:14

If this photo has been processed, then I don’t need to create a task for it.

29:22

I’ll start a new task of loading the data and processing the photo.

29:31

Because the group is an async sequence I can iterate over it to save the processed photo into the processedPhotos dictionary once it’s ready.

29:45

That’s it! Now we are ready to display our stickers in the StickerGrid. I’ll use Open Quickly to navigate to the StickerGrid.

30:03

Here, I have a state property finishedLoading which indicates if all photos have finished processing.

30:12

If the photos haven’t been processed yet, a progress view will be displayed. I’m going to call the processAllPhotos() method we just implemented.

30:28

After all photos are processed, we can set the state variable. And finally, I will add the share link in the toolbar to share the stickers! I’m populating the share link items with a sticker for each selected photo. Let’s run the app! I will tap on the StickerGrid button. Thanks to the TaskGroup, the preview grid starts processing all photos at once. And when they are ready, I can instantly see all of the stickers! Finally, using the Share button in the toolbar, I can export all of the stickers as files that I can save.

31:18

In our app, the stickers will be collected in the order they’re done processing. But you can also keep track of the order, and the task group has many more capabilities. To learn more, check out the session “Beyond the basics of structured concurrency”. Congrats! The app is done and now I can save my stickers! We’ve added new features to an app, discovered when they had an impact on the UI, and used concurrency as much as we needed to improve responsiveness and performance. We also learned about structured concurrency and how to prevent data races. If you didn’t follow along, you can still download the final version of the app and make some stickers out of your own photos! To familiarize yourself with new Swift concurrency features and techniques mentioned in this talk, try to optimize or tweak the app further. Finally, see if you could bring these techniques to your app —remember to profile it first! To dive deeper into understanding the concepts in Swift's concurrency model, check out our session “Embracing Swift concurrency”. For migrating your existing project to adopt new approachable concurrency features, check out the "Swift Migration Guide"! And my favorite part, I got some stickers for my notebook! Thanks for watching!

</Transcript>

## Code

6:29 - [Asynchronously loading the selected photo from the photo library](https://developer.apple.com/videos/play/wwdc2025/270/?time=389)

```swift
func loadPhoto(_ item: SelectedPhoto) async {
    var data: Data? = try? await item.loadTransferable(type: Data.self)

    if let cachedData = getCachedData(for: item.id) { data = cachedData }

    guard let data else { return }
    processedPhotos[item.id] = Image(data: data)

    cacheData(item.id, data)
}
```


6:59 - [Calling an asynchronous function when the SwiftUI View appears](https://developer.apple.com/videos/play/wwdc2025/270/?time=419)

```swift
StickerPlaceholder()
    .task {
        await viewModel.loadPhoto(selectedPhoto)
    }
```


9:45 - [Synchronously extracting the sticker and the colors from a photo](https://developer.apple.com/videos/play/wwdc2025/270/?time=585)

```
func loadPhoto(_ item: SelectedPhoto) async {
    var data: Data? = try? await item.loadTransferable(type: Data.self)

    if let cachedData = getCachedData(for: item.id) { data = cachedData }

    guard let data else { return }
    processedPhotos[item.id] = PhotoProcessor().process(data: data)

    cacheData(item.id, data)
}
```


9:56 - [Storing the processed photo in the dictionary](https://developer.apple.com/videos/play/wwdc2025/270/?time=596)

```
var processedPhotos = [SelectedPhoto.ID: ProcessedPhoto]()
```


10:45 - [Displaying the sticker with a gradient background in the carousel](https://developer.apple.com/videos/play/wwdc2025/270/?time=645)

```swift
import SwiftUI
import PhotosUI

struct StickerCarousel: View {
    @State var viewModel: StickerViewModel
    @State private var sheetPresented: Bool = false

    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 16) {
                ForEach(viewModel.selection) { selectedPhoto in
                    VStack {
                        if let processedPhoto = viewModel.processedPhotos[selectedPhoto.id] {
                            GradientSticker(processedPhoto: processedPhoto)
                        } else if viewModel.invalidPhotos.contains(selectedPhoto.id) {
                            InvalidStickerPlaceholder()
                        } else {
                            StickerPlaceholder()
                                .task {
                                    await viewModel.loadPhoto(selectedPhoto)
                                }
                        }
                    }
                    .containerRelativeFrame(.horizontal)
                }
            }
        }
        .configureCarousel(
            viewModel,
            sheetPresented: $sheetPresented
        )
        .sheet(isPresented: $sheetPresented) {
            StickerGrid(viewModel: viewModel)
        }
    }
}
```


14:13 - [Allowing photo processing to run on the background thread](https://developer.apple.com/videos/play/wwdc2025/270/?time=853)

```swift
nonisolated struct PhotoProcessor {
 
    let colorExtractor = ColorExtractor()

    @concurrent
    func process(data: Data) async -> ProcessedPhoto? {
        let sticker = extractSticker(from: data)
        let colors = extractColors(from: data)

        guard let sticker = sticker, let colors = colors else { return nil }

        return ProcessedPhoto(sticker: sticker, colorScheme: colors)
    }

    private func extractColors(from data: Data) -> PhotoColorScheme? {
        // ...
    }

    private func extractSticker(from data: Data) -> Image? {
        // ...
    }
}
```


15:31 - [Running the photo processing operations off the main thread](https://developer.apple.com/videos/play/wwdc2025/270/?time=931)

```swift
func loadPhoto(_ item: SelectedPhoto) async {
    var data: Data? = try? await item.loadTransferable(type: Data.self)

    if let cachedData = getCachedData(for: item.id) { data = cachedData }

    guard let data else { return }
    processedPhotos[item.id] = await PhotoProcessor().process(data: data)

    cacheData(item.id, data)
}
```


20:55 - [Running sticker and color extraction in parallel.](https://developer.apple.com/videos/play/wwdc2025/270/?time=1255)

```swift
nonisolated struct PhotoProcessor {

    @concurrent
    func process(data: Data) async -> ProcessedPhoto? {
        async let sticker = extractSticker(from: data)
        async let colors = extractColors(from: data)

        guard let sticker = await sticker, let colors = await colors else { return nil }

        return ProcessedPhoto(sticker: sticker, colorScheme: colors)
    }

    private func extractColors(from data: Data) -> PhotoColorScheme? {
        let colorExtractor = ColorExtractor()
        return colorExtractor.extractColors(from: data)
    }

    private func extractSticker(from data: Data) -> Image? {
        // ...
    }
}
```


24:20 - [Applying the visual effect on each sticker in the carousel](https://developer.apple.com/videos/play/wwdc2025/270/?time=1460)

```swift
import SwiftUI
import PhotosUI

struct StickerCarousel: View {
    @State var viewModel: StickerViewModel
    @State private var sheetPresented: Bool = false

    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 16) {
                ForEach(viewModel.selection) { selectedPhoto in
                    VStack {
                        if let processedPhoto = viewModel.processedPhotos[selectedPhoto.id] {
                            GradientSticker(processedPhoto: processedPhoto)
                        } else if viewModel.invalidPhotos.contains(selectedPhoto.id) {
                            InvalidStickerPlaceholder()
                        } else {
                            StickerPlaceholder()
                                .task {
                                    await viewModel.loadPhoto(selectedPhoto)
                                }
                        }
                    }
                    .containerRelativeFrame(.horizontal)
                    .visualEffect { [selection = viewModel.selection] content, proxy in
                        let frame = proxy.frame(in: .scrollView(axis: .horizontal))
                        let distance = min(0, frame.minX)
                        let isLast = selectedPhoto.id == selection.last?.id
                        
                        return content
                            .hueRotation(.degrees(frame.origin.x / 10))
                            .scaleEffect(1 + distance / 700)
                            .offset(x: isLast ? 0 : -distance / 1.25)
                            .brightness(-distance / 400)
                            .blur(radius: isLast ? 0 : -distance / 50)
                            .opacity(isLast ? 1.0 : min(1.0, 1.0 - (-distance / 400)))
                    }
                }
            }
        }
        .configureCarousel(
            viewModel,
            sheetPresented: $sheetPresented
        )
        .sheet(isPresented: $sheetPresented) {
            StickerGrid(viewModel: viewModel)
        }
    }
}
```


26:15 - [Accessing a reference type from a concurrent task](https://developer.apple.com/videos/play/wwdc2025/270/?time=1575)

```
Task { @concurrent in
    await viewModel.loadPhoto(selectedPhoto)      
}
```


29:00 - [Processing all photos at once with a task group](https://developer.apple.com/videos/play/wwdc2025/270/?time=1740)

```swift
func processAllPhotos() async {
    await withTaskGroup { group in
        for item in selection {
            guard processedPhotos[item.id] == nil else { continue }
            group.addTask {
                let data = await self.getData(for: item)
                let photo = await PhotoProcessor().process(data: data)
                return photo.map { ProcessedPhotoResult(id: item.id, processedPhoto: $0) }
            }
        }

        for await result in group {
            if let result {
                processedPhotos[result.id] = result.processedPhoto
            }
        }
    }
}
```


30:00 - [Kicking off photo processing and configuring the share link in a sticker grid view.](https://developer.apple.com/videos/play/wwdc2025/270/?time=1800)

```swift
import SwiftUI

struct StickerGrid: View {
    let viewModel: StickerViewModel
    @State private var finishedLoading: Bool = false

    var body: some View {
        NavigationStack {
            VStack {
                if finishedLoading {
                    GridContent(viewModel: viewModel)
                } else {
                    ProgressView()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .padding()
                }
            }
            .task {
                await viewModel.processAllPhotos()
                finishedLoading = true
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    if finishedLoading {
                        ShareLink("Share", items: viewModel.selection.compactMap {
                            viewModel.processedPhotos[$0.id]?.sticker
                        }) { sticker in
                            SharePreview(
                                "Sticker Preview",
                                image: sticker,
                                icon: Image(systemName: "photo")
                            )
                        }
                    }
                }
            }
            .configureStickerGrid()
        }
    }
}
```