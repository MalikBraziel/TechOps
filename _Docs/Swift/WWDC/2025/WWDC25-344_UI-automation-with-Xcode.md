---
URL: https://developer.apple.com/videos/play/wwdc2025/344/
Title: Record, replay, and review: UI automation with Xcode
Topics:
Date_Published: June 2025
Swift_Version_At_Publish: Swift 6.1
---

# Record, replay, and review: UI automation with Xcode

Learn to record, run, and maintain XCUIAutomation tests in Xcode. Replay your XCTest UI tests in dozens of locales, device types, and system conditions using test plan configurations. Review your test results using the Xcode test report, and download screenshots and videos of your runs. We'll also cover best practices for preparing your app for automation with Accessibility and writing stable, high-quality automation code.

### Chapters

- 0:00 - [Introduction and agenda](https://developer.apple.com/videos/play/wwdc2025/344/?time=0)
- 3:58 - [UI automation overview](https://developer.apple.com/videos/play/wwdc2025/344/?time=238)
- 6:26 - [Prepare your app for automation](https://developer.apple.com/videos/play/wwdc2025/344/?time=386)
- 11:32 - [Record your interactions](https://developer.apple.com/videos/play/wwdc2025/344/?time=692)
- 17:30 - [Replay in multiple configurations](https://developer.apple.com/videos/play/wwdc2025/344/?time=1050)
- 20:54 - [Review videos and results](https://developer.apple.com/videos/play/wwdc2025/344/?time=1254)
- 24:16 - [Next steps](https://developer.apple.com/videos/play/wwdc2025/344/?time=1456)

### Resources

- [Delivering an exceptional accessibility experience](https://developer.apple.com/documentation/Accessibility/delivering_an_exceptional_accessibility_experience)
- [Improving code assessment by organizing tests into test plans](https://developer.apple.com/documentation/Xcode/organizing-tests-to-improve-feedback)
- [Performing accessibility testing for your app](https://developer.apple.com/documentation/Accessibility/performing-accessibility-testing-for-your-app)
- [HD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2025/344/6/d83ce906-0fb6-484b-a0f2-4f678161d5b8/downloads/wwdc2025-344_hd.mp4?dl=1)
- [SD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2025/344/6/d83ce906-0fb6-484b-a0f2-4f678161d5b8/downloads/wwdc2025-344_sd.mp4?dl=1)

### Related Videos

#### WWDC24

- [Meet Swift Testing](https://developer.apple.com/videos/play/wwdc2024/10179)

#### WWDC23

- [Build accessible apps with SwiftUI and UIKit](https://developer.apple.com/videos/play/wwdc2023/10036)
- [Create practical workflows in Xcode Cloud](https://developer.apple.com/videos/play/wwdc2023/10278)
- [Fix failures faster with Xcode test reports](https://developer.apple.com/videos/play/wwdc2023/10175)
- [Perform accessibility audits for your app](https://developer.apple.com/videos/play/wwdc2023/10035)

#### WWDC22

- [Author fast and reliable tests for Xcode Cloud](https://developer.apple.com/videos/play/wwdc2022/110361)

#### WWDC21

- [SwiftUI Accessibility: Beyond the basics](https://developer.apple.com/videos/play/wwdc2021/10119)

## Transcript

<Transcript>

- [0:06] Hey, I’m Max, and I’m an engineer on the Xcode team. There are so many awesome features and experiences inside of Xcode, it can be overwhelming. For example, did you know it’s possible to watch your app run on dozens of devices, languages, and configurations with one click? And on top of that, you can get a full quality video recording of every single run. Well, that’s totally possible with the power of UI automation in Xcode. Let's take a look at how that works. First, we’ll cover an overview of UI automation. Then we’ll prepare your app, record your interactions as automation code, replay the automation across several devices and languages, and finally, watch video recordings of the results and see a report about whether each run passed or failed.

- [0:54] Let’s start with an overview of how UI automation works.

- [0:58] Inside Xcode, we have two testing frameworks: Swift Testing and XCTest. Both frameworks are capable of quickly testing your app and your source code in many configurations.

- [1:10] When you import XCTest, a framework called XCUIAutomation is automatically included. XCUIAutomation can be used to automate your app and interact with it like a person does. These frameworks work together to provide a complete app testing suite, and if you ask me, I think that's pretty sweet.

- [1:29] A complete app testing suite is usually comprised of both unit and UI automation tests. Unit tests test your app's logic and models, and with Swift testing, it's possible to run tests on frameworks and Swift packages that don't even have a user interface.

- [1:45] Meanwhile, UI automation tests validate your app's user experience, as well as its integration with Apple hardware and the behavior of common workflows.

- [1:55] Generally, your test suite will have more unit tests than UI tests, and you want to aim for full coverage of your code. But UI automation tests let you see how your app looks, behaves, and integrates with the rest of the operating system. There are so many benefits to doing this.

- [2:12] For example, you can test your app as a person would with gestures like taps, swipes and clicks. You can understand how your app is perceived by people who use assistive technologies like VoiceOver, Voice Control, and Dynamic Type.

- [2:26] You can view your app running on all of the languages and regions that it supports and focus on languages that have large effects on the look of your app, like languages with longer strings and languages with a right-to-left layout. You can test your app's integration with Apple hardware features, like the Action button, camera button, Apple TV remote, and Apple Watch's Digital Crown. And finally, you can test your app's launch performance, which is a key metric in understanding how quickly people can get started using your app. To set up a UI automation workflow, there are three key phases: record, replay, and review.

- [3:03] First, record your interactions like taps, swipes, and hardware button presses, then watch Xcode automatically write those as code. Then, replay your interactions across multiple devices, languages, regions, and device orientations, both on your devices and in Xcode Cloud. Finally, review videos and results of your app running in all of those configurations and see which ones passed and which ones failed.

- [3:32] UI automation is supported on all Apple platforms: iOS, iPadOS, macOS, watchOS, tvOS, and visionOS (Designed for iPad). The same automation can even run on multiple platforms. So it's possible to build an automation once and run it on all your supported devices. That means you can see how your app runs on Mac, iPhone and Vision Pro with one click and no code changes. Let's briefly go over how UI automation works.

- [4:01] UI automation interacts with your app as a person does using gestures and hardware events. Automation runs completely independently from your app, so your app models and data are not directly accessible.

- [4:15] UI automation tells the operating system which gestures to perform, then synchronously waits for them to complete one at a time.

- [4:24]

These actions include launching your app, interacting with buttons and navigation, setting system state like Dark Mode, and even setting a simulated location for the device if you wanted to. At Apple, accessibility is one of our core values. Apple’s assistive technologies make sure that everyone can use your app regardless of any physical, visual, audible or motor impairment. We work really hard to ensure that most of these technologies work with your app by default, with no work needed from you as a developer. That said, adding additional support can enrich your app’s experience and make it even easier to automate. The thing is, accessibility is the underlying framework that powers UI automation. Having a great accessibility experience means you get a great UI automation experience too.

- [5:12] Accessibility provides information directly to UI automation, such as element types, labels, values and frames but what accessibility sees is not necessarily one-to-one with what you see as a person.

- [5:26] Let's take a look at an example. On this screen, the Great Barrier Reef button is visible in the UI but accessibility can see even more than that. Sure, accessibility can see the elements type and label and expose them to UI automation but the identifier property is also exposed. The accessibility identifier can be used to describe any element on screen uniquely, relative to all the elements around it. The identifier is not designed to be localized, so you can use it to refer to the same UI element in any language or device.

- [6:00] For checkboxes and other stateful elements, a value property can be used. This reveals the element's current state to both accessibility and UI automation.

- [6:11] To learn way more about accessibility, check out "Build accessible apps with SwiftUI and UIKit" from WWDC23, or "SwiftUI Accessibility: Beyond the basics" from WWDC21.

- [6:25] Now that we've explored how a UI automation works with accessibility, let's prepare your app automation.

- [6:32] First, we'll add accessibility identifiers. Then we'll do a quick review of your app's accessibility. And finally, we'll add a new UI testing target to get ready to record our interactions as code. Before we dive in, it's worth noting that your app already fully supports UI automation and UI recording out of the box with no work needed from you as a developer. The steps we're about to cover are not required but they can lead to better and higher-quality results. Adding accessibility identifiers can be done in your view code written in SwiftUI, UIKit or AppKit. Accessibility identifiers are the best way to uniquely identify any element in your app for automation. It's a good idea to add accessibility identifiers to elements with localized strings or dynamic content. That includes content found in any of your data models or content that's downloaded from the internet.

- [7:27] Good identifiers are unique within your entire app, descriptive enough to detail the element that they are on, and static, not reacting to changes in content.

- [7:39] While titles and descriptions might change, good identifiers always describe the contents of the element they are attached to. That way, we can be sure my lovely landmarks stick around forever.

- [7:52] In SwiftUI, you can add the accessibilityIdentifier modifier to any UI element. It will be recognized as long as your view and its parent views are not hidden from accessibility.

- [8:04] It's a good idea to make identifiers specific to an instance of a view, especially for views that are used many times in your app. In this example, we use the landmark's id property to make the identifier unique for each one.

- [8:19] In UIKit, the accessibilityIdentifier property can be set on any UIView as long as the view is an accessibility element. Most UI views, like controls, text and images, are accessibility elements by default so usually no work is needed to do this.

- [8:36] Properties like accessibilityLabel, accessibilityTraits and accessibilityValue are useful to assistive technologies like VoiceOver and are also useful to UI automation.

- [8:48]

However, the accessibilityIdentifier property is not read out loud by VoiceOver and is not exposed to anyone using your app. This makes it a useful way to provide information that is only useful to automation, like the index of a table cell or the symbol name of an image. I can even have the coding assistant in Xcode add accessibility identifiers for me. For example, I can write, “Add accessibility identifiers to the relevant parts of this view”, and it will just happen. The coding assistant even knows how to use the id property on a landmark to make each identifier completely unique. Pretty cool. Reviewing your app’s overall accessibility behavior is a good idea before starting UI recording. It’s like flossing before going to the dentist. You’re going to know exactly how well you’ve been doing soon. This will just give you a good preview of it. Xcode ships with an app called Accessibility Inspector, which lets you find, diagnose and fix accessibility issues. The Inspector can be launched from the Xcode top-level menu under Open Developer Tool. It can also be launched from Spotlight.

- [9:54] Accessibility Inspector can list the accessibility values for any view in your app on any platform. Simply select the platform you wish to inspect, then click the Element inspector and interact with the UI element you want to learn about on that platform. A list of element properties will be displayed. Some of them, like the ones in the Basic section, are really useful to UI automation. For views that are lacking information, you may want to change your app's source code and add some. You can find out details about each property by clicking a property's name. The popover will tell you exactly which property to set, provide documentation about it and more.

- [10:35] You can learn even more about accessibility features with our sample code project, "Delivering an exceptional accessibility experience." This project provides some great code examples for an app that uses many accessibility features and is really friendly to UI automation. Also, check out the article, "Performing accessibility testing for your app" to learn about ways to check your app's accessibility using a bunch of different assistive technologies. Once we're ready to start automating, we need to add a new UI testing target to have somewhere to put our automation code.

- [11:10] In the project settings view in Xcode, add a new target with the "plus" button below the targets list.

- [11:17] Then select UI Testing Bundle from the popover.

- [11:22] Once you click Finish, a new UI test folder and template will be added to your project.

- [11:27] The template has some simple tests to help you get started. Okay, now we're ready to magically record all of our interactions as Swift code. Let's use iOS Simulator and Xcode for this. A few years ago, my mom and sister went on a month-long trip to Australia without me, and I'm pretty bummed I didn't get to go with them. Lucky for me, there's an app for that. I can use the Landmarks sample project from this year's WWDC to plan a vacation of my own. I'll record some interactions that plan my trip so I can ensure that workflow doesn't break in future versions of the app. When I open the UI test source file for the first time, a popover will appear telling me how I can start a UI recording. Now, I'll start a UI recording using the button in the sidebar, and Xcode will automatically build and relaunch my app in Simulator.

- [12:20] Now that my app is launched, I'll go to the collections view.

- [12:24] As I interact with the app, the code representing my interactions is recorded in the source editor. I'll tap the Plus button to add a new collection to start planning my own trip to Australia. Now I'll tap the Edit button to rename the trip, and I can rename the trip "Max's Australian Adventure".

- [12:43] Xcode will keep my test up-to-date as I keep typing.

- [12:48] Now I'll edit the collection of landmarks.

- [12:51] Just add some Australian landmarks like the Great Barrier Reef and Uluru and tap the check mark.

- [12:57] Once I go back to the collections view, I can see that my collection has been added with some Australian landmarks included.

- [13:04] You can stop UI recording with the Stop Run button in Xcode. After you finish recording, there are a few things you might want to do to make sure you got the automation you wanted. First, review the recorded code. Then add validations using XCTest APIs to ensure your app is behaving as you expected it to. And finally, explore other automation APIs that can make your test even more powerful.

- [13:29] Let's review the UI queries that were recorded and see if I want to make any adjustments.

- [13:34] Every line of recorded code will have multiple options to address each UI element, and which one you choose depends on your goals. You can click the dropdown on each line of source code to see the choices.

- [13:47] Quick hint, choosing the right one will help you board your plane to Australia faster.

- [13:52] We have a few recommendations to help you select from the options.

- [13:56] For views that have localized strings, like text elements or buttons, we recommend choosing an accessibility identifier if there is one. UI recording tries to use the identifier by default if one exists.

- [14:09] For views that are deeply nested, like text in scroll views, we recommend choosing the shortest possible query. This will help your automation stay resilient as your app changes.

- [14:22] Lastly, for dynamic content that is downloaded from the internet or content that changes frequently, like timestamps or the temperature, we recommend using a more generic query or an accessibility identifier if one is present.

- [14:36] In this example, we don't even use an identifier or any string at all, and we always just refer to the first piece of text.

- [14:45]

Okay, now it's time to make a selection. I’ll click the line of source code I want to edit to see the options. All of these queries uniquely identify the element you interacted with, so there's really no wrong choice. It’s just about choosing how you want to store a reference to this piece of UI for the future. I’ll select the textFields.firstMatch option to make sure the text field is always tapped in my test no matter what it’s called. Double click any of the dropdowns to store this result in your source code. Now let's quickly rerun my automation to see if it recorded my actions correctly. I'll click the test diamond to run it. While we might be testing your app, we aren't trying to test your patience. The automation replay runs really fast.

- [15:30] The collection gets quickly created with the correct name, the locations get added, and the automation passes. Awesome. That was way faster than a 19-hour flight. Now we can add validations to the code to check the expected behavior. In this example, I'll validate that the Great Barrier landmark was added to my collection.

- [15:55] I can call methods like waitForExistence to have my automation wait for an element to appear before moving on. I can also call the more generic method, wait(for:toEqual:) to validate that any property on an XCUIElement matches the expected result.

- [16:11] I can pair both of these methods with XCTAssert statements from XCTest to fail the test if these methods return false.

- [16:20] Now, let me go back to my code and quickly add a waitForExistence on the name of my collection to make sure it's always there in future runs.

- [16:30] Now is a good time to explore other automation APIs to make your code even more powerful.

- [16:36] It can be useful to use the setup instance method of an XCTestCase to make sure the device is in the same state in future runs. I can call APIs like orientation, appearance or even simulate a location to get my device into the correct state before a run starts.

- [16:54] Before launching my app, I can use properties like launchArguments and launchEnvironment to have my app use those parameters when the launch method is called.

- [17:03] If your app supports a custom URL scheme, you can open it to a matching URL directly using the XCUIApplication open method.

- [17:12] There's even a global version, which opens a URL using the device's default app for it.

- [17:18] Lastly, it's possible to perform an accessibility audit of your app inside a UI test. There's a great session on that called "Perform accessibility audits for your app" from WWDC23. Now that we've recorded our interactions and set up our automation, let's configure the tests to replay in multiple configurations, both at-desk and in the cloud. It's really useful to add your test to a new or existing test plan. Test plans let you include or exclude individual tests, set system settings for where and how your tests run, and manage test properties like timeouts, repetitions, parallelization, execution order and more.

- [18:01] Test plans are also associated with a scheme, which lets you pair a test plan with specific build settings.

- [18:08] You can learn a lot more about this with the article, "Improving code assessment by organizing tests into test plans" in our developer documentation.

- [18:17] In your test plan, you can add or remove tests on the first screen or switch to the Configurations tab to make changes to how the test will run.

- [18:27] I can set up multiple configurations to run my app in multiple languages.

- [18:32] Typically, each locale exists as a separate configuration in your test plan.

- [18:38] You can have settings that are focused for a specific locale configuration or other settings that are shared across all of them.

- [18:46] It can be helpful to include configurations for languages with longer strings, like German, or right-to-left languages, like Arabic and Hebrew.

- [18:55] There are even UI automation-focused settings in the Configurations tab.

- [18:59] These include whether to capture a video or screenshots during the run and whether any media will be kept afterwards.

- [19:06] By default, videos and screenshots are only kept for failing runs, to let you review any issues. If you want to keep them for all runs, even runs that pass, select "On, and keep all". This setting would let you keep video recordings for other purposes, like documentation, tutorials or marketing. There are so many other great settings to explore in the Configurations tab. To learn more about them, check out "Author fast and reliable tests for Xcode Cloud" from WWDC22.

- [19:37] Xcode Cloud is a service built into Xcode that's also available in App Store Connect. It can help you build your app, run tests, upload to the App Store and so much more. All of that happens in the cloud without you using any of you or your team's devices. I think you'll find that when it comes to Xcode Cloud, it's all sun and games. For the Landmarks app, we've configured an Xcode Cloud workflow that runs all of the UI automations I just wrote, using the test plan I just created. This plan will run the same way in the cloud as it was run on my simulator, on any number of devices and configurations like English, Arabic, Hebrew, and German on iPhone and iPad.

- [20:17] You can view a history of your Xcode Cloud runs from within Xcode or in the Xcode Cloud section of App Store Connect. There, you can see an overview of build information, logs, failure descriptions and more.

- [20:31] Using Xcode Cloud, my entire team can see a history of my runs and download results and video recordings from them. They can do that even if I'm literally in the clouds, and by that I mean on my flight to Sydney.

- [20:44] There's so much more to learn about Xcode Cloud. For more advanced configurations, check out "Create practical workflows in Xcode Cloud" from WWDC23. Now that we've run our recorded tests using a test plan in multiple configurations, we can review the results and the video recordings using the test report. The Xcode test report has some great tools to help you view, understand and diagnose your test results. It looks like one of our runs failed from the automation I just ran. Guess I can't pack my bags for Australia just yet.

- [21:15] To navigate to my failing test, I'll click the Test button, then I'll double click the failing run to see a video recording and a description of what just happened.

- [21:24] I can see all of the runs in this test in the runs drop-down. This lets me quickly switch between video recordings of my test running in different configurations, like different languages. Also, fun fact, I can download the video by using a secondary click and choosing Save.

- [21:41]

I’ll press Play to start video playback.

- [21:46] As the video plays, dots showing UI interactions are overlayed on top of the video. These actions are also represented in the timeline below as dots.

- [21:58] Looks like there will be a bit of time before my failure, so let's skip ahead. I'll jump straight to the failure moment using the failure diamond on the timeline.

- [22:08] I see a failure message, but it's hard to say what went wrong. The message says we're looking for a button called Max's Australian Adventure. Let's see what was actually present at the point of failure.

- [22:19] At the moment of failure, I see an overlay of all of the UI elements that were present right on top of the video recording.

- [22:27] If I click any of these, I get code recommendations for ways I can address this element in my automation code. I can even hit Show All to see alternative examples and find one that works for me.

- [22:38] I think I see what's wrong. We were expecting a button, but there's no button here. It's just text. Let me fix that really quick.

- [22:47] I'll select the sample I want and secondary click to copy it.

- [22:51] Then, I can click View Source to go directly to my tests and paste the new line of code over my existing one.

- [22:59] Now, I can replace the temporary XCUIApplication variable with the app variable for my UI recording, and I'm good to go.

- [23:08] Great, now this should run as expected. Let me click the test diamond to watch the test rerun.

- [23:14] This time, I'll run the test in Arabic to see that the same automation works even when my app is running in a right-to-left layout.

- [23:26] The automation quickly creates my collection and renames it just as it does in English.

- [23:31] Pretty cool.

- [23:39] Looks like the automation passed. Time to finish this up and go on the trip of a lifetime. Maybe my mom and sister can come along to show me around. There's so much more we can do with the Xcode test report. Luckily, the session "Fix failures faster with Xcode test reports" from WWDC23 really goes in depth and covers it all. It's amazing how UI automation, accessibility, localization, Xcode Cloud and the test report all work together to increase the quality of your app and make it easier to use for everyone around the world. Bringing these technologies together into a single flow has been such a joy, and I can't wait to see how it's used by developers.

- [24:17] You can learn more about unit testing and Swift testing in the talk "Meet Swift Testing" from WWDC24. If you have additional questions or feedback, you can find us in the Developer Forums. Thanks for following along, and I'll see you in Australia.

</Transcript>

## Code

7:52 - [Adding accessibility identifiers in SwiftUI](https://developer.apple.com/videos/play/wwdc2025/344/?time=472)

```swift
// Adding accessibility identifiers in SwiftUI
import SwiftUI

struct LandmarkDetailView: View {
  let landmark: Landmark
  var body: some View {
    VStack {
      Image(landmark.backgroundImageName)
        .accessibilityIdentifier("LandmarkImage-\(landmark.id)")
      
      Text(landmark.description)
        .accessibilityIdentifier("LandmarkDescription-\(landmark.id)")
    }
  }
}
```


8:19 - [Adding accessibility identifiers in UIKit](https://developer.apple.com/videos/play/wwdc2025/344/?time=499)

```swift
// Adding accessibility identifiers in UIKit
import UIKit

struct LandmarksListViewController: UIViewController {
  let landmarks: [Landmark] = [landmarkGreatBarrier, landmarkCairo]

  override func viewDidLoad() {
    super.viewDidLoad()

    for landmark in landmarks {
      let button = UIButton(type: .custom)
      setupButtonView()
                
      button.accessibilityIdentifier = "LandmarkButton-\(landmark.id)"
      
      view.addSubview(button)
    }
  }
}
```


13:54 - [Best practice: Prefer accessibility identifiers over localized strings](https://developer.apple.com/videos/play/wwdc2025/344/?time=834)

```swift
// Example SwiftUI view
struct CollectionDetailDisplayView: View {
  var body: some View {
    ScrollView {
      Text(collection.name)
        .font(.caption)
        .accessibilityIdentifier("Collection-\(collection.id)")
    }
  }
}

// Example of a worse XCUIElementQuery
XCUIApplication().staticTexts["Max's Australian Adventure"]

// Example of a better XCUIElementQuery
XCUIApplication().staticTexts["Collection-1"]
```


14:09 - [Best practice: Keep queries as concise as possible](https://developer.apple.com/videos/play/wwdc2025/344/?time=849)

```swift
// Example SwiftUI view
struct CollectionDetailDisplayView: View {
  var body: some View {
    ScrollView {
      Text(collection.name)
        .font(.caption)
        .accessibilityIdentifier("Collection-\(collection.id)")
    }
  }
}

// Example of a worse XCUIElementQuery
XCUIApplication().scrollViews.staticTexts["Collection-1"]

// Example of a better XCUIElementQuery
XCUIApplication().staticTexts["Collection-1"]
```


14:21 - [Best practice: Prefer generic queries for dynamic content](https://developer.apple.com/videos/play/wwdc2025/344/?time=861)

```swift
// Example SwiftUI view
struct CollectionDetailDisplayView: View {
  var body: some View {
    ScrollView {
      Text(collection.name)
        .font(.caption)
        .accessibilityIdentifier("Collection-\(collection.id)")
    }
  }
}

// Example of a worse XCUIElementQuery
XCUIApplication().staticTexts["Max's Australian Adventure"]

// Example of a better XCUIElementQuery
XCUIApplication().staticTexts.firstMatch
```


15:49 - [Add validations to a test case](https://developer.apple.com/videos/play/wwdc2025/344/?time=949)

```swift
// Add validations to the test case
import XCTest

class LandmarksUITests: XCTestCase {

  func testGreatBarrierAddedToFavorites() {
    let app = XCUIApplication()
    app.launch()
    app.cells["Landmark-186"].tap()
    XCTAssertTrue(
      app.staticTexts["Landmark-186"].waitForExistence(timeout: 10.0)),
      "Great Barrier exists"
    )

    let favoriteButton = app.buttons["Favorite"]
    favoriteButton.tap()
    XCTAssertTrue(
      favoriteButton.wait(for: \.value, toEqual: true, timeout: 10.0),
      "Great Barrier is a favorite"
    )
  }
}
```


16:36 - [Set up your device for test execution](https://developer.apple.com/videos/play/wwdc2025/344/?time=996)

```swift
// Set up your device for test execution
import XCTest
import CoreLocation

class LandmarksUITests: XCTestCase {

  override func setUp() {
    continueAfterFailure = false
    
    XCUIDevice.shared.orientation = .portrait
    XCUIDevice.shared.appearance = .light
      
    let simulatedLocation = CLLocation(latitude: 28.3114, longitude: -81.5535)
    XCUIDevice.shared.location = XCUILocation(location: simulatedLocation)
  }
  
}
```


16:54 - [Launch your app with environment variables and arguments](https://developer.apple.com/videos/play/wwdc2025/344/?time=1014)

```swift
// Launch your app with environment variables and arguments
import XCTest

class LandmarksUITests: XCTestCase {

  func testLaunchWithDefaultCollection() {
    let app = XCUIApplication()
    app.launchArguments = ["ClearFavoritesOnLaunch"]
    app.launchEnvironment = ["DefaultCollectionName": "Australia 🐨 🐠"]
    app.launch()

    app.tabBars.buttons["Collections"].tap()
    XCTAssertTrue(app.buttons["Australia 🐨 🐠"].waitForExistence(timeout: 10.0))
  }
}
```


17:04 - [Launch your app using custom URL schemes](https://developer.apple.com/videos/play/wwdc2025/344/?time=1024)

```swift
// Launch your app using custom URL schemes
import XCTest

class LandmarksUITests: XCTestCase {

  func testOpenGreatBarrier() {
    let app = XCUIApplication()
    let customURL = URL(string: "landmarks://great-barrier")!
    app.open(customURL)

    XCTAssertTrue(app.wait(for: .runningForeground, timeout: 10.0))
    XCTAssertTrue(app.staticTexts["Great Barrier Reef"].waitForExistence(timeout: 10.0))
  }
}
```


17:12 - [Launch your app using custom URL schemes and the system default app](https://developer.apple.com/videos/play/wwdc2025/344/?time=1032)

```swift
// Launch your app using custom URL schemes
import XCTest

class LandmarksUITests: XCTestCase {

  func testOpenGreatBarrier() {
    let app = XCUIApplication()
    let customURL = URL(string: "landmarks://great-barrier")!
    XCUIDevice.shared.system.open(customURL)

    XCTAssertTrue(app.wait(for: .runningForeground, timeout: 10.0))
    XCTAssertTrue(app.staticTexts["Great Barrier Reef"].waitForExistence(timeout: 10.0))
  }
}
```


17:13 - [Perform an accessibility audit during an automation](https://developer.apple.com/videos/play/wwdc2025/344/?time=1033)

```swift
// Perform an accessibility audit during an automation
import XCTest

class LandmarksUITests: XCTestCase {
  
  func testPerformAccessibilityAudit() {
    let app = XCUIApplication()
    try app.performAccessibilityAudit()
  }

}
```

## Summary

- 0:00 - [Introduction and agenda](https://developer.apple.com/videos/play/wwdc2025/344/?time=0)
- Xcode's UI automation, powered by the XCUIAutomation framework, enables you to test your apps comprehensively. It works alongside Swift Testing and the XCTest framework, providing a complete app-testing suite. UI automation tests validate an app's user experience, its integration with Apple hardware, and the behavior of common workflows, complementing unit tests which focus on app logic and data models. The process involves three main phases: Recording interactions, which are then automatically converted into code. Replaying these interactions across various devices, languages, regions, and orientations. Reviewing video recordings and results of each UI test run. These automations allow you to test your apps as real users would, ensuring accessibility, language support, and hardware integration. It is supported on all Apple platforms, enabling you to build and run automation tests once for multiple devices, such as iPhone, iPad, Mac, Apple TV, and Apple Watch, with a single click.

- 3:58 - [UI automation overview](https://developer.apple.com/videos/play/wwdc2025/344/?time=238)
- UI automation mimics user interactions with an app, launching it, tapping buttons, and navigating through screens. It relies on the app's accessibility features — which provide labels, values, and unique identifiers for elements — to perform these actions independently. Accessibility, a core Apple value, ensures apps are usable by everyone and also powers UI automation.

- 6:26 - [Prepare your app for automation](https://developer.apple.com/videos/play/wwdc2025/344/?time=386)
- To prepare the app automation, several steps are involved. First, add accessibility identifiers to the app's elements. These identifiers are unique labels written in SwiftUI, UIKit, or AppKit that help automation tools recognize and interact with specific parts of the app. They are particularly useful for elements with localized strings or dynamic content and need to be descriptive, static, and unique within the entire app. Next, conduct a quick review of the app's accessibility using Accessibility Inspector. This tool helps identify and fix any accessibility issues, ensuring that the app is well-prepared for automation. Accessibility Inspector allows you to view and modify accessibility properties for each view, making the app more usable for both assistive technologies and automation scripts. Finally, add a new UI testing target to the Xcode project. This target provides a dedicated space for storing the automation code. Once the target is set up, you can begin recording your interactions with the app, which will be automatically translated into Swift code, streamlining the automation process.

- 11:32 - [Record your interactions](https://developer.apple.com/videos/play/wwdc2025/344/?time=692)
- The Landmarks sample project, shown in Xcode and Simulator, demonstrates planning a virtual vacation to Australia. UI recordings capture interactions within the app as code. The example adds a new collection, renames it "Max’s Australian Adventure," and populates it with landmarks like the Great Barrier Reef and Uluru. After the recording stops, the example reviews the generated code, selects appropriate UI queries, and adds validations using XCTest to ensure the app's functionality. The test is then rerun, successfully verifying the creation of the collection and the addition of landmarks. You can further enhance the tests by setting up specific device states, simulating locations, and performing accessibility audits.

- 17:30 - [Replay in multiple configurations](https://developer.apple.com/videos/play/wwdc2025/344/?time=1050)
- Xcode Cloud enables automated app testing in various configurations at-desk and in the cloud, as well as for different languages and devices. Test plans organize tests, set system settings, and manage properties. Configurations allow testing in specific locales, including languages with longer strings or right-to-left scripts. Xcode Cloud runs tests in the cloud, saving videos and screenshots of failures for review. An entire team can view run history, logs, and results, facilitating collaboration and remote monitoring. Advanced configurations and further details are available in Developer Documentation.

- 20:54 - [Review videos and results](https://developer.apple.com/videos/play/wwdc2025/344/?time=1254)
- The Xcode test report provides a comprehensive tool for analyzing test results. Upon identifying a failed test run, you can access video recordings and detailed descriptions. The report overlays UI interactions on the video and includes a timeline with failure diamonds for quick navigation. You can view present UI elements at the failure point, receive code suggestions, and directly edit your test code. After making corrections, the test can be rerun, and the report allows you to verify functionality across different languages and layouts, ultimately enhancing app quality and accessibility.

- 24:16 - [Next steps](https://developer.apple.com/videos/play/wwdc2025/344/?time=1456)
- For more information on unit testing and Swift testing, see "Meet Swift Testing" session from WWDC24; for questions or feedback, visit the Developer Forums.