---
URL: https://developer.apple.com/videos/play/wwdc2023/10157/
Title: Wind your way through advanced animations in SwiftUI
Topics: SwiftUI
Date_Published: June 2023
Swift_Version_At_Publish: Swift 5.8
---

# Wind your way through advanced animations in SwiftUI

Discover how you can take animation to the next level with the latest updates to SwiftUI. Join us as we wind our way through animation and build out multiple steps, use keyframes to add coordinated multi-track animated effects, and combine APIs in unique ways to make your app spring to life.

### Chapters

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2023/10157/?time=0)
- 2:23 - [Animation phases](https://developer.apple.com/videos/play/wwdc2023/10157/?time=143)
- 8:12 - [Keyframes](https://developer.apple.com/videos/play/wwdc2023/10157/?time=492)
- 15:07 - [Tips and tricks](https://developer.apple.com/videos/play/wwdc2023/10157/?time=907)

### Resources

- [HD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2023/10157/6/8E2B8F8F-8F8F-4F8F-8F8F-8F8F8F8F8F8F/downloads/wwdc2023-10157_hd.mp4?dl=1)
- [SD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2023/10157/6/8E2B8F8F-8F8F-4F8F-8F8F-8F8F8F8F8F8F/downloads/wwdc2023-10157_sd.mp4?dl=1)

### Related Videos

#### WWDC23

- [Explore SwiftUI animation](https://developer.apple.com/videos/play/wwdc2023/10156/)
- [What's new in SwiftUI](https://developer.apple.com/videos/play/wwdc2023/10170/)

## Transcript

<Transcript>

0:01

♪ ♪ Person: Hello, and welcome to Wind your way through advanced animations in SwiftUI. I’m Tim, a member of the SwiftUI team.

0:18

SwiftUI comes with a powerful set of animation tools that make your app shine, with animations that are interruptible, physics-based for believable motion, and deeply integrated throughout the framework.

0:29

Today we’re going to talk about some exciting new tools that let you take animation in your app to the next level. Before we begin, let’s do a quick review of the animation tools that you already know in SwiftUI.

0:42

You might have seen this app that allows you to vote for your favorite kind of pet in other sessions.

0:47

To simplify this demo, I went ahead and removed all of the other options, because cats are clearly the best choice.

0:53

Adding animation to your app is as easy as using "withAnimation" or adding an "animation" modifier, which gives you great behavior out of the box.

1:02

After the state of your application changes, SwiftUI applies animations that interpolate from the previous state to the new state.

1:10

But with animation, as with life, sometimes the most rewarding experiences are found when you aren’t so focused on where you came from or where you’re going.

1:20

Sometimes you have to get off of the beaten path and focus on the journey itself to make something special. And some animations don’t simply animate from a previous state into a new state.

1:29

Today, I’ll talk about some powerful new tools for building complex, multistep animations.

1:36

Rather than animating between two states, these animations can define multiple steps that happen in sequence. And they are especially great in two situations: repeating animations, that loop continuously while a view is visible... and event-driven animations, such as a view that pulses when an event occurs.

1:56

In this talk, I’m going to introduce a new family of APIs that makes animations like these even easier to build.

2:02

I’ll start by introducing you to animation phases, which let SwiftUI automatically advance through a set of pre-planned states that make up your animation.

2:11

Next, I’ll demonstrate how to take animations even further with keyframes. And finally, I’ll show some advanced tips and tricks to get the most out of this API. I think we’re ready to go. Let’s jump right in.

2:25

When I’m not writing Swift, I like to get out trail running.

2:29

Trail races can be very long. Ultramarathons can take a whole day, or even multiple days to finish, so I’ve been building an app to plan for upcoming events, and to help me remember important details during a run.

2:41

Nutrition is super important when you’re on the trail.

2:44

Unfortunately, it can be easy to forget to eat late in a race as exhaustion sets in.

2:49

I’ve added a feature to my app that reminds me to eat at the right times.

2:53

Here, the reminder at the bottom of the screen is letting me know that I’m overdue for a meal. But there’s a problem.

3:00

Later in a race, I can get so tired that I could miss a subtle indicator like this.

3:05

I really don’t want to accidentally skip a meal, so I’ll add some motion to make this reminder stand out.

3:11

Let’s focus on this one view. We want to give it an animated highlight effect to make it extra visible.

3:18

To make this view animate, we will apply the ".phaseAnimator" modifier.

3:23

When you use the phase animator modifier, you provide a sequence of states that define the individual steps in a multipart animation.

3:31

SwiftUI then animates between these states automatically.

3:35

In this case, we’ll just be animating between two states: highlighted, and not highlighted, so we can simply use boolean values.

3:42

Next, we’ll apply some modifiers to change the appearance of the view depending on the current phase.

3:47

We’ll start with an opacity modifier: we’ll make the view fully opaque when highlighted, and 50% transparent otherwise.

3:54

And right away, the view starts animating. Let’s talk about what SwiftUI is doing on your behalf.

4:01

In our view, we provided two phases to the phase animator modifier: false, and true.

4:08

When the view first appears, the first phase is active, causing the view to be 50% transparent.

4:14

SwiftUI then immediately begins an animated transition to the next phase, where the view is fully opaque.

4:21

Then when that animation is finished, SwiftUI advances again. We only have two phases, so we loop around to the beginning.

4:29

This causes our animation to cycle between the two states. Of course, you can also define animations that include more than two phases, and any number of additional view modifiers, which I'll demonstrate later on.

4:43

Now while the view is animating, the effect is really subtle.

4:46

Instead of changing the opacity, let’s try changing the foreground style.

4:51

We’ll use red when highlighted, and otherwise fall back to the primary foreground style.

4:56

And that’s much more visible. The animations are a bit abrupt, though.

5:01

By default, SwiftUI uses a spring animation.

5:04

And while springs are great for handling dynamic state changes, in this case we want a smoother, more consistent animation.

5:11

We can change the animation by adding a trailing "animation" closure.

5:15

The phase that is being animated to is passed in, in case we want to use a different animation for each phase. But in this case, I always want to use the same ease in out animation with a custom duration, to slow things down.

5:28

Now, you wouldn’t typically use an animation with a duration of a full second for an interactive state change because you wouldn’t want to make people wait for an animation to finish.

5:37

But in this case, we are building an ambient effect, so it’s ok for things to move a bit slower, just like my pace if I miss that meal.

5:45

Now that we’ve solved the urgent problem of mid-race nutrition, let’s look at one more way to use animation phases: animations that are triggered by events.

5:54

I’ve been working on my app for a while, and I’ve added the ability to see which races my friends have run.

5:59

The emoji show reactions left by others.

6:01

Every runner sometimes asks themselves: why do I do this? Why did I sign up to run so many miles? And the least that our app can do is to feed the need for external validation by adding some excitement when someone else likes a race.

6:15

We’ll add an animation that plays every time someone adds a reaction.

6:20

The first thing that we will do is define the phases of our animation.

6:24

Unlike in the previous example that simply alternated between two states, we want a more complex animation. An enum is a great way to define a list of steps for the animation.

6:35

We’ve added three cases: a case for the initial appearance, then cases to move the view up, and scale up the view.

6:42

To simplify our view body, we will add computed properties to this enum that define the different effects that we will apply. I want the view to jump up during the animation, so I’ve added a computed vertical offset property.

6:56

I switch over the enum to return the right offset for each case.

7:00

Likewise, I’ve added two additional computed properties to determine the view’s scale and foreground style.

7:07

I won’t show the implementations here, but they also use a switch statement, just like the vertical offset property. Now, let’s get back to our view and add the animation.

7:17

We add the phaseAnimator modifier, but this time, we give it a "trigger" value.

7:22

When we give the phase animator modifier a trigger value, it observes the value that you specify for changes.

7:28

And when a change occurs, it begins animating through the phases that you specify.

7:33

Using the computed properties that we defined on the phase type, we apply modifiers to the view.

7:38

And this animation technically does the right thing, but it doesn’t feel great.

7:41

It’s a bit sluggish.

7:43

We’ll customize the animation for each transition to get the effect that we want, including a couple of different spring animations.

7:50

And this looks much better! But what if we want to take this animation even further? When someone has finished 50 or 100 miles on the trail, we want to give them an animation that leaves no doubt in their mind that all of those miles were worth it when they receive some well-deserved kudos. When you need even more control, there’s another powerful tool: keyframes. Next, I’ll show you how to use keyframes to define complex, coordinated animations with complete control over timing and movement. First, let’s talk about how keyframes are different from the phases that we have used so far.

8:26

Phases define discrete states that are provided to your view one at a time.

8:30

And SwiftUI animates between those states, using the same animation types that you already know, and this works really well for animations that can be modeled as discrete states.

8:41

When a state transition occurs, all of the properties are animated at the same time.

8:46

And then, when that animation is finished, SwiftUI animates to the next state.

8:50

And this continues across all of the phases of the animation.

8:54

But what if we want to animate each property independently? That’s where keyframes come in.

9:00

Keyframes let you define values at specific times within an animation. To demonstrate, I’ll animate this view, starting with a rotation effect.

9:08

The dots here indicate keyframes: angles to use at each point during the animation.

9:14

When the animation plays back, SwiftUI interpolates values in between these keyframes, which we can then use to apply modifiers to the view.

9:23

And keyframes allow you to independently animate multiple effects at the same time by defining separate tracks, each with their own unique timing.

9:31

This is really powerful, because you can use keyframes to drive any modifier in SwiftUI.

9:36

In this example, we are using keyframes to drive several other tracks, including vertical stretch, scale, and translation.

9:43

Let’s get back to our view and see what this looks like in code.

9:47

I already have an idea of the animation that I want to build, so my first step is to define the properties that will drive the animation. To do this, I’ll create a new struct containing all of the different properties that will be independently animated.

10:02

Keyframes can animate any value conforming to the "Animatable" protocol.

10:06

Notice that several properties use "Double", which now conforms to "Animatable." Unlike phases, in which you model separate, discrete states, keyframes generate interpolated values of the type that you specify.

10:19

While an animation is in progress, SwiftUI will provide you with a value of this type on every frame so that you can update the view.

10:27

Next, we add the keyframeAnimator modifier.

10:30

This modifier is similar to the phase animator that we used earlier, but accepts keyframes.

10:37

Notice that we provide an instance of our struct to use as the initial value.

10:42

The keyframes that we define will apply animations onto this value. Next, we’ll apply modifiers to our view for each of the properties on the struct.

10:52

And finally, we’ll start defining keyframes.

10:55

As I mentioned, keyframes let you build sophisticated animations with different keyframes for different properties. To make this possible, keyframes are organized into tracks. Each track controls a different property of the type that you are animating, which is specified by the key path that you provide when creating the track. Here, we are adding keyframes for the scale property.

11:17

We first add a linear keyframe, repeating the initial scale value and holding it for 0.36 seconds. And if you’re wondering how I settled on 0.36, I found that duration by trying out different values to change the feel of the animation, and that’s an important point about keyframes. Making an animation that suits your app can take some experimentation.

11:37

Previews in Xcode can be a great way to fine-tune your animations. Next, we add a "SpringKeyframe." This uses a spring function to pull the value toward the target.

11:48

And we’ve specified a duration.

11:50

For a spring keyframe with a set duration, this means that the spring function will only animate the value for that duration.

11:56

After that, interpolation will begin to the next keyframe. Finally, I’ll add another spring keyframe that animates the scale back to 1.0. The different kinds of keyframes control how values are interpolated. Alrighty, we’ve seen LinearKeyframe and SpringKeyframe.

12:14

There are actually four different types of keyframes. I’ll explain how they are different: LinearKeyframe interpolates linearly in vector space from the previous keyframe.

12:25

SpringKeyframe, as its name suggests, uses a spring function to interpolate to the target value from the previous keyframe. CubicKeyframe uses a cubic Bézier curve to interpolate between keyframes. If you combine multiple cubic keyframes in sequence, the resulting curve is equivalent to a Catmull-Rom spline.

12:46

And finally, MoveKeyframe immediately jumps to a value without interpolation. Each kind of keyframe supports customization to give you full control, and you can mix and match different kinds of keyframes within an animation.

12:59

SwiftUI maintains velocity between keyframes to make sure your animation remains continuous.

13:06

Coming back to our view, we’re ready to add the next track.

13:12

Here, we’ve used linear and spring keyframes to animate the vertical translation.

13:17

Right before the view jumps up, it pulls back in anticipation.

13:21

We have modeled that with a spring keyframe that pulls the view down briefly before it moves up. This is looking good, but we still have two more properties to animate: vertical stretch, and rotation.

13:32

We’ll start with vertical stretch, and for this, we will use cubic keyframes. Again, this can take some trial and error to get right, but don’t hesitate to experiment with different ways to model animations using keyframes.

13:45

The squash and stretch really gives this animation a lot more energy.

13:50

Finally, we’ll animate the rotation as well. And this is looking great.

13:55

And those curves that we saw earlier? Those are a visualization of the animation that we just built. You can add additional tracks to apply any SwiftUI modifier.

14:04

I’ve had a lot of fun exploring different combinations.

14:07

let’s take a moment to review the model of keyframes. Keyframes are predefined animations.

14:13

That means that they are not a replacement for normal SwiftUI animations in situations where the UI should be fluid and interactive.

14:19

Instead, think of keyframes like video clips that can be played. They give you a ton of control, but there’s a tradeoff.

14:27

Because you specify exactly how an animation should progress, keyframe animations can’t gracefully retarget the way that springs can, so it’s generally best to avoid changing keyframes mid-animation.

14:38

Keyframes animate a value of the type that you define, which you then use to apply modifiers to the view. You can use a single keyframe track to drive a single modifier, or a combination of different modifiers.

14:49

It’s up to you.

14:51

And because the animation happens in terms of the value that you define, updates happen on every frame, so you should avoid performing any expensive operations while applying a keyframe animation to the view.

15:03

Finally, I’ll demonstrate how how you can do even more with keyframes.

15:07

My app includes a race map, showing the route that each leg takes.

15:12

I want to add an animation that automatically zooms in and follows the course.

15:16

Thankfully, MapKit now allows me to use keyframes to move the camera. Here, I’m using a "Map" view to show the course.

15:25

My view already has a route, which is a model that contains all of the coordinates along one leg of the race.

15:31

To build our tour, we’ll add a state property and a button to change it.

15:36

Finally, we use the new "mapCameraKeyframeAnimator" modifier. We give it the trigger value, then add keyframes, just like we used for the heart icon in the previous example.

15:47

Every time the trigger value changes, maps will use these keyframes to animate.

15:52

The final value of the keyframes determines the camera value that is used at the end of the animation.

15:57

Finally, we hit the button, and the tour starts.

16:02

If the user performs a gesture while animating, the animation will be removed and the user will have full control over the camera.

16:09

By independently animating the center coordinate, heading, and distance, we’re able to smoothly animate along this course then zoom back out for a bird’s-eye view.

16:19

Finally, I’d like to demonstrate how keyframes can be manually evaluated to drive any kind of effect that you can think of.

16:26

We’ve seen the "keyframeAnimator" modifier. Outside of the modifier, you can use the "KeyframeTimeline" type to capture a set of keyframes and tracks. You initialize this type with an initial value, and the keyframe tracks that define your animation, just like with the view modifier.

16:43

KeyframeTimeline provides API that gives you the duration, which is equal to the duration of the longest track.

16:50

And you can calculate values for any time within the range of the animation.

16:55

This makes it easy to visualize keyframes with Swift Charts, which I used for the curve visualizations that I showed earlier. This also means that you can use keyframe-defined curves however you want, or to creatively combine keyframes with other APIs, for example, with a geometry proxy to scrub keyframe-driven effects using scroll position, or with a "TimelineView" to update based on time.

17:19

And if you’re not sure when you would use this, that’s ok, it’s an advanced tool, and most developers will want to stick to the view modifier.

17:26

But it’s here as a building block, and I’m excited to see what creative ways you find to integrate it into your app. That completes our journey.

17:35

I hope you’re excited to use this new family of API.

17:38

Remember: use phases for chained animations.

17:42

They use all of the existing animation types that you already know, so you can get up and running quickly.

17:48

Use keyframes for more complex animations where you need complete control.

17:53

And finally: have fun exploring.

17:56

The world of animation is exciting, and I hope these new tools lead you, and your app, somewhere new.

18:02

Thanks! ♪ ♪

</Transcript>

## Code

### Scale Animation

```swift
struct Avatar: View {
    var petImage: Image
    @State private var selected: Bool = false

    var body: some View {
        petImage
            .scaleEffect(selected ? 1.5 : 1.0)
            .onTapGesture {
                withAnimation {
                    selected.toggle()
                }
            }
    }
}
```

### Boolean Phases

```swift
OverdueReminderView()
    .phaseAnimator([false, true]) { content, value in
        content
            .foregroundStyle(value ? .red : .primary)
    } animation: { _ in
        .easeInOut(duration: 1.0)
    }
```

### Custom Phases

```swift
ReactionView()
    .phaseAnimator(
        Phase.allCases, 
        trigger: reactionCount
    ) { content, phase in
        content
            .scaleEffect(phase.scale)
            .offset(y: phase.verticalOffset)
    } animation: { phase in
        switch phase {
        case .initial: .smooth
        case .move: .easeInOut(duration: 0.3)
        case .scale: .spring(
            duration: 0.3, bounce: 0.7)
        } 
    }

enum Phase: CaseIterable {
    case initial
    case move
    case scale

    var verticalOffset: Double {
        switch self {
        case .initial: 0
        case .move, .scale: -64
        }
    }

    var scale: Double {
        switch self {
        case .initial: 1.0
        case .move: 1.1
        case .scale: 1.8
        }
    }
}
```

### Keyframes

```swift
ReactionView()
    .keyframeAnimator(initialValue: AnimationValues()) { content, value in
        content
            .foregroundStyle(.red)
            .rotationEffect(value.angle)
            .scaleEffect(value.scale)
            .scaleEffect(y: value.verticalStretch)
            .offset(y: value.verticalTranslation)
        } keyframes: { _ in
            KeyframeTrack(\.angle) {
                CubicKeyframe(.zero, duration: 0.58)
                CubicKeyframe(.degrees(16), duration: 0.125)
                CubicKeyframe(.degrees(-16), duration: 0.125)
                CubicKeyframe(.degrees(16), duration: 0.125)
                CubicKeyframe(.zero, duration: 0.125)
            }

            KeyframeTrack(\.verticalStretch) {
                CubicKeyframe(1.0, duration: 0.1)
                CubicKeyframe(0.6, duration: 0.15)
                CubicKeyframe(1.5, duration: 0.1)
                CubicKeyframe(1.05, duration: 0.15)
                CubicKeyframe(1.0, duration: 0.88)
                CubicKeyframe(0.8, duration: 0.1)
                CubicKeyframe(1.04, duration: 0.4)
                CubicKeyframe(1.0, duration: 0.22)
            }
            
            KeyframeTrack(\.scale) {
                LinearKeyframe(1.0, duration: 0.36)
                SpringKeyframe(1.5, duration: 0.8, spring: .bouncy)
                SpringKeyframe(1.0, spring: .bouncy)
            }

            KeyframeTrack(\.verticalTranslation) {
                LinearKeyframe(0.0, duration: 0.1)
                SpringKeyframe(20.0, duration: 0.15, spring: .bouncy)
                SpringKeyframe(-60.0, duration: 1.0, spring: .bouncy)
                SpringKeyframe(0.0, spring: .bouncy)
            }
        }

struct AnimationValues {
    var scale = 1.0
    var verticalStretch = 1.0
    var verticalTranslation = 0.0
    var angle = Angle.zero
}
```

### Map Keyframes

```swift
struct RaceMap: View {
    let route: Route

    @State private var trigger = false

    var body: some View {
        Map(initialPosition: .rect(route.rect)) {
            MapPolyline(coordinates: route.coordinates)
                .stroke(.orange, lineWidth: 4.0)
            Marker("Start", coordinate: route.start)
                .tint(.green)
            Marker("End", coordinate: route.end)
                .tint(.red)
        }
        .toolbar {
            Button("Tour") { trigger.toggle() }
        }
        .mapCameraKeyframeAnimation(trigger: playTrigger) { initialCamera in
            KeyframeTrack(\MapCamera.centerCoordinate) {
                let points = route.points
                for point in points {
                    CubicKeyframe(point.coordinate, duration: 16.0 / Double(points.count))
                }
                CubicKeyframe(initialCamera.centerCoordinate, duration: 4.0)
            }
            KeyframeTrack(\.heading) {
                CubicKeyframe(heading(from: route.start.coordinate, to: route.end.coordinate), duration: 6.0)
                CubicKeyframe(heading(from: route.end.coordinate, to: route.end.coordinate), duration: 8.0)
                CubicKeyframe(initialCamera.heading, duration: 6.0)
            }
            KeyframeTrack(\.distance) {
                CubicKeyframe(24000, duration: 4)
                CubicKeyframe(18000, duration: 12)
                CubicKeyframe(initialCamera.distance, duration: 4)
            }
        }
    }
}
```

### KeyframeTimeline

```swift
// Keyframes
let myKeyframes = KeyframeTimeline(initialValue: CGPoint.zero) {
    KeyframeTrack(\.x) {...}
    KeyframeTrack(\.y) {...}
}

// Duration in seconds
let duration: TimeInterval = myKeyframes.duration

// Value for time
let value = myKeyframes.value(time: 1.2)
```

## Summary

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2023/10157/?time=0)
- SwiftUI provides powerful animation tools that are interruptible and physics-based. New APIs for advanced animations include animation phases and keyframes for building complex, multistep animations.

- 2:23 - [Animation phases](https://developer.apple.com/videos/play/wwdc2023/10157/?time=143)
- Use phaseAnimator to define a sequence of states for multipart animations. SwiftUI automatically advances through phases, supporting repeating and event-driven animations with custom animations for each phase.

- 8:12 - [Keyframes](https://developer.apple.com/videos/play/wwdc2023/10157/?time=492)
- Keyframes allow independent animation of multiple properties with precise timing control. Use keyframeAnimator with tracks for different properties, supporting LinearKeyframe, SpringKeyframe, CubicKeyframe, and MoveKeyframe types.

- 15:07 - [Tips and tricks](https://developer.apple.com/videos/play/wwdc2023/10157/?time=907)
- Keyframes are predefined animations suited for complex, non-interactive effects. Use KeyframeTimeline for manual evaluation and creative combinations. Experiment in Xcode previews to fine-tune animations.
