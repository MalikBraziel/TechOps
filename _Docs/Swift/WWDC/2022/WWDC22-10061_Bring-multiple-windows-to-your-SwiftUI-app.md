---
URL: https://developer.apple.com/videos/play/wwdc2022/10061/
Title: Bring multiple windows to your SwiftUI app
Topics: SwiftUI, Windows
Date_Published: June 2022
Swift_Version_At_Publish: Swift 5.7
---

# Bring multiple windows to your SwiftUI app

Discover the latest SwiftUI APIs to help you present windows within your app's scenes. We'll explore how scene types like MenuBarExtra can help you easily build more kinds of apps using SwiftUI. We'll also show you how to use modifiers that customize the presentation and behavior of your app windows to make even better macOS apps.

### Chapters

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2022/10061/?time=0)
- 1:15 - [Scene Types Overview](https://developer.apple.com/videos/play/wwdc2022/10061/?time=75)
- 2:30 - [New Scene Types: Window and MenuBarExtra](https://developer.apple.com/videos/play/wwdc2022/10061/?time=150)
- 4:45 - [Composing Scenes](https://developer.apple.com/videos/play/wwdc2022/10061/?time=285)
- 6:20 - [Window Presentation APIs](https://developer.apple.com/videos/play/wwdc2022/10061/?time=380)
- 8:10 - [Customizing Scenes](https://developer.apple.com/videos/play/wwdc2022/10061/?time=490)
- 10:00 - [Code Examples](https://developer.apple.com/videos/play/wwdc2022/10061/?time=600)

### Resources

- [Bringing multiple windows to your SwiftUI app](https://developer.apple.com/tutorials/app-dev-training/bringing-multiple-windows-to-your-swiftui-app)
- [DocumentGroup](https://developer.apple.com/documentation/swiftui/documentgroup)
- [MenuBarExtra](https://developer.apple.com/documentation/swiftui/menubarextra)
- [NewDocumentAction](https://developer.apple.com/documentation/swiftui/environmentvalues/newdocumentaction)
- [OpenDocumentAction](https://developer.apple.com/documentation/swiftui/environmentvalues/opendocumentaction)
- [OpenWindowAction](https://developer.apple.com/documentation/swiftui/environmentvalues/openwindowaction)
- [Value and Reference Types](https://developer.apple.com/documentation/swiftui/value-and-reference-types)
- [Window](https://developer.apple.com/documentation/swiftui/window)
- [WindowGroup](https://developer.apple.com/documentation/swiftui/windowgroup)
- [HD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2022/10061/6/0c2c6210-4f59-409a-ba23-36a7895563d3/downloads/wwdc2022-10061_hd.mp4?dl=1)
- [SD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2022/10061/6/0c2c6210-4f59-409a-ba23-36a7895563d3/downloads/wwdc2022-10061_sd.mp4?dl=1)

### Related Videos

#### WWDC22

- [SwiftUI on iPad: Add toolbars, titles, and more](https://developer.apple.com/videos/play/wwdc2022/10062/)
- [SwiftUI on iPad: Organize your interface](https://developer.apple.com/videos/play/wwdc2022/10063/)
- [The SwiftUI cookbook for navigation](https://developer.apple.com/videos/play/wwdc2022/10064/)
- [What's new in SwiftUI](https://developer.apple.com/videos/play/wwdc2022/10069/)

## Transcript

- [0:00] ♪ Mellow instrumental hip-hop music ♪ Hi, everyone. I'm Jeff, an engineer on the SwiftUI team. Today, I'm excited to talk to you about bringing multiple windows to your SwiftUI app on iPadOS and macOS. In this session, we'll open with an overview of the various scene types in the SwiftUI lifecycle, including a few new types we're introducing. Followed by showing how these scene types can be composed together, by adding auxiliary scenes. Then we'll cover some new APIs for opening windows for a particular scene in your app. And we'll wrap things up with a few ways for customizing an app's scenes.

- [1:15] Let's start with an overview of the existing scene types before digging in to some new ones. You'll recall from previous sessions that apps in SwiftUI are composed of scenes and views. Scenes commonly represent their contents with a window onscreen. For example, here is an app I've built to keep track of the books I'm reading. It's defined as a single window group which shows my reading list in a platform-appropriate way. On platforms which support multiple windows, such as iPadOS and macOS, a scene can represent itself with several such windows. The behaviors and representation of a scene vary based on the type used. For example, a scene may only represent itself with a single instance, regardless of platform capabilities.

- [2:30] Let's take a look at the current list of scene types in SwiftUI. WindowGroup provides a way to build data-driven applications across all of Apple's platforms. DocumentGroup lets you build document-based apps on iOS and macOS. And Settings defines an interface for representing in-app settings values on macOS. These scene types can be composed together to extend your app's functionality. We're extending the list of scenes with two new additions. The first of which is Window, a scene which represents a single, unique window on all platforms; as well as a new scene type for macOS: MenuBarExtra, which renders as a persistent control in the system menu bar.

- [4:45] As with the other scene types, you can use Window and MenuBarExtra both as a standalone scene, or composed with other scenes in your app. Unlike WindowGroup, the Window scene will only ever represent its contents in a single, unique window instance. This characteristic can be useful when the contents of your scene represents some global app state that would not necessarily fit well with WindowGroups' multi-window presentation style on macOS and iPadOS. For example, a game may wish to only allow for a single main window to render its contents. MenuBarExtra is a new macOS-only scene type which behaves a little differently from our other scenes. Rather than rendering its contents in a window, it will place its label in the menu bar and show its contents in either a menu or window which is anchored to the label. Additionally, it will be useable as long as its associated app is running, regardless of whether that app is frontmost. MenuBarExtra is great for creating standalone utility apps that provide easy access to their functionality. Or it can be composed with other scenes to provide an alternate way to access your app's functionality. It also supports two rendering styles: the default style, which shows the contents in a menu which pulls down from the menu bar, as well as a style that presents its contents in a chromeless window anchored to the menu bar. With the addition of these two new scene types, SwiftUI apps can represent an even richer set of functionality across all of our platforms.

- [6:20] Let's see how these new APIs can be used in conjunction with our existing scene types. Here's the definition of my BookClub app that I showed earlier. It currently consists of a single window group. On macOS, my BookClub app could benefit from an additional window to display our reading activity over time. This is a great example of how macOS apps can make use of the additional screen real estate and flexible windowing arrangements present on that platform. We'll add an auxiliary scene to our app for representing this interface. Our Activity window's data is derived from our overall app state, so a window scene is the ideal choice for it. Opening multiple windows with the same state would not fit well with our design. The title provided to our scene will be used as the label for a menu item which is added to a section of the Window menu. When selecting this item, the scene's window will be opened if not already so. Otherwise, it will be brought to the front.

- [8:10] Now that we've covered adding an auxiliary scene to our BookClub app, I'd like to discuss some of the new scene presentation APIs we're adding and how you can integrate them into your app to provide richer experiences. Our BookClub app has a context menu that can be invoked for any book in our Content List pane. This context menu will include a button for triggering our window presentation. We'll fill in the details shortly. SwiftUI provides several new callable types via the environment for presenting windows tied to the scenes your app defines. The first of these is openWindow action, which can present windows for either a WindowGroup or window scene. The identifier passed to the action must match an identifier for a scene defined in your app. openWindow action can also take a presentation value, which the presented scene will use to display its contents. This form of the action is only supported by WindowGroup, using a new initializer that we'll take a look at shortly. The type of the value must match against the type provided to the scene's initializer. There are also two callable types in the environment for presenting document windows: newDocument action, which supports opening new document windows for both FileDocuments and ReferenceFileDocuments. This action requires that the corresponding DocumentGroup in your app is defined with an editor role. The document provided to this action will be created each time the window is presented. For presenting document windows where the contents are provided by an existing file on disk, there is the openDocument action. This action takes a URL to the file you wish to open. Your app must define a DocumentGroup for presenting the window, and the document type for that group must allow for reading the type of the file at the provided URL.

- [10:00] Revisiting our button, we'll add the openWindow environment property to our view. Since this type is a callable, we can just call it directly from our button's action. Our Book type conforms to identifiable, so we'll pass its identifier as the value to present. Now, before we move on, I'd like to discuss the values passed to the openWindow action. I noted that I'm passing the book's identifier, which is a value of the UUID type. In general, you'll want to prefer to use your model's identifier like this, rather than the value itself. Note that our Book type is a value type. As such, if we were to use it as the presented value, our new window would get a copy of the one which origi...

## Code

### Book Club app with auxiliary scene

```swift
import SwiftUI
@main
struct BookClub: App {
    @StateObject private var store = ReadingListStore()
    var body: some Scene {
        WindowGroup {
            ReadingListViewer(store: store)
        }
        Window("Activity", id: "activity") {
            ReadingActivity(store: store)
        }
        WindowGroup("Book Details", for: Book.ID.self) { $bookId in
            BookDetail(id: $bookId, store: store)
        }
    }
}
struct ReadingListViewer: View {
    @ObservedObject var store: ReadingListStore
    var body: some View {
        Text("Reading List")
    }
}
struct ReadingActivity: View {
    @ObservedObject var store: ReadingListStore
    var body: some View {
        Text("Reading Activity")
    }
}
struct BookDetail: View {
    @Binding var id: Book.ID?
    @ObservedObject var store: ReadingListStore
    var body: some View {
        Text("Book Details")
    }
}
struct Book: Identifiable {
    var id: UUID
}
class ReadingListStore: ObservableObject {
}
```

### Book Club app with book details Scene

```swift
import SwiftUI
@main
struct BookClub: App {
    @StateObject private var store = ReadingListStore()
    var body: some Scene {
        WindowGroup {
            ReadingListViewer(store: store)
        }
        Window("Activity", id: "activity") {
            ReadingActivity(store: store)
        }
        WindowGroup("Book Details", for: Book.ID.self) { $bookId in
            BookDetail(id: $bookId, store: store)
        }
    }
}
struct ReadingListViewer: View {
    @ObservedObject var store: ReadingListStore
    var body: some View {
        Text("Reading List")
    }
}
struct ReadingActivity: View {
    @ObservedObject var store: ReadingListStore
    var body: some View {
        Text("Reading Activity")
    }
}
struct BookDetail: View {
    @Binding var id: Book.ID?
    @ObservedObject var store: ReadingListStore
    var body: some View {
        Text("Book Details")
    }
}
struct Book: Identifiable {
    var id: UUID
}
class ReadingListStore: ObservableObject {
}
```

### Removing default commands for the book details scene

```swift
import SwiftUI
@main
struct BookClub: App {
    @StateObject private var store = ReadingListStore()
    var body: some Scene {
        WindowGroup {
            ReadingListViewer(store: store)
        }
        Window("Activity", id: "activity") {
            ReadingActivity(store: store)
        }
        WindowGroup("Book Details", for: Book.ID.self) { $bookId in
            BookDetail(id: $bookId, store: store)
        }
        .commandsRemoved()
    }
}
struct ReadingListViewer: View {
    @ObservedObject var store: ReadingListStore
    var body: some View {
        Text("Reading List")
    }
}
struct ReadingActivity: View {
    @ObservedObject var store: ReadingListStore
    var body: some View {
        Text("Reading Activity")
    }
}
struct BookDetail: View {
    @Binding var id: Book.ID?
    @ObservedObject var store: ReadingListStore
    var body: some View {
        Text("Book Details")
    }
}
struct Book: Identifiable {
    var id: UUID
}
class ReadingListStore: ObservableObject {
}
```

### Extracting reading activity into custom scene

```swift
import SwiftUI
@main
struct BookClub: App {
    @StateObject private var store = ReadingListStore()
    var body: some Scene {
        WindowGroup {
            ReadingListViewer(store: store)
        }
        ReadingActivityScene(store: store)
        WindowGroup("Book Details", for: Book.ID.self) { $bookId in
            BookDetail(id: $bookId, store: store)
        }
        .commandsRemoved()
    }
}
struct ReadingActivityScene: Scene {
    @ObservedObject var store: ReadingListStore
    var body: some Scene {
        Window("Activity", id: "activity") {
            ReadingActivity(store: store)
        }
    }
}
struct ReadingListViewer: View {
    @ObservedObject var store: ReadingListStore
    var body: some View {
        Text("Reading List")
    }
}
struct ReadingActivity: View {
    @ObservedObject var store: ReadingListStore
    var body: some View {
        Text("Reading Activity")
    }
}
struct BookDetail: View {
    @Binding var id: Book.ID?
    @ObservedObject var store: ReadingListStore
    var body: some View {
        Text("Book Details")
    }
}
struct Book: Identifiable {
    var id: UUID
}
class ReadingListStore: ObservableObject {
}
```

### Applying the defaultPosition modifier

```swift
struct ReadingActivityScene: Scene {
    @ObservedObject var store: ReadingListStore
    var body: some Scene {
        Window("Activity", id: "activity") {
            ReadingActivity(store: store)
        }
        .defaultPosition(.topTrailing)
    }
}
class ReadingListStore: ObservableObject {
}
```

### Applying the defaultSize modifier

```swift
struct ReadingActivityScene: Scene {
    @ObservedObject var store: ReadingListStore
    var body: some Scene {
        Window("Activity", id: "activity") {
            ReadingActivity(store: store)
        }
        #if os(macOS)
        .defaultPosition(.topTrailing)
        .defaultSize(width: 400, height: 800)
        #endif
    }
}
class ReadingListStore: ObservableObject {
}
```

### Applying the keyboardShortcut modifier

```swift
struct ReadingActivityScene: Scene {
    @ObservedObject var store: ReadingListStore
    var body: some Scene {
        Window("Activity", id: "activity") {
            ReadingActivity(store: store)
        }
        #if os(macOS)
        .defaultPosition(.topTrailing)
        .defaultSize(width: 400, height: 800)
        #endif
        #if os(macOS) || os(iOS)
        .keyboardShortcut("0", modifiers: [.option, .command])
        #endif
    }
}
class ReadingListStore: ObservableObject {
}
```

## Summary

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2022/10061/?time=0)
- SwiftUI APIs for presenting windows within app scenes, including new scene types and customization options.

- 1:15 - [Scene Types Overview](https://developer.apple.com/videos/play/wwdc2022/10061/?time=75)
- Overview of existing scene types like WindowGroup, DocumentGroup, and Settings, and how they represent app content.

- 2:30 - [New Scene Types: Window and MenuBarExtra](https://developer.apple.com/videos/play/wwdc2022/10061/?time=150)
- Introduction to Window (single unique window) and MenuBarExtra (macOS menu bar control) scene types for richer app functionality.

- 4:45 - [Composing Scenes](https://developer.apple.com/videos/play/wwdc2022/10061/?time=285)
- Composing scene types together to extend app functionality, using auxiliary scenes for additional interfaces.

- 6:20 - [Window Presentation APIs](https://developer.apple.com/videos/play/wwdc2022/10061/?time=380)
- New environment values like openWindow, newDocument, and openDocument for programmatically presenting windows and documents.

- 8:10 - [Customizing Scenes](https://developer.apple.com/videos/play/wwdc2022/10061/?time=490)
- Modifiers like defaultPosition, defaultSize, and keyboardShortcut for customizing scene presentation and behavior.

- 10:00 - [Code Examples](https://developer.apple.com/videos/play/wwdc2022/10061/?time=600)
- Practical code examples demonstrating scene composition, window presentation, and customization.

- New SwiftUI scene types and APIs enable building more sophisticated multi-window apps with better integration across platforms.
