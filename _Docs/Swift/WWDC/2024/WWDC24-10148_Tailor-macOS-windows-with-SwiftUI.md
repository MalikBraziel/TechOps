---
URL: https://developer.apple.com/videos/play/wwdc2024/10148/
Title: Tailor macOS windows with SwiftUI
Topics: SwiftUI, Windows
Date_Published: June 2024
Swift_Version_At_Publish: Swift 6.0
---

# Tailor macOS windows with SwiftUI

Make your windows feel tailor-made for macOS. Fine-tune your app's windows for focused purposes, ease of use, and to express functionality. Use SwiftUI to style window toolbars and backgrounds. Arrange your windows with precision, and make smart decisions about restoration and minimization.

### Chapters

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2024/10148/?time=0)
- 2:30 - [Customizing Toolbars](https://developer.apple.com/videos/play/wwdc2024/10148/?time=150)
- 5:45 - [Refining Window Behaviors](https://developer.apple.com/videos/play/wwdc2024/10148/?time=345)
- 8:15 - [Adjusting Window Placement](https://developer.apple.com/videos/play/wwdc2024/10148/?time=495)

### Resources

- [SwiftUI Documentation](https://developer.apple.com/documentation/swiftui)
- [HD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2024/10148/6/0c2c6210-4f59-409a-ba23-36a7895563d3/downloads/wwdc2024-10148_hd.mp4?dl=1)
- [SD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2024/10148/6/0c2c6210-4f59-409a-ba23-36a7895563d3/downloads/wwdc2024-10148_sd.mp4?dl=1)

### Related Videos

#### WWDC24

- [Bring multiple windows to your SwiftUI app](https://developer.apple.com/videos/play/wwdc2024/10148/)
- [Work with windows in SwiftUI](https://developer.apple.com/videos/play/wwdc2024/10148/)

## Transcript

<Transcript>

0:07

Hi, I am Haotian, an engineer on the SwiftUI team, and in this video, I am going to share how to use new SwiftUI APIs to tailor your macOS application windows.

0:22

Apple revolutionized the desktop experience in 1984 by making it digital. From monochrome, colorized, aqua, and beyond, it has remained the heart of the macOS experience.

0:44

Windows are a fundamental unit for drawing the user interface of an application.

0:53

A typical window has a few recognizable components.

0:58

At the top of the window, there is a toolbar to host the window controls, the title, and toolbar items. The main content of the app sits behind that and the background sits at the very back, casting a shadow to give a sense of layering and depth. I am going to show you how to customize these elements in your windows with an app called Destination Video.

1:31

It is a SwiftUI app built with Scenes like Window and WindowGroup to organize and play videos. If you want to know more about these different scene types, check out "Bring multiple windows to your SwiftUI app", and "Work with windows in SwiftUI".

1:53

Now, I will use new SwiftUI APIs to further tune the windows for my app's content.

2:02

There is the main window, which is the primary interface for navigating through video collections.

2:11

The about window, for showing the application version and support information.

2:20

And the video player window, for media playback.

2:26

I will customize each of these windows for the kind of content they present by applying changes to window toolbars, window behaviors, and window placements. I will start with customizing the toolbar of the main window in Destination Video.

2:48

It is created from a WindowGroup with a content view.

2:55

Right now, the window shows the toolbar and title. My design features a large image below them. To highlight the image, I remove both the title and the toolbar background using the .toolbar(removing) modifier, And the .toolbarBackgroundVisibility() modifier.

3:18

And now, the large image extends to the top edge of the window. Even though the title is hidden from the user interface, it is still associated with the window. It will be used by accessibility, and other features. For example, the main menu item will continue to show the window title.

3:43

With just a few lines of code, I have customized the toolbar elements to fit my design, with an emphasis on the window content. Next, I will refine the behaviors of the About window.

3:58

Every Mac app has an About window, accessed from the main menu. It shows the app’s version number and other details. For Destination Video, I’ve decided to make a custom About window that better matches the main catalog window’s minimal look and feel.

4:20

To get started, I add some of the same modifiers that I used in the previous section to hide the title and remove the toolbar background.

4:32

I use the .containerBackground() modifier to replace the window background color with a material, giving the window a little extra style. Materials are partially transparent, like frosted glass, allowing color from the desktop to shine through.

4:53

The green Zoom window control was disabled because the content has a fixed size. The About window displays static information and is always reachable from the main menu, so I would like to disable the yellow Minimize control.

5:12

I use the .windowMinimizeBehavior() modifier to disable it.

5:18

I am also going to customize the state restoration behavior of the About window. State restoration saves the size and position of windows when the app quits. Then, it re-opens them automatically the next time the app launches. Windows in SwiftUI apps are restored automatically. But the About window should not. So I disable this with the .restorationBehavior() scene modifier. Now, I’ve got my windows looking great and behaving nicely. Last, I will adjust exactly where they appear on screen.

6:01

This is especially important for the video player window. Its ideal size depends on the video it is playing, and the screen it is playing on, highlighted by the blue solid wire frame and the yellow dotted wire frame respectively. The videos come in a variety of sizes. Some are very small and fit easily onto the screen. Others are larger than the screen, in one or both dimensions whether because the video uses a vertical format, or the screen does. Playback needs to work with any number of external monitor configurations.

6:51

My goal with the video player window is to use the best position and size, given the video, and the screen it is playing on.

7:02

The first thing I do is specify the initial placement of a newly created player window, using the .defaultWindowPlacement modifier.

7:14

This modifier takes a closure with two parameters: a proxy view for querying the size of the content, and a context value with information about the display. I compute the window’s ideal size by calling .sizeThatFits() on the content. And I acquire the usable region by getting the visibleRect from the display, which automatically accounts for any space taken by the menu bar and dock. The video should be shown at its native size, but if it is too big for the screen, it should be scaled down to fit. I am returning a placement with this size and no explicit position. The window will appear centered by default.

8:12

I also need to consider the different ways video player windows can be resized while they are open.

8:19

For example, choosing Zoom from the Window menu automatically makes a window larger. Choosing Zoom again will restore the window to its previous size.

8:36

The .windowIdealPlacement modifier controls how large a zoomed window gets. My goal is to ensure that a zoomed window is as large as it can be while preserving its ideal aspect ratio.

8:54

The closure I provide is similar to the one for the ideal placement. As before, I use the context value to compute the display’s visible region. This time I want the window to grow to fit the display. I use my zoomToFit helper function for this.

9:18

With these few changes, the video player window feels much more aware of its content and the display.

9:27

By customizing my app windows, each one now feels purpose built for its task.

9:35

A few new APIs can go a long way. There are a lot more window customizations to explore in macOS Sequoia. For example, you can build borderless windows using the plain window style.

9:53

Or, create experiences like welcome windows that conditionally show first on launch.

10:02

These are just a few of the possibilities, and I hope they will inspire your own projects. Going forward... Style your toolbars to complement the content and purpose of your windows. Refine window behaviors to match the function of your app’s windows. Fine tune window placement to provide a great experience across all display configurations. Check out SwiftUI documentation and experiment with new APIs to reflect your design goals.

10:41

Thanks for watching, I wonder if you are watching me in a borderless video window!

</Transcript>

## Code

### 3:11 - Style Toolbars - Removing Title
```swift
.toolbar(removing: title)
```

### 3:14 - Style Toolbars - Removing Toolbar Background
```swift
.toolbarBackgroundVisibility(.hidden, for: .windowToolbar)
```

### 4:33 - Refine Behaviors - Adding Container Background
```swift
.containerBackground(.thickMaterial, for: .window)
```

### 5:13 - Refine Behaviors - Minimize Behavior
```swift
.windowMinimizeBehavior(.disabled)
```

### 5:44 - Refine Behaviors - Restoration Behavior
```swift
.restorationBehavior(.disabled)
```

### 7:11 - Adjust Placement - Default Placement
```swift
WindowGroup("Video Player", id: "player") {
    PlayerView()
}
.defaultWindowPlacement { content, context in
    var size = content.sizeThatFits(.unspecified)
    let displayBounds = context.defaultDisplay.visibleRect
    // modify size based on display bounds
    // example:
    // size = shrinkToFit(
    //  ideal: size, bounds: displayBounds)
    return WindowPlacement(size: size)
}
```

### 8:35 - Adjust Placement - Ideal Placement
```swift
WindowGroup("Video Player", id: "player") {
    PlayerView()
}
.windowIdealPlacement { content, context in
    var size = content.sizeThatFits(.unspecified)
    let displayBounds = context.defaultDisplay.visibleRect
    // modify size based on display bounds
    // example:
    // size = zoomToFit(
    //  ideal: size, bounds: displayBounds)
    return WindowPlacement(size: size)
}
```

### 9:48 - Borderless Window
```swift
.windowStyle(.plain)
```

### 9:53 - Default Launch Behavior
```swift
.defaultLaunchBehavior(.presented)
```

## Summary

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2024/10148/?time=0)
- Use new SwiftUI APIs to tailor macOS application windows for better user experience.

- 2:30 - [Customizing Toolbars](https://developer.apple.com/videos/play/wwdc2024/10148/?time=150)
- Customize window toolbars by removing titles and backgrounds to emphasize content.

- 5:45 - [Refining Window Behaviors](https://developer.apple.com/videos/play/wwdc2024/10148/?time=345)
- Adjust window behaviors like minimizing, state restoration, and backgrounds for specific use cases.

- 8:15 - [Adjusting Window Placement](https://developer.apple.com/videos/play/wwdc2024/10148/?time=495)
- Control window placement and resizing based on content and display characteristics for optimal viewing.

- New SwiftUI APIs for macOS windows allow customization of toolbars, behaviors, and placements to create purpose-built interfaces.
