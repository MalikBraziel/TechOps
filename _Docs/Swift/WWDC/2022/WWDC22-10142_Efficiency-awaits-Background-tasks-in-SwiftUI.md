---
URL: https://developer.apple.com/videos/play/wwdc2022/10142/
Title: Efficiency awaits: Background tasks in SwiftUI
Topics: SwiftUI
Date_Published: 2022-06-06
Swift_Version_At_Publish: Swift 5.7
---

# Efficiency awaits: Background tasks in SwiftUI

Learn about a new SwiftUI API for handling background tasks using Swift Concurrency and in a consistent way across all of Apple's platforms. We'll begin by describing a sample app called Stormy, an app for taking photos of the sky on stormy days which makes use of background tasks. Then, we'll dive into how the app uses background tasks and how background tasks work under the hood. Next, we'll learn how to handle those background tasks using a new API in SwiftUI. And finally, we'll review how the API uses Swift Concurrency to make handling background tasks easier than ever.

### Chapters

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2022/10142/?time=0)
- 0:26 - [Overview](https://developer.apple.com/videos/play/wwdc2022/10142/?time=26)
- 0:44 - [Sample App: Stormy](https://developer.apple.com/videos/play/wwdc2022/10142/?time=44)
- 1:03 - [Background Tasks API](https://developer.apple.com/videos/play/wwdc2022/10142/?time=63)
- 1:19 - [Swift Concurrency Benefits](https://developer.apple.com/videos/play/wwdc2022/10142/?time=79)
- 1:40 - [Sample App Details](https://developer.apple.com/videos/play/wwdc2022/10142/?time=100)
- 2:11 - [Background Tasks Mechanism](https://developer.apple.com/videos/play/wwdc2022/10142/?time=131)
- 3:16 - [Implementation](https://developer.apple.com/videos/play/wwdc2022/10142/?time=196)

### Resources

- [Background Tasks](https://developer.apple.com/documentation/backgroundtasks)
- [HD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2022/10142/6/0c2c6210-4f59-409a-ba23-36a7895563d3/downloads/wwdc2022-10142_hd.mp4?dl=1)
- [SD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2022/10142/6/0c2c6210-4f59-409a-ba23-36a7895563d3/downloads/wwdc2022-10142_sd.mp4?dl=1)

### Related Videos

#### WWDC22

- [What's new in SwiftUI](https://developer.apple.com/videos/play/wwdc2022/10069/)

## Transcript

<Transcript>

- [0:00] ♪ Mellow instrumental hip-hop music ♪ ♪ Welcome to "Efficiency awaits: Background Tasks in SwiftUI." I'm John Gallagher, an engineer on the watchOS Frameworks team.

- [0:17] In this talk, we'll learn about a new SwiftUI API for handling background tasks using Swift Concurrency and in a consistent way across all of Apple's platforms.

- [0:26] We'll begin by describing a sample app called Stormy, an app for taking photos of the sky on stormy days which makes use of background tasks.

- [0:36] Then, we'll dive into how the app uses background tasks and how background tasks work under the hood.

- [0:44] Next, we'll learn how to handle those background tasks using a new API in SwiftUI.

- [0:52] And finally, we'll review how the API uses Swift Concurrency to make handling background tasks easier than ever.

- [1:03] The new API is shared across watchOS, iOS, tvOS, Mac Catalyst, and Widgets, including iOS apps running on the Mac, which means the concepts and patterns you learn handling background tasks for one platform can apply to work you do on others.

- [1:19] Utilizing Swift Concurrency, the new API reduces the need for deeply nested completion handlers and callbacks as well as much of the mutable state which was frequently a side effect.

- [1:29] Swift Concurrency's native task cancellation helps applications gracefully complete tasks in a timely way to avoid being quit in the background by the system.

- [1:40] For people who like to keep their head in the clouds, we're going to build an app called Stormy that will remind users to take photos of the sky when it's stormy outside.

- [1:49] The app will show a notification at noon on stormy days requesting that the user takes a picture of the sky.

- [1:56] When the user taps the notification, they'll take a photo of the sky to upload to their profile for future admiration.

- [2:03] We're going to upload this photo in the background.

- [2:07] The app will send another notification when the upload has finished.

- [2:11] Let's dive in to how background tasks can let us do this.

- [2:15] In this diagram, we'll examine at a high level how the notification will only get sent on stormy days utilizing background tasks.

- [2:23] We'll represent foreground application runtime with the bar on the left, background application runtime with the bar in the middle, and the system is represented on the right.

- [2:36] When our app is first launched to the foreground by the user, we can take our first opportunity to schedule a background app refresh task for noon.

- [2:46] Then, when the user leaves our app and the app is suspended, the system will know to wake our application again in the background at the time we scheduled.

- [2:57] We scheduled our task for noon, so that's when system will wake the app in the background and send a background app refresh task.

- [3:07] With this background runtime, we need to figure out whether it is stormy outside, and if it is, send a notification to the user.

- [3:16] To start, we'll make a network request to a weather service to check the current weather.

- [3:22] With the URLSession scheduled for background, the application can suspend and wait for the network request to complete.

- [3:30] When the background network request for weather data completes, our application will be given background runtime again with a new URLSession background task.

- [3:41] With the results of the weather data request in hand, our application knows whether it is stormy outside and can choose whether to send a notification prompting the user to take a photo of the sky.

- [3:55] Now that our work for that URLSession task is done, the system can once again suspend the application.

- [4:02] Let's dive into the details of a single background task and see how it works.

- [4:07] To do that, we're going to take a closer look at the lifecycle of a single app refresh background task.

- [4:14] Let's zoom in here a little bit.

- [4:19] First, the system will wake our application and send it an app refresh background task.

- [4:25] Then, still in the background, we make a network request to check whether it is stormy outside.

- [4:32] Ideally, our network request completes within the allotted background runtime our application has for app refresh.

- [4:41] When we get the network response, we'd like to post the notification immediately.

- [4:47] With the notification posted, we've completed everything we needed to do during app refresh and the system can suspend the application again.

- [4:56] But what about when our network request for weather data doesn't complete in time? If an app is running low on background runtime for the current task, the system signals the app that the time is running low, giving us a chance to handle this situation gracefully.

- [5:13] If applications do not signal that they've completed their background work before runtime expires, the application may be quit by the system and throttled for future background task requests.

- [5:24] In this case, we should make sure that our network request is a background network request, which will allow us to complete our app refresh task immediately and get woken again for additional background runtime when the network request completes.

- [5:39] With our background URLSession scheduled, the system can suspend the application again.

- [5:45] Now, let's dive into how the BackgroundTask API in SwiftUI can help us build Stormy.

- [5:52] To begin, we'll need a basic application.

- [5:56] Then, we'll write a function to schedule background app refresh for noon tomorrow.

- [6:02] First, we create a date representing noon tomorrow.

- [6:07] Then, we create a background app refresh request with an earliest begin date of noon tomorrow and submit it to the scheduler.

- [6:15] This is what tells the system to wake our application tomorrow at noon.

- [6:21] We'll want to call this function when the user first opens the application and requests daily storm notifications at noon.

- [6:29] We can register a handler corresponding to the background task we scheduled by using the new background task scene modifier.

- [6:38] When the app receives a background task, any blocks registered with this modifier that match the background task received are run.

- [6:46] In this case, we used the appRefresh task type which can be scheduled in advance to provide our application with a limited amount of runtime in the background at a desired date.

- [6:57] Using the same identifier for the request and the handler in the background task modifier lets the system identify which handler to call when the corresponding task is received by your application.

- [7:10] In order for us to be sure that we are scheduled again for tomorrow, we'll start our background task by calling the scheduleAppRefresh function we just wrote to schedule background runtime again for tomorrow at noon.

- [7:24] Now that our background runtime at noon is recurring, we make our network request to check whether it is stormy outside and wait for the result using the await Swift keyword.

- [7:36] Then, if our network request has returned and it is indeed stormy outside, we await sending the notification to the user prompting them to upload a photo of the sky.

- [7:46] When the body of our closure returns, the underlying background task assigned to our application by the system is implicitly marked as complete, and the system can suspend our application again.

- [7:58] Here, using Swift Concurrency has let do potentially long-running operations in our background task without the need for an explicit callback for when the work has completed.

- [8:08] Many APIs across Apple Platforms, such as adding a notification, already support Swift Concurrency for asynchronous operations.

- [8:16] Here, the notifyForPhoto async function can be implemented in a straightforward way using the asynchronous addNotification method found on UserNotificationCenter.

- [8:29] Let's dive in to how Swift Concurrency and async/await do some heavy lifting for us and make it easier than ever to handle background tasks.

- [8:38] Let's write the asynchronous isStormy function that we've been referencing.

- [8:43] This async function is going to need to make a network request checking the weather outside.

- [8:49] To start, we'll get the shared URLSession and instantiate a request for weather data.

- [8:56] URLSession has adopted Swift Concurrency and has a method for downloading data from the network that can be awaited from async contexts.

- [9:06] With the network response in hand, we can read the weather data and return our result.

- [9:12] But what about when our application can't complete the network request before our runtime expires? Recall that in this case, we wanted to make sure that we had set up our URLSession as a background session and to ensure that it will send launch events to our application using a URLSession background task.

- [9:34] Back to our code.

- [9:37] We had used the shared URLSession.

- [9:41] Instead, we should create a URLSession from a background configuration with the sessionSendsLaunchEvents property set to true.

- [9:51] This tells the system that some network requests should run even when the app is suspended and to then wake the app for a URLSession background task when that request completes.

- [10:02] Note that this is especially important on watchOS as all network requests made by apps running in the background on watchOS must be requested through background URLSessions.

- [10:16] We're not quite done though.

- [10:18] Recall that when our background task runtime is expiring, the system will cancel the async task that is running the closure provided to the background task modifier.

- [10:28] This means that the network request made here will also be cancelled when our background runtime is expiring.

- [10:38] To respond to and handle that cancellation, we can use the withTaskCancellationHandler function built in to Swift Concurrency.

- [10:47] Instead of awaiting the result directly, we place our download into a withTaskCancellationHandler call and await this as well.

- [10:57] The first block passed to withTaskCancellationHandler is the async procedure we'd like to run and await.

- [11:03] The second onCancel trailing closure is code that will run when the task is cancelled.

- [11:10] Here, when the immediate network request is cancelled due to our runtime expiring, we promote the network request to a background download task, on which we can call resume, triggering the background download that will persist even when our app is suspended.

- [11:26] This code is not making the underlying network request twice as we're using the same URLSession to back both, and URLSession will deduplicate any in-process requests under the hood.

- [11:41] Finally, we need to ensure that our application is set up to handle a launch from a background URLSession.

- [11:48] We can use the background task modifier again, but this time with the URLSession task type.

- [11:54] By using the same identifier for the background URLSession configuration we made earlier, we can ensure this block is only called when that specific URLSession produces a background task.

- [12:08] We've taken a dive into the new unified SwiftUI API for handling background tasks and discovered how Swift Concurrency makes it easier than ever for us to manage task completion and expiration.

- [12:20] For more information about Swift Concurrency, check out the "Meet Async/await in Swift" talk from WWDC 2021.

- [12:29] And to learn more about concurrency in SwiftUI, we recommend "Discover Concurrency in SwiftUI," also from WWDC 2021.

- [12:37] Thanks for watching "Efficiency awaits: Background Tasks in SwiftUI."

</Transcript>

## Summary

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2022/10142/?time=0)
- Learn about a new SwiftUI API for handling background tasks using Swift Concurrency and in a consistent way across all of Apple's platforms.

- 0:17 - [Background Tasks API](https://developer.apple.com/videos/play/wwdc2022/10142/?time=17)
- The new API is shared across watchOS, iOS, tvOS, Mac Catalyst, and Widgets, making it easy to handle background tasks consistently.

- 0:26 - [Sample App: Stormy](https://developer.apple.com/videos/play/wwdc2022/10142/?time=26)
- Build an app that reminds users to take photos of the sky on stormy days, using background tasks to check weather and send notifications.

- 0:36 - [Background Tasks Mechanism](https://developer.apple.com/videos/play/wwdc2022/10142/?time=36)
- Understand how background tasks work, including scheduling, runtime, and handling network requests.

- 0:44 - [SwiftUI Background Task API](https://developer.apple.com/videos/play/wwdc2022/10142/?time=44)
- Use the backgroundTask modifier to handle background tasks in SwiftUI scenes.

- 0:52 - [Swift Concurrency Benefits](https://developer.apple.com/videos/play/wwdc2022/10142/?time=52)
- Swift Concurrency reduces the need for nested completion handlers and provides native task cancellation.

- 1:03 - [Implementation Details](https://developer.apple.com/videos/play/wwdc2022/10142/?time=63)
- Handle background tasks with async/await, use background URLSession for network requests, and manage task cancellation.

- The new SwiftUI API for background tasks simplifies handling background operations with Swift Concurrency, ensuring consistent behavior across platforms.