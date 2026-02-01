---
URL: https://developer.apple.com/videos/play/wwdc2025/231/
Title: Meet WebKit for SwiftUI
Topics:
Date_Published: June 2025
Swift_Version_At_Publish: Swift 6.1
---


# Meet WebKit for SwiftUI

Discover how you can use WebKit to effortlessly integrate web content into your SwiftUI apps. Learn how to load and display web content, communicate with webpages, and more.

### Chapters

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2025/231/?time=0)
- 1:54 - [Load and display web content](https://developer.apple.com/videos/play/wwdc2025/231/?time=114)
- 9:37 - [Communicate with the page](https://developer.apple.com/videos/play/wwdc2025/231/?time=577)
- 15:44 - [Customize content interaction](https://developer.apple.com/videos/play/wwdc2025/231/?time=944)

### Resources

- [SwiftUI](https://developer.apple.com/documentation/SwiftUI)
- [HD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2025/231/5/b6c4d9dc-8351-437b-bc3b-95372381cf23/downloads/wwdc2025-231_hd.mp4?dl=1)
- [SD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2025/231/5/b6c4d9dc-8351-437b-bc3b-95372381cf23/downloads/wwdc2025-231_sd.mp4?dl=1)

### Related Videos

#### WWDC25

- [Unlock GPU computing with WebGPU](https://developer.apple.com/videos/play/wwdc2025/236)
- [What’s new for the spatial web](https://developer.apple.com/videos/play/wwdc2025/237)
- [What’s new in Safari and WebKit](https://developer.apple.com/videos/play/wwdc2025/233)
- [What’s new in Swift](https://developer.apple.com/videos/play/wwdc2025/245)
- [What’s new in SwiftUI](https://developer.apple.com/videos/play/wwdc2025/256)

## Transcript

<Transcript>

0:06

Hi, I’m Richard, an engineer on the WebKit team.

0:11

WebKit is the browser engine at the heart of Safari, Mail, and countless apps across iOS, iPadOS, visionOS, and macOS.

0:21

For years, WebKit has empowered developers like you to build rich, dynamic experiences by bringing the full power and flexibility of the web directly into your apps, leveraging the strength of Apple’s platforms.

0:37

This year, I'm thrilled to introduce you to WebKit for SwiftUI. With our all-new SwiftUI API, it’s now easier than ever to integrate web content into your apps.

0:50

We think you’re going to love using WebKit for SwiftUI to combine the powerful web experiences supported by WebKit with the ease of use of SwiftUI.

1:00

With the new API, displaying beautiful web content is as easy as creating a web view and providing it with a URL, and works across all platforms that WebKit supports. It’s now so easy to get started using WebKit and SwiftUI.

1:16

Now, let’s go over some of the incredible new ways you can use this API to build your app.

1:22

We’ll first learn the different ways you can load and display your web content, including loading local resources. After that, we’ll talk about all the different ways you can respond to changes in your web content, and also how you can cause changes to the content.

1:39

Finally, we’ll go over how to customize how people interact with your web content using existing and brand new view modifiers, like enabling find-in-page, setting the scroll position, and many more.

1:54

There is a lot of ground to cover, so let’s dive in.

1:57

To show all the cool things the new API can do, I’m going to build an app to browse information about different lakes around the world.

2:06

I'll display the beautiful web content throughout the app and show you how to load the contents of the articles and also how to observe navigations and communicate with JavaScript to really bring your app to life. and I’ll show you how to customize the browsing experience of the web content to exactly the way you want it. Lastly, we'll add some finishing touches using a combination of new and familiar view modifiers to enhance the app’s look and interactivity.

2:37

Let's get started building the app. I have some of the SwiftUI code already set up, so we can focus on integrating the new WebKit APIs. Let me start with the basics, displaying web content.

2:50

The new WebView API makes this incredibly simple. This is a brand new SwiftUI view designed to effortlessly display any web content.

3:01

Like we saw before, to use a WebView, all you need to do is just give it some URL, and it’ll automatically load and display its contents. But of course, you might not want to use WebView just to display a single URL. In this example, we have a button that toggles between two URLs, and we again give the URL to the WebView. Now, whenever the toggle is changed, the web view will automatically load and navigate to the new URL.

3:31

It's as simple as that. All right, but maybe you want to do something a bit more interesting with your web content, like reacting to changes to its properties.

3:42

In these cases, just create a WebPage and then connect it to your WebView. So now, any changes made to the web content will be available through the web page, like the page’s title.

3:56

WebPage is a brand new Observable class that represents your web content. It's been designed from the ground up to work perfectly with Swift and SwiftUI.

4:08

You use WebPage to load, control, and communicate with web content. WebPage can be used completely on its own. But when combined with WebView, you can build rich experiences for your web content.

4:26

Let’s begin by showing off some of the different ways you can load web content using WebPage.

4:32

One of the most common things you might want to do is load a remote URL into your web page. You can do this by simply using the load API with a URL request. But WebPage isn’t limited to just loading URLs. You can also load HTML content directly by providing the HTML string and a base URL to the API. The base URL is used when the system resolves relative URLs within the HTML.

5:03

WebPage also supports loading different types of data directly, like web archive data. Just give it the data they want to load, its MIME type and its character encoding, and a base URL.

5:17

In my app, I’ll start by making an ArticleViewModel class that represents a specific article. And inside it, I’ll put the associated WebPage and Lake article. For SwiftUI to be able to easily react to any changes on the page and the article, I’ll make the class Observable. Now that I have the foundation of the class set up, I’ll add a function to actually load the lake’s URL into the web page.

5:46

Now, let’s move on to the View side of things. I’ll create a WebView using the model’s webPage. And I’ll call the loadArticle function of the model when the view first appears. For an extra nice touch, I’ll also use ignoreSafeArea so that the page flows all the way to the bottom of the device.

6:07

Now, when you add a new article URL to the app and open it, it’ll load and display the contents in the detail view. This is a really great start. But to make the experience even better, I’ll provide some pre-loaded articles in the app.

6:24

WebKit handles loading remote URLs and data like you would expect, right out of the box. But it also gives you the power to load content bundled in your app or access local files.

6:36

You can do this using the all-new URLSchemeHandler protocol. Let me take you through how to use it. When you implement your own Scheme Handler, any navigations to a URL with that scheme will go through the handler and use the data that you provide. But before we get into that, let’s first go over what a scheme is.

6:58

The scheme is the part of the URL before the colon, which in this case is the HTTPS scheme. WebKit will handle common schemes like https, file, and about. But for custom schemes, like for example, this lakes scheme, the URLSchemeHandler protocol lets the application code handle loading resources for lakes scheme URLs. To implement your own custom scheme handler, create a type that confirms to the URLSchemeHandler protocol and implement the protocol’s reply function by returning an async sequence of URLSchemeTask results. The function also gives you a URLRequest parameter to decide how to respond. When creating the sequence of events, you first need to yield a URLSchemeTaskResult that contains a URLResponse. After yielding a URLResponse, you then just need to provide some Data. This is great for most cases, but sometimes you want to asynchronously stream data.

8:05

Thanks to the AsyncSequence return type, you can easily do that too. Here, I get a single response asynchronously. And I also receive an AsyncSequence of data values, which I then add to the returned sequence. If the URL scheme task happens to get cancelled at some point, the task inside the function will automatically get canceled too. In my app, I want to have some lakes already pre-populated and loaded so that people can get started right away. To implement this functionality, I’ll put HTML and CSS assets in my app, and then use the custom scheme handler I just made.

8:46

Now, I just need to register the scheme handler with the WebPage.

8:51

To do this, I’ll make a URLScheme using the scheme I want to handle. And in this case, I’ll use lakes again. If you provide a scheme that WebKit already handles, the initializer will return nil. I’ll then create a WebPage Configuration and add the scheme handler to its urlSchemeHandlers dictionary. I’ll also make sure to pass in the configuration when I’m creating the WebPage. With this, I can now create some default LakeArticle values and give them a URL with my custom scheme, so that the web content is loaded from the saved resources in the bundle instead of fetched from the web.

9:33

Now you know how to load and navigate to new pages. When the page finishes loading, I want to populate the sidebar with its table of contents. I can do that by observing the navigation events that happen to the web content, which is super easy to do.

9:50

You can now easily access the navigation state by using the new Observable currentNavigationEvent property on WebPage. Once you have that event, you can get its navigation ID and then take some action based on what kind of event it is.

10:09

Now, I know that's a lot to navigate. So let’s go through the different navigation event types.

10:16

A navigation is made up of multiple sequential events. The navigation always starts with startedProvisionalNavigation.

10:24

You may get a receivedServerRedirect eventif the server redirects the request. You get a committed event when the page has started to receive content for the main frame.

10:36

The finish event arrives when the navigation is complete, although this isn't always guaranteed.

10:42

A navigation can also fail at any point, in which case the failed or failedProvisionalNavigation events are emitted. And when a new navigation starts, the currentNavigationEvent property will now reflect that navigation.

10:59

Usually, you’ll want to be able to continuously react to any navigation that occurs, like when someone clicks on a link or when you call the load function.

11:09

You can do this by using the new Observations API, available in Swift 6.2.

11:16

I’ll use Observations to create an async sequence from currentNavigationEvent, and then use a for-await loop to observe each change to the current event. This way, I can either handle any errors that arise or update the sections of the article once it's finished loading. This makes responding to navigation changes in your web content easier than ever before.

11:41

Along with currentNavigationEvent, There are a bunch of other properties on WebPage that can be observed for changes, and they all work perfectly with SwiftUI.

11:52

For example, I want the navigation bar of the detail view to show the article's title. Well, I can do this by just setting navigationTitle to the title property of the WebPage.

12:05

That was really easy. There are a lot more helpful properties beyond the page’s title, such as the current URL, estimated loading progress, and the theme color of the page, and many more.

12:18

These properties are super useful. But sometimes, you want to get specific information from the page that isn’t one of the standard properties. And so you need something a bit more flexible. And we made that so easy to do too. You can directly evaluate JavaScript to communicate with a page by using the new callJavaScript API.

12:41

All you have to do is write a JavaScript function like normal and then pass it in when you use callJavaScript.

12:48

The return type of callJavaScript is an optional Any value. So make sure to cast it to an appropriate Swift type so that it’s easier to use.

12:58

This makes it effortless to implement my parseSections function by using the page’s HTML and getting all the ids and titles of each section. I’ll also convert the result into an array of sections structs so it's easier to handle.

13:15

Now, the app will display the sections of the article in the sidebar as soon as it loads. WebPage also gives you the option to customize navigation policies exactly how you want them, using the new WebPage.NavigationDeciding protocol.

13:32

In my app, I’ll implement custom navigation policies so that navigations within the web content behave the way I want them to. If there is a link in a page to an external site, I definitely want it to open in my default browser instead of loading within my app. I’ll achieve this by making a new NavigationDecider type that confirms to WebPage.NavigationDeciding.

13:58

This protocol allows you to specify different policies for different steps of your navigation, like before it happens, when you receive a response, and when authentication is needed.

14:10

Since I want to determine if a navigation should be allowed or not based on its URL, I’m going to specify the policy for a navigation action. This function provides the NavigationAction used in the navigation, plus the NavigationPreferences, which you can adjust based on the request. If the url scheme is lakes or the host is lakes.apple.com, I will allow the navigation, since that means that the link is part of the app and not external. If this isn’t the case, I don’t want the WebPage in the app to continue the navigation. So I’ll cancel it and update the urlToOpen property on ArticleViewModel. Now that I have a custom NavigationDecider, I need to set up my web page to use it.

14:59

Going back to ArticleViewModel, I’ll create a new navigation decider and a new urlToOpen property.

15:07

And I’ll update my WebPage to take in the navigation decider so that it uses the policy I specified earlier. Now that the WebPage is configured, there’s this one final step to make this functionality all come together.

15:21

In ArticleView, I’ll listen to changes to the urlToOpen property on the model. If the property is non-nil, I know that the navigation has been canceled. And so I’ll use the openURL SwiftUI environment value to open the url in the default browser.

15:40

Now, navigations work exactly the way I want.

15:44

So now we can move on to the different ways you can customize how people interact with your web content using different view modifiers. Let’s begin by configuring the scrolling behavior so that the web view only bounces vertically.

15:59

By default, web views bounce when scrolled past the vertical or horizontal edges, even if the content is smaller than the web view.

16:08

The standard scrollBounceBehavior modifier lets you customize this behavior and works great with WebView. To configure the horizontal axis to only bounce if the content is larger than the view, the .basedOnSize value can be set for the horizontal axis.

16:27

This is just one of many powerful scrolling customization features that WebView supports. That's not all though. New this year on visionOS is look to scroll, which can easily be configured using a single view modifier.

16:43

On visionOS, WebView supports the new look ScrollInputKind when using the new webViewScrollInputBehavior modifier.

16:52

By default, look to scroll is disabled in WebView. Since we want it enabled in our app, I'll use the modifier and set its behavior to enabled for the look kind.

17:05

Some of these articles are pretty long, so we want to make it really convenient for people to find what they want.

17:11

To make it possible for people to easily be able to search the articles, let’s add Find-In-Page support.

17:19

The existing findNavigator modifier already works perfectly with WebView, so supporting Find-In-Page is really a piece of cake.

17:28

To get the find navigator to display, I’ll add a button to the toolbar of the app.

17:35

On iOS and iPadOS, the find navigator appears as part of the onscreen keyboard when visible or at the bottom of the web view. And on macOS and visionOS, it displays at the top of the web view.

17:49

I think the app is really starting to come together now. Let’s make it even more accessible by creating a great scrolling experience.

17:59

Another easy way of navigating an article is choosing a section in the sidebar and having the web view scroll to that section. I’ll need to sync the scroll position of the web view with this selected section so that you know where you are.

18:13

Let me start by adding functionality so that when a user taps on a section in the sidebar, the web view will scroll to that section. To scroll to a section, I need to determine where it is, which I can do using a JavaScript function I previously set up. To run the script, I’m going to again use callJavaScript. This time, however, I'm going to also provide it with a dictionary of arguments. The keys in this dictionary are represented to JavaScript as local variables, and their values are converted to JavaScript values.

18:47

This is a really powerful yet easy to use way to create generic re-usable JavaScript functions.

18:55

In ArticleView, I’m going to add some state to be able to control the scroll position and the section.

19:02

You associate a scroll position with a WebView by using the new webViewScrollPosition modifier.

19:09

Now, all I need to do is set the scroll position whenever the section changes by simply using scrollTo on the scroll position and giving it the computed position for the section.

19:22

Now that I can scroll to a section using the sidebar, I also want the sidebar to update as I scroll.

19:29

The new WebView onScrollGeometryChange modifier gives you the power to do just that and more.

19:36

Whenever any part of the WebView's scroll geometry changes, like its content offset or size, for example, the modifier will use the transformation you give it and will call its closure if the transformed value changes. In the closure, I’ll compute the section nearest to the new scroll offset and update the selected section. And just like that, the selected section and the scroll position will now be perfectly in sync.

20:04

With that, the Lakes app is now complete. I think that went swimmingly. I combined WebPage and WebView to load and display the articles, and I was even able to pre-populate the app with some default articles. I also enhanced the user experience by showing the table of contents in the sidebar and syncing the scroll position.

20:27

We’ve covered a lot today, so let’s recap what we’ve learned.

20:31

WebKit for SwiftUI is a simple, yet powerful, to use API that enables the seamless integration of web content into your app.

20:41

It provides the ability to load and customize the appearance of web content. URLSchemeHandling allows you to manage local web resources effectively. On top of that, a set of powerful view modifiers like webViewScrollPosition and findNavigator allow you to tailor the user experience of your WebView.

21:02

These are just a few of the features of WebKit for SwiftUI. So I highly recommend referring to the Developer Documentation for more comprehensive information. And of course, since this is SwiftUI, your web content will look amazing across all platforms.

21:19

If you’re already using the UIKit or AppKit WebKit API in a SwiftUI app, or if you’re making an app from scratch, it’s now a great time to try out migrating to the new API. Make sure to also check out what else is new in Swift and SwiftUI, like the new Observations API. And finally, please share your feedback once you try this new API with any changes or features you think are missing.

21:46

I hope you'll join us in ushering in this fantastic new era of WebKit.

</Transcript>

## Summary

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2025/231/?time=0)
- WebKit, the browser engine powering Safari and many Apple apps, now has a SwiftUI API. This new API simplifies integrating web content into SwiftUI apps across iOS, iPadOS, visionOS, and macOS, enabling you to combine web experiences with SwiftUI's ease of use, and customize web content interactions.

- 1:54 - [Load and display web content](https://developer.apple.com/videos/play/wwdc2025/231/?time=114)
- A SwiftUI app that allows people to browse information about lakes worldwide demonstrates this new API. The app utilizes the new WebView API, a SwiftUI view designed to effortlessly display web content. With just a URL, the WebView can automatically load and show web pages, and you can easily update it to display different content based on someone's interactions, such as toggling between URLs. WebPage is an Observable class that represents web content and enables you to load, control, and communicate. It allows for the loading of remote URLs, HTML content directly, and various types of data, providing flexibility in how web content is presented within the app. In the example app, an 'ArticleViewModel' class manages the data for each article, including the associated WebPage. This allows SwiftUI to react easily to changes in the page and article content. The app's interface is then set up, with a WebView displaying the content loaded from the 'ArticleViewModel'. To provide a seamless user experience, the app includes pre-loaded articles. The new 'URLSchemeHandler' protocol handles custom URLs within the app. This allows the app to load content bundled directly within the application, such as HTML and CSS assets, rather than fetching everything from the web. By implementing a custom scheme handler, the example app can efficiently manage and display pre-populated lake information, giving people an immediate starting point.

- 9:37 - [Communicate with the page](https://developer.apple.com/videos/play/wwdc2025/231/?time=577)
- The new Observable 'currentNavigationEvent' property on WebPage in Swift 6.2 simplifies monitoring web content navigation. You can now easily observe navigation events, such as page starts, redirects, content commits, finishes, and failures, using the Observations API. This allows for real-time updates, like populating a sidebar with the table of contents once the page loads. Beyond navigation events, WebPage offers various observable properties like title, URL, and loading progress, which seamlessly integrate with SwiftUI. For more complex tasks, the 'callJavaScript' API enables direct communication with the page's HTML. You can also customize navigation policies using the 'WebPage.NavigationDeciding' protocol, determining how navigation is handled, such as opening external links in the default browser.

- 15:44 - [Customize content interaction](https://developer.apple.com/videos/play/wwdc2025/231/?time=944)
- WebKit for SwiftUI enables you to seamlessly integrate web content into apps and customize appearance. Use various view modifiers to tailor user experience. For example, you can configure the 'scrollBounceBehavior' modifier to disable horizontal bouncing unless the content exceeds the view size. 'look to scroll' is new in visionOS. You can enable it using the 'webViewScrollInputBehavior' modifier, allowing someone to scroll by looking at the content. You can easily add Find-In-Page support by using the 'findNavigator' modifier, and place a button in the toolbar to display the find navigator. To enhance accessibility and navigation, sync the scroll position of the WebView with a selected section in a sidebar. Do this by using JavaScript functions to determine the section's position and then associating the position with the WebView using the 'webViewScrollPosition' modifier. The 'onScrollGeometryChange' modifier keeps the sidebar updated as someone scrolls. WebKit for SwiftUI provides a simple yet powerful API to create a great user experience across all platforms. Migrate to this new API and share your feedback.