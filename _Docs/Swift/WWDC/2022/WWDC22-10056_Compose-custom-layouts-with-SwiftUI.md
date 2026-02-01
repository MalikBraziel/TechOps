---
URL: https://developer.apple.com/videos/play/wwdc2022/10056/
Title: Compose custom layouts with SwiftUI
Topics: SwiftUI
Date_Published: June 2022
Swift_Version_At_Publish: Swift 5.7
---

# Compose custom layouts with SwiftUI

SwiftUI now offers powerful tools to level up your layouts and arrange views for your app's interface. We'll introduce you to the Grid container, which helps you create highly customizable, two-dimensional layouts, and show you how you can use the Layout protocol to build your own containers with completely custom behavior. We'll also explore how you can create seamless animated transitions between your layout types, and share tips and best practices for creating great interfaces.

### Chapters

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2022/10056/?time=0)
- 1:44 - [Building a Grid Layout](https://developer.apple.com/videos/play/wwdc2022/10056/?time=104)
- 3:34 - [Customizing Grid Alignment](https://developer.apple.com/videos/play/wwdc2022/10056/?time=214)
- 6:10 - [Adding Dividers](https://developer.apple.com/videos/play/wwdc2022/10056/?time=370)
- 8:47 - [Creating Custom Layouts](https://developer.apple.com/videos/play/wwdc2022/10056/?time=527)
- 13:05 - [Implementing Layout Protocol](https://developer.apple.com/videos/play/wwdc2022/10056/?time=785)
- 16:33 - [Size and Placement](https://developer.apple.com/videos/play/wwdc2022/10056/?time=993)
- 18:07 - [Layout Values](https://developer.apple.com/videos/play/wwdc2022/10056/?time=1087)
- 20:08 - [ViewThatFits and AnyLayout](https://developer.apple.com/videos/play/wwdc2022/10056/?time=1208)
- 21:09 - [Advanced Radial Layout](https://developer.apple.com/videos/play/wwdc2022/10056/?time=1269)
- 25:18 - [Animation and Transitions](https://developer.apple.com/videos/play/wwdc2022/10056/?time=1518)

### Resources

- [AnyLayout](https://developer.apple.com/documentation/swiftui/anylayout)
- [Composing custom layouts with SwiftUI](https://developer.apple.com/tutorials/app-dev-training/composing-custom-layouts-with-swiftui)
- [Grid](https://developer.apple.com/documentation/swiftui/grid)
- [Layout](https://developer.apple.com/documentation/swiftui/layout)
- [Layout containers](https://developer.apple.com/design/human-interface-guidelines/layout)
- [ViewThatFits](https://developer.apple.com/documentation/swiftui/viewthatfits)
- [HD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2022/10056/6/0c2c6210-4f59-409a-ba23-36a7895563d3/downloads/wwdc2022-10056_hd.mp4?dl=1)
- [SD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2022/10056/6/0c2c6210-4f59-409a-ba23-36a7895563d3/downloads/wwdc2022-10056_sd.mp4?dl=1)

### Related Videos

#### WWDC23

- [Meet Assistive Access](https://developer.apple.com/videos/play/wwdc2023/10031/)

#### WWDC22

- [Build global apps: Localization by example](https://developer.apple.com/videos/play/wwdc2022/10033/)
- [Complications and widgets: Reloaded](https://developer.apple.com/videos/play/wwdc2022/10034/)
- [What's new in SwiftUI](https://developer.apple.com/videos/play/wwdc2022/10069/)
- [WWDC22 Day 3 recap](https://developer.apple.com/videos/play/wwdc2022/10070/)

#### WWDC20

- [Stacks, Grids, and Outlines in SwiftUI](https://developer.apple.com/videos/play/wwdc2020/10031/)

#### WWDC19

- [Building Custom Views with SwiftUI](https://developer.apple.com/videos/play/wwdc2019/204/)

## Transcript

- [0:00] ♪ ♪ Paul: Hello, and welcome to Compose Custom Layouts with SwiftUI. I'm Paul, and I work on developer documentation. SwiftUI provides a rich set of building blocks that you use to compose your app's interface. You can combine built-in views that display elements like text, images, and graphics to create custom, composite views. To arrange all these elements in ever more sophisticated groupings SwiftUI provides layout tools.

- [0:39] In recent years, there's been some debate among some of my colleagues about who makes the best furry companion. I have my own opinion, but I was curious to see if we could come to some consensus, so I decided to make an app to take a poll. And I want to include folks with fur allergies, too, so I'm throwing in one extra option. Now, I like to do most of my interface design in SwiftUI, because it's so easy to prototype using previews, but as a starting point, I drew a quick sketch of what I'm aiming for. I expect the voting to go on over a period of time, so I want a leaderboard in the middle showing the current standings. I'll put buttons for voting at the bottom. And at the top, I'll display some images of what folks are voting for.

- [1:44] Okay, the first thing I want to do is to build the leaderboard. So let's take a closer look at that. The leaderboard is a two-dimensional grid of elements with rows for each contender, and columns that show names, percentages, and a vote count. I have a couple of specific things I want to achieve here. First, I want the two text columns to be only as wide as they need to be to accommodate the widest cell in each case because I want the progress views that represent percentages to get as much space as they can. And this needs to be true no matter how big the counts get for my friends that speak other languages or for anyone who uses different text sizes on their devices. Second, I want the names to be leading edge aligned, but the amounts to be trailing edge aligned. Now, SwiftUI already has lazy grids, which are great for scrollable content. These containers are very efficient when you have a lot of views, because they only load views that are visible, or about to be visible. On the other hand, that means the container can't automatically size its cells in both dimensions.

- [3:34] To do that, I'll initialize the grid with leading edge alignment. The value I use here applies to all the cells in the grid. That works fine for my first two columns, but what about the last? To affect the alignment of a single column, I can apply the gridColumnAlignment view modifier to any one cell in that column. So I'll do that with the text view in the last column. Okay, it's getting there, but now that I'm looking at it, I feel like it would be better with a divider between each row. If I just add a new row to the ForEach with a divider, this isn't exactly what I want, but notice that this shows a couple of interesting things. First, because the divider is a flexible view, it's causing the first column to take more space. Basically, the grid is now giving the last column what it needs, and dividing the remaining space between the first two columns. Second, for a grid row that doesn't have as many views as other grid rows, the missing views just create empty cells in the later columns. But what I really want is to have the divider span all the columns of the grid, and SwiftUI has a new view modifier that lets me do that.

- [6:10] And of course, when I remove the dynamic type size override, it goes back to the horizontal layout. Now, there's one last piece of the app I need to build, and that's the images at the top. I could do something simple, like just show a group of profile pictures, but I thought I'd have a little fun with it. So I made another custom layout type that draws views in a circular arrangement and then rotates the arrangement according to rankings. So this configuration shows goldfish in first place, and the other two tied for second. And then if dog pulls ahead of cat, I can rotate a bit to show that. Or I can show a slightly more realistic result, all by rotating a radial layout. Creating this layout is actually quite straightforward with the layout protocol. Like before, I just need two methods. For size that fits, I want my view to fill the available space, so I'll return whatever size the container view proposes. I'll convert the proposal into a concrete size using the replacing-unspecified-dimensions method. That method automatically handles nil values that could be present if the container asks for an ideal size. Then inside place subviews method, I'll offset each subview from the middle by some radius that's based on the size of the layout region, and apply a rotation that depends on the index of the view. As a baseline, this places the views at 0, 1, and two-thirds of the way around a circle. To reflect the current rankings, I'll also apply an offset that affects all the views equally. But where do I get the rankings? Remember, my layout can only access the subview proxies, and not the views, let alone my data model. Well, it turns out that the layout protocol has another trick up its sleeve. It lets you store values on each subview, and read the values from inside the layout protocol methods. Let's see how I can use that to communicate the rank information. First, I declare a new type that conforms to the LayoutValueKey protocol, and give it a default value. In addition to providing a value for a view when you don't explicitly set one, the default value establishes the associated value's type, which is an integer in this case. Then, I create a convenience method on View to set the value using the layoutValue view modifier. Now in my view hierarchy, I can apply my convenience rank modifier to the views in my layout. Here, I calculate the rank of each pet and add it to the pet's corresponding avatar view inside my radial layout. Finally, back in my place subviews method, I can add some code to read the values from each subview by using the layout value key as an index. And I can use the ranks to calculate an offset. I won't go through that logic here, but it basically produces an appropriate angle for any possible set of rankings. Well, all except one. What happens if there's a three-way tie? There's no way to rotate the layout to get all the views in a line, so I'd have to substitute completely different layout logic for that case. However, there is already a layout type that does this, and that's the built-in HStack. So what I'd really like is to transition to an HStack when I detect a three-way tie. And it turns out that there's a new tool for that, too. The AnyLayout type lets you apply different layouts to a single view hierarchy, so that you maintain the identity of the views as you transition from one layout type to another.

- [21:09] And of course, when I remove the dynamic type size override, it goes back to the horizontal layout. Now, there's one last piece of the app I need to build, and that's the images at the top. I could do something simple, like just show a group of profile pictures, but I thought I'd have a little fun with it. So I made another custom layout type that draws views in a circular arrangement and then rotates the arrangement according to rankings. So this configuration shows goldfish in first place, and the other two tied for second. And then if dog pulls ahead of cat, I can rotate a bit to show that. Or I can show a slightly more realistic result, all by rotating a radial layout. Creating this layout is actually quite straightforward with the layout protocol. Like before, I just need two methods. For size that fits, I want my view to fill the available space, so I'll return whatever size the container view proposes. I'll convert the proposal into a concrete size using the replacing-unspecified-dimensions method. That method automatically handles nil values that could be present if the container asks for an ideal size. Then inside place subviews method, I'll offset each subview from the middle by some radius that's based on the size of the layout region, and apply a rotation that depends on the index of the view. As a baseline, this places the views at 0, 1, and two-thirds of the way around a circle. To reflect the current rankings, I'll also apply an offset that affects all the views equally. But where do I get the rankings? Remember, my layout can only access the subview proxies, and not the views, let alone my data model. Well, it turns out that the layout protocol has another trick up its sleeve. It lets you store values on each subview, and read the values from inside the layout protocol methods. Let's see how I can use that to communicate the rank information. First, I declare a new type that conforms to the LayoutValueKey protocol, and give it a default value. In addition to providing a value for a view when you don't explicitly set one, the default value establishes the associated value's type, which is an integer in this case. Then, I create a convenience method on View to set the value using the layoutValue view modifier. Now in my view hierarchy, I can apply my convenience rank modifier to the views in my layout. Here, I calculate the rank of each pet and add it to the pet's corresponding avatar view inside my radial layout. Finally, back in my place subviews method, I can add some code to read the values from each subview by using the layout value key as an index. And I can use the ranks to calculate an offset. I won't go through that logic here, but it basically produces an appropriate angle for any possible set of rankings. Well, all except one. What happens if there's a three-way tie? There's no way to rotate the layout to get all the views in a line, so I'd have to substitute completely different layout logic for that case. However, there is already a layout type that does this, and that's the built-in HStack. So what I'd really like is to transition to an HStack when I detect a three-way tie. And it turns out that there's a new tool for that, too. The AnyLayout type lets you apply different layouts to a single view hierarchy, so that you maintain the identity of the views as you transition from one layout type to another.

- [25:18] So here I have the radial layout that we saw before, and all I have to do is replace that with a new layout type that depends on whether there's a three-way tie. Because the isThreeWayTie property is derived from state, SwiftUI notices when it changes and recognizes that it needs to redraw this view. But because the structural identity of the view hierarchy always remains the same, SwiftUI sees this as a view that changes, rather than as a new view. As a result, with only one more line, I can create smooth transitions between layout types. And in fact, by adding the animation view modifier, I also get animations between all the different states of the radial layout, because the configuration of the radial layout depends on the same data. And here's what all that looks like in action. As I tap on different buttons to change the vote counts, you can see how the avatars move around smoothly to reflect the current standings.

## Code

### Grid with explicit rows

```swift
struct Leaderboard: View {
    var body: some View {
        Grid {
            GridRow {
                Text("Cat")
                ProgressView(value: 0.5)
                Text("25")
            }
            GridRow {
                Text("Goldfish")
                ProgressView(value: 0.2)
                Text("9")
            }
            GridRow {
                Text("Dog")
                ProgressView(value: 0.3)
                Text("16")
            }
        }
    }
}
```

### Data model

```swift
struct Pet: Identifiable, Equatable {
    let type: String
    var votes: Int = 0
    var id: String { type }

    static var exampleData: [Pet] = [
        Pet(type: "Cat", votes: 25),
        Pet(type: "Goldfish", votes: 9),
        Pet(type: "Dog", votes: 16)
    ]
}
```

### Final Leaderboard

```swift
struct Leaderboard: View {
    var pets: [Pet]
    var totalVotes: Int

    var body: some View {
        Grid(alignment: .leading) {
            ForEach(pets) { pet in
                GridRow {
                    Text(pet.type)
                    ProgressView(
                        value: Double(pet.votes),
                        total: Double(totalVotes))
                    Text("\(pet.votes)")
                        .gridColumnAlignment(.trailing)
                }

                Divider()
            }
        }
        .padding()
    }
}
```

### Layout protocol stubs for required methods

```swift
struct MyEqualWidthHStack: Layout {
    func sizeThatFits(
        proposal: ProposedViewSize,
        subviews: Subviews,
        cache: inout Void
    ) -> CGSize {
        // Return a size.
    }

    func placeSubviews(
        in bounds: CGRect,
        proposal: ProposedViewSize,
        subviews: Subviews,
        cache: inout Void
    ) {
        // Place child views.
    }
}
```

### Maximum size helper method

```swift
private func maxSize(subviews: Subviews) -> CGSize {
    let subviewSizes = subviews.map { $0.sizeThatFits(.unspecified) }
    let maxSize: CGSize = subviewSizes.reduce(.zero) { currentMax, subviewSize in
        CGSize(
            width: max(currentMax.width, subviewSize.width),
            height: max(currentMax.height, subviewSize.height))
    }

    return maxSize
}
```

### Spacing helper method

```swift
private func spacing(subviews: Subviews) -> [CGFloat] {
    subviews.indices.map { index in
        guard index < subviews.count - 1 else { return 0 }
        return subviews[index].spacing.distance(
            to: subviews[index + 1].spacing,
            along: .horizontal)
    }
}
```

### Size that fits implementation

```swift
func sizeThatFits(
    proposal: ProposedViewSize,
    subviews: Subviews,
    cache: inout Void
) -> CGSize {
    // Return a size.
    guard !subviews.isEmpty else { return .zero }

    let maxSize = maxSize(subviews: subviews)
    let spacing = spacing(subviews: subviews)
    let totalSpacing = spacing.reduce(0) { $0 + $1 }

    return CGSize(
        width: maxSize.width * CGFloat(subviews.count) + totalSpacing,
        height: maxSize.height)
}
```

### Place subviews implementation

```swift
func placeSubviews(
    in bounds: CGRect,
    proposal: ProposedViewSize,
    subviews: Subviews,
    cache: inout Void
) {
    // Place child views.
    guard !subviews.isEmpty else { return }

    let maxSize = maxSize(subviews: subviews)
    let spacing = spacing(subviews: subviews)

    let placementProposal = ProposedViewSize(width: maxSize.width, height: maxSize.height)
    var x = bounds.minX + maxSize.width / 2

    for index in subviews.indices {
        subviews[index].place(
            at: CGPoint(x: x, y: bounds.midY),
            anchor: .center,
            proposal: placementProposal)
        x += maxSize.width + spacing[index]
    }
}
```

### Custom layout instantiation

```swift
MyEqualWidthHStack {
    ForEach($pets) { $pet in
        Button {
            pet.votes += 1
        } label: {
            Text(pet.type)
                .frame(maxWidth: .infinity)
        }
        .buttonStyle(.bordered)
    }
}
```

### Buttons helper view

```swift
struct Buttons: View {
    @Binding var pets: [Pet]

    var body: some View {
        ForEach($pets) { $pet in
            Button {
                pet.votes += 1
            } label: {
                Text(pet.type)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
        }
    }
}
```

### Final voting buttons view

```swift
struct StackedButtons: View {
    @Binding var pets: [Pet]

    var body: some View {
        ViewThatFits {
            MyEqualWidthHStack {
                Buttons(pets: $pets)
            }
            MyEqualWidthVStack {
                Buttons(pets: $pets)
            }
        }
    }
}
```

### Radial size that fits

```swift
func sizeThatFits(
    proposal: ProposedViewSize,
    subviews: Subviews,
    cache: inout Void
) -> CGSize {
    // Take whatever space is offered.
    return proposal.replacingUnspecifiedDimensions()
}
```

### Radial place subviews without offsets

```swift
func placeSubviews(
    in bounds: CGRect,
    proposal: ProposedViewSize,
    subviews: Subviews,
    cache: inout Void
) {
    let radius = min(bounds.size.width, bounds.size.height) / 3.0
    let angle = Angle.degrees(360.0 / Double(subviews.count)).radians
    let offset = 0 // This depends on rank...

    for (index, subview) in subviews.enumerated() {
        var point = CGPoint(x: 0, y: -radius)
            .applying(CGAffineTransform(
                rotationAngle: angle * Double(index) + offset))

        point.x += bounds.midX
        point.y += bounds.midY

        subview.place(at: point, anchor: .center, proposal: .unspecified)
    }
}
```

### Rank value

```swift
private struct Rank: LayoutValueKey {
    static let defaultValue: Int = 1
}

extension View {
    func rank(_ value: Int) -> some View {
        layoutValue(key: Rank.self, value: value)
    }
}
```

### Radial place subviews with offsets

```swift
func placeSubviews(
    in bounds: CGRect,
    proposal: ProposedViewSize,
    subviews: Subviews,
    cache: inout Void
) {
    let radius = min(bounds.size.width, bounds.size.height) / 3.0
    let angle = Angle.degrees(360.0 / Double(subviews.count)).radians

    let ranks = subviews.map { subview in
        subview[Rank.self]
    }
    let offset = getOffset(ranks)

    for (index, subview) in subviews.enumerated() {
        var point = CGPoint(x: 0, y: -radius)
            .applying(CGAffineTransform(
                rotationAngle: angle * Double(index) + offset))
        point.x += bounds.midX
        point.y += bounds.midY
        subview.place(at: point, anchor: .center, proposal: .unspecified)
    }
}
```

### Final profile view

```swift
struct Profile: View {
    var pets: [Pet]
    var isThreeWayTie: Bool

    var body: some View {
        let layout = isThreeWayTie ? AnyLayout(HStackLayout()) : AnyLayout(MyRadialLayout())

        Podium() // Creates the background that shows ranks.
            .overlay(alignment: .top) {
                layout {
                    ForEach(pets) { pet in
                        Avatar(pet: pet)
                            .rank(rank(pet))
                    }
                }
                .animation(.default, value: pets)
            }
    }
}
```

## Summary

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2022/10056/?time=0)
- SwiftUI now offers powerful tools to level up your layouts and arrange views for your app's interface.

- 1:44 - [Building a Grid Layout](https://developer.apple.com/videos/play/wwdc2022/10056/?time=104)
- Use the Grid container to create highly customizable, two-dimensional layouts with rows and columns.

- 3:34 - [Customizing Grid Alignment](https://developer.apple.com/videos/play/wwdc2022/10056/?time=214)
- Customize grid alignment for columns and add dividers that span all columns.

- 6:10 - [Adding Dividers](https://developer.apple.com/videos/play/wwdc2022/10056/?time=370)
- Use view modifiers to add dividers and customize grid column alignment.

- 8:47 - [Creating Custom Layouts](https://developer.apple.com/videos/play/wwdc2022/10056/?time=527)
- Use the Layout protocol to build custom layout containers with sizeThatFits and placeSubviews methods.

- 13:05 - [Implementing Layout Protocol](https://developer.apple.com/videos/play/wwdc2022/10056/?time=785)
- Implement sizeThatFits to calculate layout size and placeSubviews to position child views.

- 16:33 - [Size and Placement](https://developer.apple.com/videos/play/wwdc2022/10056/?time=993)
- Calculate maximum subview sizes and handle spacing preferences for proper layout.

- 18:07 - [Layout Values](https://developer.apple.com/videos/play/wwdc2022/10056/?time=1087)
- Use LayoutValueKey to store and read values on subviews for dynamic layout behavior.

- 20:08 - [ViewThatFits and AnyLayout](https://developer.apple.com/videos/play/wwdc2022/10056/?time=1208)
- Use ViewThatFits for responsive layouts and AnyLayout for smooth transitions between layout types.

- 21:09 - [Advanced Radial Layout](https://developer.apple.com/videos/play/wwdc2022/10056/?time=1269)
- Create complex radial layouts with rotation and ranking-based positioning.

- 25:18 - [Animation and Transitions](https://developer.apple.com/videos/play/wwdc2022/10056/?time=1518)
- Use AnyLayout and animation modifiers to create smooth transitions between different layout configurations.

- SwiftUI's new layout tools including Grid, Layout protocol, ViewThatFits, and AnyLayout enable powerful, responsive, and animated custom layouts.

```swift
struct Leaderboard: View {
    var body: some View {
        Grid {
            GridRow {
                Text("Cat")
                ProgressView(value: 0.5)
                Text("25")
            }
            GridRow {
                Text("Goldfish")
                ProgressView(value: 0.2)
                Text("9")
            }
            GridRow {
                Text("Dog")
                ProgressView(value: 0.3)
                Text("16")
            }
        }
    }
}
```

### Data model

```swift
struct Pet: Identifiable, Equatable {
    let type: String
    var votes: Int = 0
    var id: String { type }

    static var exampleData: [Pet] = [
        Pet(type: "Cat", votes: 25),
        Pet(type: "Goldfish", votes: 9),
        Pet(type: "Dog", votes: 16)
    ]
}
```

### Final Leaderboard

```swift
struct Leaderboard: View {
    var pets: [Pet]
    var totalVotes: Int

    var body: some View {
        Grid(alignment: .leading) {
            ForEach(pets) { pet in
                GridRow {
                    Text(pet.type)
                    ProgressView(
                        value: Double(pet.votes),
                        total: Double(totalVotes))
                    Text("\(pet.votes)")
                        .gridColumnAlignment(.trailing)
                }

                Divider()
            }
        }
        .padding()
    }
}
```

### Layout protocol stubs for required methods

```swift
struct MyEqualWidthHStack: Layout {
    func sizeThatFits(
        proposal: ProposedViewSize,
        subviews: Subviews,
        cache: inout Void
    ) -> CGSize {
        // Return a size.
    }

    func placeSubviews(
        in bounds: CGRect,
        proposal: ProposedViewSize,
        subviews: Subviews,
        cache: inout Void
    ) {
        // Place child views.
    }
}
```

### Maximum size helper method

```swift
private func maxSize(subviews: Subviews) -> CGSize {
    let subviewSizes = subviews.map { $0.sizeThatFits(.unspecified) }
    let maxSize: CGSize = subviewSizes.reduce(.zero) { currentMax, subviewSize in
        CGSize(
            width: max(currentMax.width, subviewSize.width),
            height: max(currentMax.height, subviewSize.height))
    }

    return maxSize
}
```

### Spacing helper method

```swift
private func spacing(subviews: Subviews) -> [CGFloat] {
    subviews.indices.map { index in
        guard index < subviews.count - 1 else { return 0 }
        return subviews[index].spacing.distance(
            to: subviews[index + 1].spacing,
            along: .horizontal)
    }
}
```

### Size that fits implementation

```swift
func sizeThatFits(
    proposal: ProposedViewSize,
    subviews: Subviews,
    cache: inout Void
) -> CGSize {
    // Return a size.
    guard !subviews.isEmpty else { return .zero }

    let maxSize = maxSize(subviews: subviews)
    let spacing = spacing(subviews: subviews)
    let totalSpacing = spacing.reduce(0) { $0 + $1 }

    return CGSize(
        width: maxSize.width * CGFloat(subviews.count) + totalSpacing,
        height: maxSize.height)
}
```

### Place subviews implementation

```swift
func placeSubviews(
    in bounds: CGRect,
    proposal: ProposedViewSize,
    subviews: Subviews,
    cache: inout Void
) {
    // Place child views.
    guard !subviews.isEmpty else { return }

    let maxSize = maxSize(subviews: subviews)
    let spacing = spacing(subviews: subviews)

    let placementProposal = ProposedViewSize(width: maxSize.width, height: maxSize.height)
    var x = bounds.minX + maxSize.width / 2

    for index in subviews.indices {
        subviews[index].place(
            at: CGPoint(x: x, y: bounds.midY),
            anchor: .center,
            proposal: placementProposal)
        x += maxSize.width + spacing[index]
    }
}
```

### Custom layout instantiation

```swift
MyEqualWidthHStack {
    ForEach($pets) { $pet in
        Button {
            pet.votes += 1
        } label: {
            Text(pet.type)
                .frame(maxWidth: .infinity)
        }
        .buttonStyle(.bordered)
    }
}
```

### Buttons helper view

```swift
struct Buttons: View {
    @Binding var pets: [Pet]

    var body: some View {
        ForEach($pets) { $pet in
            Button {
                pet.votes += 1
            } label: {
                Text(pet.type)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
        }
    }
}
```

### Final voting buttons view

```swift
struct StackedButtons: View {
    @Binding var pets: [Pet]

    var body: some View {
        ViewThatFits {
            MyEqualWidthHStack {
                Buttons(pets: $pets)
            }
            MyEqualWidthVStack {
                Buttons(pets: $pets)
            }
        }
    }
}
```

### Radial size that fits

```swift
func sizeThatFits(
    proposal: ProposedViewSize,
    subviews: Subviews,
    cache: inout Void
)  -> CGSize {
    // Take whatever space is offered.
    return proposal.replacingUnspecifiedDimensions()
}
```

### Radial place subviews without offsets

```swift
func placeSubviews(
    in bounds: CGRect,
    proposal: ProposedViewSize,
    subviews: Subviews,
    cache: inout Void
) {
    let radius = min(bounds.size.width, bounds.size.height) / 3.0
    let angle = Angle.degrees(360.0 / Double(subviews.count)).radians
    let offset = 0 // This depends on rank...

    for (index, subview) in subviews.enumerated() {
        var point = CGPoint(x: 0, y: -radius)
            .applying(CGAffineTransform(
                rotationAngle: angle * Double(index) + offset))

        point.x += bounds.midX
        point.y += bounds.midY

        subview.place(at: point, anchor: .center, proposal: .unspecified)
    }
}
```

### Rank value

```swift
private struct Rank: LayoutValueKey {
    static let defaultValue: Int = 1
}

extension View {
    func rank(_ value: Int) -> some View {
        layoutValue(key: Rank.self, value: value)
    }
}
```

### Radial place subviews with offsets

```swift
func placeSubviews(
    in bounds: CGRect,
    proposal: ProposedViewSize,
    subviews: Subviews,
    cache: inout Void
) {
    let radius = min(bounds.size.width, bounds.size.height) / 3.0
    let angle = Angle.degrees(360.0 / Double(subviews.count)).radians

    let ranks = subviews.map { subview in
        subview[Rank.self]
    }
    let offset = getOffset(ranks)

    for (index, subview) in subviews.enumerated() {
        var point = CGPoint(x: 0, y: -radius)
            .applying(CGAffineTransform(
                rotationAngle: angle * Double(index) + offset))
        point.x += bounds.midX
        point.y += bounds.midY
        subview.place(at: point, anchor: .center, proposal: .unspecified)
    }
}
```

### Final profile view

```swift
struct Profile: View {
    var pets: [Pet]
    var isThreeWayTie: Bool

    var body: some View {
        let layout = isThreeWayTie ? AnyLayout(HStackLayout()) : AnyLayout(MyRadialLayout())

        Podium() // Creates the background that shows ranks.
            .overlay(alignment: .top) {
                layout {
                    ForEach(pets) { pet in
                        Avatar(pet: pet)
                            .rank(rank(pet))
                    }
                }
                .animation(.default, value: pets)
            }
    }
}
```
