---
URL: https://developer.apple.com/videos/play/wwdc2022/10137/
Title: Swift Charts: Raise the bar
Topics: SwiftUI
Date_Published: 2022-06-06
Swift_Version_At_Publish: Swift 5.7
---

# Swift Charts: Raise the bar

Dive deep into data visualizations: Learn how Swift Charts and SwiftUI can help your apps represent complex datasets through a wide variety of chart options. We'll show you how to plot different kinds of data and compose marks to create more elaborate charts. We'll also take you through Swift Charts' extensive chart customization API to help you match the style of your charts to your app.

### Chapters

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2022/10137/?time=0)
- 0:21 - [Data Visualization](https://developer.apple.com/videos/play/wwdc2022/10137/?time=21)
- 0:31 - [Chart Types](https://developer.apple.com/videos/play/wwdc2022/10137/?time=31)
- 0:38 - [Chart Customization](https://developer.apple.com/videos/play/wwdc2022/10137/?time=38)

### Resources

- [Swift Charts](https://developer.apple.com/documentation/charts)
- [HD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2022/10137/6/0c2c6210-4f59-409a-ba23-36a7895563d3/downloads/wwdc2022-10137_hd.mp4?dl=1)
- [SD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2022/10137/6/0c2c6210-4f59-409a-ba23-36a7895563d3/downloads/wwdc2022-10137_sd.mp4?dl=1)

### Related Videos

#### WWDC22

- [Hello Swift Charts](https://developer.apple.com/videos/play/wwdc2022/10136/)

## Transcript

<Transcript>

- [0:00] ♪ Mellow instrumental hip-hop music ♪ ♪ Hello, I'm Donghao.

- [0:11] In this session, we are going to learn more about how to build great data visualizations with Swift Charts.

- [0:16] In other words, we will raise the bar of what you can do with charts in your apps.

- [0:21] A great data visualization makes your app more informative and more engaging.

- [0:26] In order to build a great chart in our apps, there are many things to consider.

- [0:31] Of course, we would want our charts to faithfully communicate the underlying data and be accessible for everyone.

- [0:38] But charts in an app don't live in a vacuum.

- [0:41] They are part of the app's user interface.

- [0:43] We have to support localization and OS features like Dark Mode.

- [0:47] A chart has to have a proper layout that fits seamlessly into the rest of the UI; it should support Dynamic Type and device screen sizes.

- [0:57] We'll also want charts to work in all platforms, and have great animation for the best look and feel.

- [1:04] Swift Charts takes care of a lot of these basic features for you automatically, so you can focus more on building the best charts to communicate your unique data and make it accessible for everyone.

- [1:15] Swift Charts achieves this by providing you with a declarative syntax that feels just like SwiftUI.

- [1:21] You specify what you want in a chart with a small amount of code, and Swift Charts will automatically produce a great chart out of the box.

- [1:30] Swift Charts also provides a rich set of customization options, so you can style the chart to match your unique application.

- [1:37] This session is about giving you a deeper understanding of Swift Charts.

- [1:41] We will start by covering the basic building blocks of the declarative syntax: marks and the composition of marks.

- [1:48] Here are some examples where we use charts in Apple products.

- [1:51] As you can see, there is a wide variety of data, chart types, and styles.

- [1:56]

Instead of providing a prebuilt component for each type of chart, Swift Charts is built on the idea of creating charts by composition.

2:05

It provides a small number of basic building blocks by combining them in different ways, you can create a wide range of charts.

2:13

Let me show you how it works.

2:14

To do that, I'll need an example.

2:17

All of my teammates love pancakes, so we are having an app to track orders for a food truck selling various kinds of pancakes.

2:24

Here is a chart showing the number of pancakes delivered over the last 30 days, broken down by style.

2:30

This is widely known as a bar chart.

2:33

In Swift Charts, we consider each of the six blue rectangles a mark.

2:38

A mark is a graphical element that represents data.

2:43

This is a bar mark showing the number of cachapas sold over the last 30 days.

2:48

In this chart we have six bar marks, each showing a pancake style and the corresponding sales number.

2:56

Let's see how this is written in code.

2:59

Here we have a SwiftUI view that includes a descriptive title like "Most Sold Style, Cachapa," and an empty chart.

3:06

The chart type here is the top-level view that defines a single chart.

3:11

You can add a chart in your SwiftUI application just like adding any other view.

3:16

For the rest of the talk, we'll focus on the chart part.

3:19

You can add marks to a chart.

3:22

Here we have a single BarMark showing cachapa and its sales number.

3:26

This makes a chart with a single bar mark.

3:29

As shown in the screenshot, the chart fits nicely into the rest of the user interface and has a great default style.

3:36

For example, nicely rounded numbers in the X-axis.

3:40

If you add another bar mark with different name and sales, you'll get a second bar.

3:45

You can repeat this to add more bars.

3:48

In a real app, we'll probably generate these marks programmatically.

3:51

You can do so by providing an array of structs or tuples to the chart, and use a ForEach to create the bar marks with the values from each element.

4:00

If ForEach is the only content in the chart, like in this case, you can also put data in the chart directly.

4:07

Many SwiftUI modifiers are available for marks.

4:10

For example, you could set the color of the bars with the .foregroundStyle modifier.

4:15

Here we are setting it to a named color, which can be created in Xcode as a named asset.

4:21

It's very important that the chart is accessible for everyone.

4:25

By default, the chart will be exposed to VoiceOver users with automatically generated accessibility elements.

4:32

You can customize these with the .accessibilityLabel and .accessibilityValue modifiers.

4:37

Here for example, we set the label to the name of the pancake, and the value to the sales with the suffix "sold." As a result, we get a custom experience for VoiceOver users.

4:50

VoiceOver: Cachapa, 916 sold. Injera, 850 sold.

4:55

Crêpe, 802 sold.

4:59

Donghao: Our app also tracks pancake deliveries over the days.

5:03

Here, we have a view showing the number of pancakes sold in the last 30 days.

5:08

The chart gives a detailed view of each individual day.

5:12

Let's see how to make this chart.

5:14

Here, we have a data array with day and sales.

5:17

The day is represented by a Date value at the start of the day.

5:21

We visualize the data with bar marks, where x shows day, and the unit parameter here means that the Date values represent the duration of a calendar day, and y shows the sales of the day.

5:33

As you see on the right, we get a bar chart showing sales over the days.

5:38

Bar chart is not the only way to visualize this data.

5:41

Let's try a line chart.

5:43

The only change we have to make is to replace BarMark with LineMark.

5:48

With a declarative syntax, it is very easy to switch between chart types in Swift Charts.

5:54

The previous chart shows total sales over time.

5:57

But the food truck service has been operating in two cities, and we would love to compare the sales between the two cities on each weekday, to help us decide where to go.

6:07

The lines in this chart show the sales from Monday to Sunday.

6:11

Each line represents a city.

6:13

Let's see how this is built.

6:16

Now suppose we have two cities' data defined here with an array of tuples, each contains city name and the sales of the weekdays.

6:25

Then, we can wrap the line chart we had before with a ForEach that loops over the series data.

6:32

In order to differentiate the two cities, we use the .foregroundStyle(by:) modifier to style the two lines by the city name.

6:39

As you can see, Swift Charts automatically picks two colors for the two cities, color the lines, and then add a legend to indicate what each color means.

6:48

The default colors are chosen to be system colors that are easy to differentiate.

6:54

To make the chart easier to read for people with color blindness, we can add symbols to the lines to further differentiate them.

7:01

This can be done by adding the .symbol(by:) modifier with city as the data.

7:06

Finally, to make the lines look smoother, we can use a curve as the interpolation method for the lines.

7:13

Even with the two series line chart, we can still go back to bar mark and see how it looks like.

7:19

Changing the mark type to BarMark, and remove the modifiers that aren't relevant to bars, we get a stacked bar chart.

7:27

The bars are automatically stacked because we now have two bars for each month.

7:31

While the stacked bar chart is great for showing the total sales value for the two cities, it's not very good for comparing between the two cities.

7:39

To make it easier to compare, we can turn this into a grouped bar chart with the .position(by:) modifier.

7:46

So far, we've seen bar marks and line marks.

7:49

Swift Charts supports a couple of other mark types including point mark, area mark, rule mark, and rectangle mark.

7:57

You can combine these marks to build more complex charts.

8:00

Let's see an example.

8:03

Let's start with a line chart showing the average daily sales for each month.

8:07

While the average is useful, we also want to see the minimum and maximum daily sales to get an idea of the more extreme values.

8:15

Let's start by adding these values to the data.

8:18

We introduce daily min and daily max to each element in the data array.

8:23

We can then visualize the min and the max with an area mark, where x is showing month, and y starts at the daily min, and ends at the daily max.

8:32

This way, we have a chart showing daily average values with a line, and daily min and max values with the area around the line.

8:39

A line plus area isn't the only way to visualize this kind of data.

8:43

You can easily switch to other mark types to explore more design options.

8:47

For example, here we are using a BarMark.

8:49

However, the line doesn't seem to fit very well with the bars.

8:54

Let's change the line mark to a RectangleMark, with a height of two points.

8:58

This way, the rectangle mark creates horizontal lines inside the bars showing the average value.

9:05

You can also adjust the width of these marks.

9:08

Here, for example, we are setting width to be with a ratio of .6 This means the width of the bars and rectangles will be 60 percent of the width of a whole month, as you can see in the screenshot.

9:20

Finally, we'd like to have an option to show the average daily sales among all the months.

9:25

To do so, we first set the foreground style to a fade gray color to deemphasize them.

9:31

Then, we add a rule mark outside the ForEach, with y showing the average value.

9:35

This adds a horizontal rule.

9:38

To make it clear that the rule is showing the yearly average, we can add an annotation to the rule using the .annotation modifier.

9:45

This adds a text label at the top of the rule mark, with leading alignment.

9:50

We've discussed a couple of examples of building charts by composition.

9:54

There are many different ways to use and combine these basic marks.

9:58

Like a box plot, multi-series line chart, population pyramid, range plot, stream graph, multi-series scatter plot, heat map, or even a plot of a vector field.

10:12

These are just some examples of the wide variety of charts you can build with Swift Charts.

10:17

Let's dive into the next topic.

10:18

Plotting data with mark properties.

10:21

Swift Charts support three major types or data: quantitative, nominal, and temporal.

10:28

Quantitative data is a numerical value, such as the number of products sold, the temperature of a room, or the price of a stock.

10:36

Swift Charts treats Swift numerical types such as Int, Float, and Double as quantitative data.

10:44

Nominal data, or categorical data, represent discrete categories or groups.

10:49

For example, the name of a person, a continent, or the type of a product.

10:55

You can use a string or a custom string-valued enum as nominal data.

10:59

Temporal data represents a point or interval in time.

11:03

For example, the duration of a particular day, or the exact time of a transaction.

11:09

Swift Charts treats "Date" as temporal data.

11:12

A chart works by transforming abstract data, like sales value, into the properties of marks.

11:18

Let's take a look at BarMark, which can plot data with X, Y, and Foreground Style properties.

11:25

In this example, we plot sales value, which is quantitative, with the x property, and name, which is nominal, with the y property.

11:35

The resulting chart consists of horizontal bars, each showing Sales on X, and Name on Y.

11:41

If we swap Name and Sales, such that Name is on X and Sales is on Y, we get a vertical bar chart instead.

11:50

As you can see, the BarMark's behavior depends on the data type plotted with its X and Y properties.

11:56

The orientation of the bar depends on where the quantitative property is.

12:01

Now, let's look at another chart with all three properties used to plot data.

12:05

Here we plot Weekday, which is temporal, with X, Sales with Y, and City with Foreground Style.

12:12

The resulting chart is a stacked bar chart, where X-axis shows Weekday, Y-axis shows Sales, and the bars are colored by city.

12:21

Swift Charts has six mark types, and six mark properties that you can plot data with.

12:26

Remember that data can be of the three kinds, so there is a vast array of possible combinations.

12:33

This is what allows Swift Charts to support a wide range of chart designs with a small number of basic building blocks.

12:40

When you plot data with a mark property, for example, sales with Y, Swift Charts creates a mapping that transforms the abstract data into a proper value of the property.

12:50

In this case, it will transform Sales value to Y coordinates in screen space.

12:55

We use the term "scale" to refer to the mapping from abstract data, like sales, to mark property, like Y position.

13:02

You can think of Scale as a function that takes data value and returns a property value.

13:07

For example, here is a yScale function that takes sales and returns the Y position of the bar.

13:14

The name "scale" comes from the fact that for position properties, we often scale the input value by some factor to convert it to a reasonable screen coordinate.

13:24

When you plot data with mark properties, a scale is created to transform the data into the corresponding mark property.

13:31

For example, in this chart we have three scales, each transforming Weekday to X, Sales to Y, and City to Foreground Style, respectively.

13:41

By default, Swift Charts infers the scales automatically from the data, so you get a nice chart out of the box.

13:48

You can use the scale modifiers to configure the scales in a chart.

13:52

Let's take a look at a few examples.

13:54

In this example, the Y scale is automatically inferred to be zero to 150.

14:00

However, we'd like to fix the Y scale so that no matter what the current sales looks like, we always have a consistent Y scale.

14:08

Let's change it such that the Y scale always starts at zero and ends at 200.

14:13

To do so, we can use the .chartYScale modifier, and set the domain of the scale to be zero to 200.

14:21

Now, as you can see, the axis goes from zero to 200.

14:26

Similarly, we can change how the two cities map to foreground style using the .chartForegroundStyleScale modifier.

14:33

Now we have new colors for the two cities.

14:36

Now we know how to compose marks and plot data with mark properties.

14:40

Let's dive into more customization options that Swift Charts provides.

14:44

A chart consists of axes, possibly a legend, and a plot area.

14:50

Axes and legends help us interpret the chart.

14:53

The plot area is the area between the two axes.

14:56

This is where we plot data with marks.

14:59

All of these elements are customizable in Swift Charts.

15:02

Let's first see a few examples on how to customize axes and legends.

15:07

Here is a chart showing total monthly sales.

15:10

Without customization, Swift Charts generates a default axis that features nicely rounded values.

15:16

Right now, the X-axis shows a label for every quarter.

15:20

Let's change it to show a label every month, and use a single-letter month label.

15:24

We'll start by adding a .chartXAxis modifier to customize the X-axis, with AxisMarks as the content.

15:32

AxisMarks with no parameter recreates the default axis.

15:37

Let's start by changing the axis values.

15:40

Since we want to have regular calendar intervals, we can use stride(by:), similar to the stride function from the standard library.

15:48

Now we have a label for each month.

15:50

However, the default labels feel too crowded, as you see in the screenshot.

15:54

Some labels get truncated because we don't have enough space for them.

15:58

Let's change the labels to use a single-letter format.

16:02

To do so, let's build up the axis marks from the individual components, including AxisGridLine, AxisTick, and AxisValueLabel.

16:10

Let's set the format of the label to use narrow month names.

16:14

Now we have one letter for each month.

16:17

The value parameter passed into the result builder provides information about the current axis value.

16:23

You can use this to conditionally determine the existence and style of axis marks.

16:28

For example, here we have a condition that tests whether the value as a date is the first quarter of a month.

16:35

If yes, we can highlight the first month of each quarter with a different foreground style.

16:40

If not, we only display a grid line, without tick and label.

16:44

Since we are now showing quarters, we can change the format to quarter style.

16:49

With the customizations we just did, we get a more unique X-axis showing quarter data, with subgrid lines showing every month.

16:59

In addition to values, axis marks have other properties that allows you to configure the general appearance and style.

17:05

Suppose we'd like to have the Y-axis appear at the leading edge of the chart instead of the default trailing edge, we can set the position parameter to leading to move them to the leading edge.

17:17

Swift Charts provides a default preset for the axis marks based on the axis and the type of data being visualized.

17:24

You can override the default using the preset parameter.

17:27

For example, here we are using the .extended preset for the Y-axis to help with visual alignment with the rest of the user interface.

17:35

In some charts, you may not want the axis to be visible.

17:39

For example, the purpose of the top sales chart here is to give people a brief overview, so the axes aren't really necessary.

17:47

You can pass in .hidden to the chart axis modifiers to hide an axis.

17:51

Legend configuration is similar to axis.

17:54

For example, in this chart that highlights the best day and location, we already use opacity to highlight the best city, so we can hide the automatically generated legend.

18:04

To do so, we can add the .chartLegend modifier with .hidden as parameter.

18:09

Now let's talk about the plot area.

18:12

You can use the .chartPlotStyle modifier to configure the plot area of a chart.

18:17

In the trailing closure, we will write a function that takes original plot area, and returns a modified plot area.

18:24

Let's see a few examples.

18:27

In some cases, we might want the plot area to have an exact size or aspect ratio.

18:32

For example, in this case, we want the plot area's height to be driven by the number of categories in the chart.

18:38

To achieve this, we can apply a .frame modifier to the plot area, and return the modified plot area.

18:45

This will set the height of the plot area.

18:48

We can also use modifiers to achieve a special visual effect.

18:52

For example, in this Dark Mode chart, we use the .background modifier to add a pink background with opacity of .2 to make the chart stand out a little bit.

19:02

And then add a 1-pt border with the same pink color.

19:05

This creates a unique visual effect for the chart.

19:09

Earlier in the session we mentioned scales, which are functions that map data values to mark properties such as X and Y.

19:17

Swift Charts provides a ChartProxy that allows you to access the X and Y scales in a chart.

19:23

You can use the ChartProxy's position(for:) method to get the position for a given data value, or use the value(at:) method to get the data value at a given position.

19:34

This allows you to coordinate other views with the chart.

19:38

Let's look at an example.

19:41

We are going to build this interactive brushing view.

19:43

Here you can select an interval from the chart with a drag gesture, and that interval will then be used to filter the rows in the details view.

19:52

We can get a chart proxy object from the .chartOverlay or .chartBackground modifiers.

19:56

These two modifiers are similar to SwiftUI's overlay and background modifiers, but they provide you with a chart proxy.

20:04

To build this example, we'll start by defining the base chart just like before.

20:09

We then add a .chartOverlay modifier that provides us with the chart proxy.

20:13

Inside, we have a geometry reader that gives us access to the geometry of the overlay view.

20:19

Then, we have a Rectangle view that is configured to respond to SwiftUI's DragGesture.

20:25

When the drag gesture happens, we first find the x coordinates of the start and the current locations inside the chart's plot area.

20:32

This is done by subtracting the plot area's origin from the locations provided by the gestures.

20:39

Once we have these coordinates, we can then use the chart proxy to find the corresponding Date values, and finally set it to a SwiftUI state that keeps track of the current date interval.

20:51

With the range state, we can then define a rectangle mark in the chart to visualize the currently selected date range.

20:58

This state can also be used to control other parts of your application for example, to filter the contents of the details view below the chart.

21:05

This is a simple example to illustrate how chart proxy works.

21:09

You can use it to build many interesting features, for example, this interactive chart that shows the selected day and sales value with an overlay that looks like a lollipop.

21:19

In this session, we have discussed how to create charts by composing marks; how to plot data with mark properties, and how to customize a chart.

21:27

You can go to the design sessions to learn more about how to design great app experiences with charts and how to design an effective chart.

21:35

We think you will love building data visualizations with Swift Charts.

21:38

Thanks for watching.

</Transcript>

## Code

### Top style chart [3:48]

```swift
import SwiftUI
import Charts

struct TopStyleChart: View {
    let data = [
        (name: "Cachapa", sales: 916),
        (name: "Injera", sales: 850),
        (name: "Crêpe", sales: 802),
        (name: "Jian Bing", sales: 753),
        (name: "Dosa", sales: 654),
        (name: "American", sales: 618)
    ]

    var body: some View {
        Chart(data, id: \.name) {
            BarMark(
                x: .value("Sales", $0.sales),
                y: .value("Name", $0.name)
            )
            // Set the foreground style of the bars.
            .foregroundStyle(.pink)
            // Customize the accessibility label and value.
            .accessibilityLabel($0.name)
            .accessibilityValue("\($0.sales) sold")
        }
    }
}
```

### Daily sales chart [5:12]

```swift
struct DailySalesChart: View {
    var body: some View {
        Chart {
            ForEach(dailySales, id: \.day) {
                // Try change to LineMark.
                BarMark( 
                    x: .value("Day", $0.day, unit: .day),
                    y: .value("Sales", $0.sales)
                )
            }
        }
    }
  
    let dailySales: [(day: Date, sales: Int)] = [
        (day: date(year: 2022, month: 5, day: 8), sales: 168),
        (day: date(year: 2022, month: 5, day: 9), sales: 117),
        (day: date(year: 2022, month: 5, day: 10), sales: 106),
        (day: date(year: 2022, month: 5, day: 11), sales: 119),
        (day: date(year: 2022, month: 5, day: 12), sales: 109),
        (day: date(year: 2022, month: 5, day: 13), sales: 104),
        (day: date(year: 2022, month: 5, day: 14), sales: 196),
        (day: date(year: 2022, month: 5, day: 15), sales: 172),
        (day: date(year: 2022, month: 5, day: 16), sales: 122),
        (day: date(year: 2022, month: 5, day: 17), sales: 115),
        (day: date(year: 2022, month: 5, day: 18), sales: 138),
        (day: date(year: 2022, month: 5, day: 19), sales: 110),
        (day: date(year: 2022, month: 5, day: 20), sales: 106),
        (day: date(year: 2022, month: 5, day: 21), sales: 187),
        (day: date(year: 2022, month: 5, day: 22), sales: 187),
        (day: date(year: 2022, month: 5, day: 23), sales: 119),
        (day: date(year: 2022, month: 5, day: 24), sales: 160),
        (day: date(year: 2022, month: 5, day: 25), sales: 144),
        (day: date(year: 2022, month: 5, day: 26), sales: 152),
        (day: date(year: 2022, month: 5, day: 27), sales: 148),
        (day: date(year: 2022, month: 5, day: 28), sales: 240),
        (day: date(year: 2022, month: 5, day: 29), sales: 242),
        (day: date(year: 2022, month: 5, day: 30), sales: 173),
        (day: date(year: 2022, month: 5, day: 31), sales: 143),
        (day: date(year: 2022, month: 6, day: 1), sales: 137),
        (day: date(year: 2022, month: 6, day: 2), sales: 123),
        (day: date(year: 2022, month: 6, day: 3), sales: 146),
        (day: date(year: 2022, month: 6, day: 4), sales: 214),
        (day: date(year: 2022, month: 6, day: 5), sales: 250),
        (day: date(year: 2022, month: 6, day: 6), sales: 146)
    ]
}

func date(year: Int, month: Int, day: Int = 1) -> Date {
    Calendar.current.date(from: .init(year: year, month: month, day: day)) ?? Date()
}
```

### Sales by location with line mark [6:16]

```swift
struct LocationsChart: View {
    var body: some View {
        Chart {
            ForEach(seriesData, id: \.city) { series in
                ForEach(series.data, id: \.weekday) {
                    LineMark(
                        x: .value("Weekday", $0.weekday, unit: .day),
                        y: .value("Sales", $0.sales)
                    )
                }
                .foregroundStyle(by: .value("City", series.city))
                .symbol(by: .value("City", series.city))
                .interpolationMethod(.catmullRom)
            }
        }
    }

    let seriesData = [
        (
            city: "Cupertino", data: [
                (weekday: date(year: 2022, month: 5, day: 2), sales: 54),
                (weekday: date(year: 2022, month: 5, day: 3), sales: 42),
                (weekday: date(year: 2022, month: 5, day: 4), sales: 88),
                (weekday: date(year: 2022, month: 5, day: 5), sales: 49),
                (weekday: date(year: 2022, month: 5, day: 6), sales: 42),
                (weekday: date(year: 2022, month: 5, day: 7), sales: 125),
                (weekday: date(year: 2022, month: 5, day: 8), sales: 67)
            ]
        ),
        (
            city: "San Francisco", data: [
                (weekday: date(year: 2022, month: 5, day: 2), sales: 81),
                (weekday: date(year: 2022, month: 5, day: 3), sales: 90),
                (weekday: date(year: 2022, month: 5, day: 4), sales: 52),
                (weekday: date(year: 2022, month: 5, day: 5), sales: 72),
                (weekday: date(year: 2022, month: 5, day: 6), sales: 84),
                (weekday: date(year: 2022, month: 5, day: 7), sales: 84),
                (weekday: date(year: 2022, month: 5, day: 8), sales: 137)
            ]
        )
    ]
}

func date(year: Int, month: Int, day: Int = 1) -> Date {
    Calendar.current.date(from: DateComponents(year: year, month: month, day: day)) ?? Date()
}
```

### Sales by location with bar mark [7:19]

```swift
struct LocationsChart: View {
    var body: some View {
        Chart {
            ForEach(seriesData, id: \.city) { series in
                ForEach(series.data, id: \.weekday) {
                    BarMark(
                        x: .value("Weekday", $0.weekday, unit: .day),
                        y: .value("Sales", $0.sales)
                    )
                }
                .foregroundStyle(by: .value("City", series.city))
                .position(by: .value("City", series.city))
            }
        }
    }

    let seriesData = [
        (
            city: "Cupertino", data: [
                (weekday: date(year: 2022, month: 5, day: 2), sales: 54),
                (weekday: date(year: 2022, month: 5, day: 3), sales: 42),
                (weekday: date(year: 2022, month: 5, day: 4), sales: 88),
                (weekday: date(year: 2022, month: 5, day: 5), sales: 49),
                (weekday: date(year: 2022, month: 5, day: 6), sales: 42),
                (weekday: date(year: 2022, month: 5, day: 7), sales: 125),
                (weekday: date(year: 2022, month: 5, day: 8), sales: 67)
            ]
        ),
        (
            city: "San Francisco", data: [
                (weekday: date(year: 2022, month: 5, day: 2), sales: 81),
                (weekday: date(year: 2022, month: 5, day: 3), sales: 90),
                (weekday: date(year: 2022, month: 5, day: 4), sales: 52),
                (weekday: date(year: 2022, month: 5, day: 5), sales: 72),
                (weekday: date(year: 2022, month: 5, day: 6), sales: 84),
                (weekday: date(year: 2022, month: 5, day: 7), sales: 84),
                (weekday: date(year: 2022, month: 5, day: 8), sales: 137)
            ]
        )
    ]
}

func date(year: Int, month: Int, day: Int = 1) -> Date {
    Calendar.current.date(from: DateComponents(year: year, month: month, day: day)) ?? Date()
}
```

### Monthly sales with line and area marks [8:02]

```swift
struct MonthlySalesChart: View {
    var body: some View {
        Chart {
            ForEach(data, id: \.month) {
                AreaMark(
                    x: .value("Month", $0.month, unit: .month),
                    yStart: .value("Daily Min", $0.dailyMin),
                    yEnd: .value("Daily Max", $0.dailyMax)
                )
                .opacity(0.3)
                LineMark(
                    x: .value("Month", $0.month, unit: .month),
                    y: .value("Daily Average", $0.dailyAverage)
                )
            }
        }
    }

    let data = [
        (month: date(year: 2021, month: 7), sales: 3952, dailyAverage: 127, dailyMin: 95, dailyMax: 194),
        (month: date(year: 2021, month: 8), sales: 4044, dailyAverage: 130, dailyMin: 96, dailyMax: 189),
        (month: date(year: 2021, month: 9), sales: 3930, dailyAverage: 131, dailyMin: 101, dailyMax: 184),
        (month: date(year: 2021, month: 10), sales: 4217, dailyAverage: 136, dailyMin: 96, dailyMax: 193),
        (month: date(year: 2021, month: 11), sales: 4006, dailyAverage: 134, dailyMin: 104, dailyMax: 202),
        (month: date(year: 2021, month: 12), sales: 3994, dailyAverage: 129, dailyMin: 96, dailyMax: 190),
        (month: date(year: 2022, month: 1), sales: 4202, dailyAverage: 136, dailyMin: 96, dailyMax: 203),
        (month: date(year: 2022, month: 2), sales: 3749, dailyAverage: 134, dailyMin: 98, dailyMax: 200),
        (month: date(year: 2022, month: 3), sales: 4329, dailyAverage: 140, dailyMin: 104, dailyMax: 218),
        (month: date(year: 2022, month: 4), sales: 4084, dailyAverage: 136, dailyMin: 93, dailyMax: 221),
        (month: date(year: 2022, month: 5), sales: 4559, dailyAverage: 147, dailyMin: 104, dailyMax: 242),
        (month: date(year: 2022, month: 6), sales: 1023, dailyAverage: 170, dailyMin: 120, dailyMax: 250)
    ]
}

func date(year: Int, month: Int, day: Int = 1) -> Date {
    Calendar.current.date(from: DateComponents(year: year, month: month, day: day)) ?? Date()
}
```

### Monthly sales with bar and rectangle marks [8:46]

```swift
struct MonthlySalesChart: View {
    var body: some View {
        Chart {
            ForEach(data, id: \.month) {
                BarMark(
                    x: .value("Month", $0.month, unit: .month),
                    yStart: .value("Daily Min", $0.dailyMin),
                    yEnd: .value("Daily Max", $0.dailyMax),
                    width: .ratio(0.6)
                )
                .opacity(0.3)
                RectangleMark(
                    x: .value("Month", $0.month, unit: .month),
                    y: .value("Daily Average", $0.dailyAverage),
                    width: .ratio(0.6),
                    height: 2
                )
            }
        }
    }

    let data = [
        (month: date(year: 2021, month: 7), sales: 3952, dailyAverage: 127, dailyMin: 95, dailyMax: 194),
        (month: date(year: 2021, month: 8), sales: 4044, dailyAverage: 130, dailyMin: 96, dailyMax: 189),
        (month: date(year: 2021, month: 9), sales: 3930, dailyAverage: 131, dailyMin: 101, dailyMax: 184),
        (month: date(year: 2021, month: 10), sales: 4217, dailyAverage: 136, dailyMin: 96, dailyMax: 193),
        (month: date(year: 2021, month: 11), sales: 4006, dailyAverage: 134, dailyMin: 104, dailyMax: 202),
        (month: date(year: 2021, month: 12), sales: 3994, dailyAverage: 129, dailyMin: 96, dailyMax: 190),
        (month: date(year: 2022, month: 1), sales: 4202, dailyAverage: 136, dailyMin: 96, dailyMax: 203),
        (month: date(year: 2022, month: 2), sales: 3749, dailyAverage: 134, dailyMin: 98, dailyMax: 200),
        (month: date(year: 2022, month: 3), sales: 4329, dailyAverage: 140, dailyMin: 104, dailyMax: 218),
        (month: date(year: 2022, month: 4), sales: 4084, dailyAverage: 136, dailyMin: 93, dailyMax: 221),
        (month: date(year: 2022, month: 5), sales: 4559, dailyAverage: 147, dailyMin: 104, dailyMax: 242),
        (month: date(year: 2022, month: 6), sales: 1023, dailyAverage: 170, dailyMin: 120, dailyMax: 250)
    ]
}

func date(year: Int, month: Int, day: Int = 1) -> Date {
    Calendar.current.date(from: DateComponents(year: year, month: month, day: day)) ?? Date()
}
```

### Monthly sales with average line and annotation [9:19]

```swift
struct MonthlySalesChart: View {
    var body: some View {
        Chart {
            ForEach(data, id: \.month) {
                BarMark(
                    x: .value("Month", $0.month, unit: .month),
                    yStart: .value("Daily Min", $0.dailyMin),
                    yEnd: .value("Daily Max", $0.dailyMax),
                    width: .ratio(0.6)
                )
                .opacity(0.3)
                RectangleMark(
                    x: .value("Month", $0.month, unit: .month),
                    y: .value("Daily Average", $0.dailyAverage),
                    width: .ratio(0.6),
                    height: 2
                )
            }
            .foregroundStyle(.gray.opacity(0.5))

            RuleMark(
                y: .value("Average", averageValue)
            )
            .lineStyle(StrokeStyle(lineWidth: 3))
            .annotation(position: .top, alignment: .leading) {
                Text("Average: \(averageValue, format: .number)")
                    .font(.headline)
                    .foregroundStyle(.blue)
            }
        }
    }

    let data = [
        (month: date(year: 2021, month: 7), sales: 3952, dailyAverage: 127, dailyMin: 95, dailyMax: 194),
        (month: date(year: 2021, month: 8), sales: 4044, dailyAverage: 130, dailyMin: 96, dailyMax: 189),
        (month: date(year: 2021, month: 9), sales: 3930, dailyAverage: 131, dailyMin: 101, dailyMax: 184),
        (month: date(year: 2021, month: 10), sales: 4217, dailyAverage: 136, dailyMin: 96, dailyMax: 193),
        (month: date(year: 2021, month: 11), sales: 4006, dailyAverage: 134, dailyMin: 104, dailyMax: 202),
        (month: date(year: 2021, month: 12), sales: 3994, dailyAverage: 129, dailyMin: 96, dailyMax: 190),
        (month: date(year: 2022, month: 1), sales: 4202, dailyAverage: 136, dailyMin: 96, dailyMax: 203),
        (month: date(year: 2022, month: 2), sales: 3749, dailyAverage: 134, dailyMin: 98, dailyMax: 200),
        (month: date(year: 2022, month: 3), sales: 4329, dailyAverage: 140, dailyMin: 104, dailyMax: 218),
        (month: date(year: 2022, month: 4), sales: 4084, dailyAverage: 136, dailyMin: 93, dailyMax: 221),
        (month: date(year: 2022, month: 5), sales: 4559, dailyAverage: 147, dailyMin: 104, dailyMax: 242),
        (month: date(year: 2022, month: 6), sales: 1023, dailyAverage: 170, dailyMin: 120, dailyMax: 250)
    ]

    let averageValue = 137
}

func date(year: Int, month: Int, day: Int = 1) -> Date {
    Calendar.current.date(from: DateComponents(year: year, month: month, day: day)) ?? Date()
}
```

### Chart with custom scales for Y and foreground style [13:54]

```swift
struct LocationsChart: View {
    var body: some View {
        Chart {
            ForEach(seriesData, id: \.city) { series in
                ForEach(series.data, id: \.weekday) {
                    LineMark(
                        x: .value("Weekday", $0.weekday, unit: .day),
                        y: .value("Sales", $0.sales)
                    )
                }
                .foregroundStyle(by: .value("City", series.city))
                .symbol(by: .value("City", series.city))
                .interpolationMethod(.catmullRom)
            }
        }
        .chartYScale(domain: 0 ... 200)
        .chartForegroundStyleScale([
            "San Francisco": .orange,
            "Cupertino": .pink
        ])
    }
  
    let seriesData = [
        (
            city: "Cupertino", data: [
                (weekday: date(year: 2022, month: 5, day: 2), sales: 54),
                (weekday: date(year: 2022, month: 5, day: 3), sales: 42),
                (weekday: date(year: 2022, month: 5, day: 4), sales: 88),
                (weekday: date(year: 2022, month: 5, day: 5), sales: 49),
                (weekday: date(year: 2022, month: 5, day: 6), sales: 42),
                (weekday: date(year: 2022, month: 5, day: 7), sales: 125),
                (weekday: date(year: 2022, month: 5, day: 8), sales: 67)
            ]
        ),
        (
            city: "San Francisco", data: [
                (weekday: date(year: 2022, month: 5, day: 2), sales: 81),
                (weekday: date(year: 2022, month: 5, day: 3), sales: 90),
                (weekday: date(year: 2022, month: 5, day: 4), sales: 52),
                (weekday: date(year: 2022, month: 5, day: 5), sales: 72),
                (weekday: date(year: 2022, month: 5, day: 6), sales: 84),
                (weekday: date(year: 2022, month: 5, day: 7), sales: 84),
                (weekday: date(year: 2022, month: 5, day: 8), sales: 137)
            ]
        )
    ]
}

func date(year: Int, month: Int, day: Int = 1) -> Date {
    Calendar.current.date(from: DateComponents(year: year, month: month, day: day)) ?? Date()
}
```

### Chart with custom X axis [15:16]

```swift
struct MonthlySalesChart: View {
    var body: some View {
        Chart(data, id: \.month) {
            BarMark(
                x: .value("Month", $0.month, unit: .month),
                y: .value("Sales", $0.sales)
            )
        }
        .chartXAxis {
            AxisMarks( values: .stride(by: .month) ) { value in
                AxisGridLine()
                AxisTick()
                AxisValueLabel(
                    format: .dateTime.month(.narrow)
                )
            }
        }
    }

    let data = [
        (month: date(year: 2021, month: 7), sales: 3952),
        (month: date(year: 2021, month: 8), sales: 4044),
        (month: date(year: 2021, month: 9), sales: 3930),
        (month: date(year: 2021, month: 10), sales: 4217),
        (month: date(year: 2021, month: 11), sales: 4006),
        (month: date(year: 2021, month: 12), sales: 3994),
        (month: date(year: 2022, month: 1), sales: 4202),
        (month: date(year: 2022, month: 2), sales: 3749),
        (month: date(year: 2022, month: 3), sales: 4329),
        (month: date(year: 2022, month: 4), sales: 4084),
        (month: date(year: 2022, month: 5), sales: 4559),
        (month: date(year: 2022, month: 6), sales: 1023)
    ]

    let averageValue = 137
}

func date(year: Int, month: Int, day: Int = 1) -> Date {
    Calendar.current.date(from: DateComponents(year: year, month: month, day: day)) ?? Date()
}
```

### Chart with custom X axis and conditional content for axis marks [16:17]

```swift
struct MonthlySalesChart: View {
    var body: some View {
        Chart(data, id: \.month) {
            BarMark(
                x: .value("Month", $0.month, unit: .month),
                y: .value("Sales", $0.sales)
            )
        }
        .chartXAxis {
            AxisMarks(values: .stride(by: .month)) { value in
                if value.as(Date.self)!.isFirstMonthOfQuarter {
                    AxisGridLine().foregroundStyle(.black)
                    AxisTick().foregroundStyle(.black)
                    AxisValueLabel(
                        format: .dateTime.month(.narrow)
                    )
                } else {
                    AxisGridLine()
                }
            }
        }
    }

    let data = [
        (month: date(year: 2021, month: 7), sales: 3952),
        (month: date(year: 2021, month: 8), sales: 4044),
        (month: date(year: 2021, month: 9), sales: 3930),
        (month: date(year: 2021, month: 10), sales: 4217),
        (month: date(year: 2021, month: 11), sales: 4006),
        (month: date(year: 2021, month: 12), sales: 3994),
        (month: date(year: 2022, month: 1), sales: 4202),
        (month: date(year: 2022, month: 2), sales: 3749),
        (month: date(year: 2022, month: 3), sales: 4329),
        (month: date(year: 2022, month: 4), sales: 4084),
        (month: date(year: 2022, month: 5), sales: 4559),
        (month: date(year: 2022, month: 6), sales: 1023)
    ]

    let averageValue = 137
}

extension Date {
    var isFirstMonthOfQuarter: Bool {
        Calendar.current.component(.month, from: self) % 3 == 1
    }
}

func date(year: Int, month: Int, day: Int = 1) -> Date {
    Calendar.current.date(from: DateComponents(year: year, month: month, day: day)) ?? Date()
}
```

### Chart with custom Y axis [17:00]

```swift
struct MonthlySalesChart: View {
    var body: some View {
        Chart(data, id: \.month) {
            BarMark(
                x: .value("Month", $0.month, unit: .month),
                y: .value("Sales", $0.sales)
            )
        }
        .chartYAxis {
            AxisMarks( preset: .extended, position: .leading)
        }
    }

    let data = [
        (month: date(year: 2021, month: 7), sales: 3952),
        (month: date(year: 2021, month: 8), sales: 4044),
        (month: date(year: 2021, month: 9), sales: 3930),
        (month: date(year: 2021, month: 10), sales: 4217),
        (month: date(year: 2021, month: 11), sales: 4006),
        (month: date(year: 2021, month: 12), sales: 3994),
        (month: date(year: 2022, month: 1), sales: 4202),
        (month: date(year: 2022, month: 2), sales: 3749),
        (month: date(year: 2022, month: 3), sales: 4329),
        (month: date(year: 2022, month: 4), sales: 4084),
        (month: date(year: 2022, month: 5), sales: 4559),
        (month: date(year: 2022, month: 6), sales: 1023)
    ]

    let averageValue = 137
}

func date(year: Int, month: Int, day: Int = 1) -> Date {
    Calendar.current.date(from: DateComponents(year: year, month: month, day: day)) ?? Date()
}
```

### Chart with plot area style [18:26]

```swift
struct TopStyleChart: View {
    var body: some View {
        Chart(data, id: \.name) {
            BarMark(
                x: .value("Sales", $0.sales),
                y: .value("Name", $0.name)
            )
            // Set the foreground style of the bars.
            .foregroundStyle(.pink)
            // Customize the accessibility label and value.
            .accessibilityLabel($0.name)
            .accessibilityValue("\($0.sales) sold")
        }
        .chartPlotStyle { plotArea in
            plotArea.frame(height: 60 * 6)
                    .background(.pink.opacity(0.2))
                    .border(.pink, width: 1)
        }
    }

    let data = [
        (name: "Cachapa", sales: 916),
        (name: "Injera", sales: 850),
        (name: "Crêpe", sales: 802),
        (name: "Jian Bing", sales: 753),
        (name: "Dosa", sales: 654),
        (name: "American", sales: 618)
    ]
}
```

### Chart with brushing interaction [20:03]

```swift
struct InteractiveBrushingChart: View {
    @State var range: (Date, Date)? = nil

    var body: some View {
        Chart {
            ForEach(data, id: \.day) {
                LineMark(
                    x: .value("Month", $0.day, unit: .day),
                    y: .value("Sales", $0.sales)
                )
                .interpolationMethod(.catmullRom)
                .symbol(Circle().strokeBorder(lineWidth: 2))
            }
            if let (start, end) = range {
                RectangleMark(
                    xStart: .value("Selection Start", start),
                    xEnd: .value("Selection End", end)
                )
                .foregroundStyle(.gray.opacity(0.2))
            }
        }
        .chartOverlay { proxy in
            GeometryReader { nthGeoItem in
                Rectangle().fill(.clear).contentShape(Rectangle())
                    .gesture(DragGesture()
                        .onChanged { value in
                            // Find the x-coordinates in the chart's plot area.
                            let xStart = value.startLocation.x - nthGeoItem[proxy.plotAreaFrame].origin.x
                            let xCurrent = value.location.x - nthGeoItem[proxy.plotAreaFrame].origin.x
                            // Find the date values at the x-coordinates.
                            if let dateStart: Date = proxy.value(atX: xStart),
                               let dateCurrent: Date = proxy.value(atX: xCurrent) {
                                range = (dateStart, dateCurrent)
                            }
                        }
                        .onEnded { _ in range = nil } // Clear the state on gesture end.
                    )
            }
        }
    }

    let data: [(day: Date, sales: Int)] = [
        (day: date(year: 2022, month: 5, day: 8), sales: 168),
        (day: date(year: 2022, month: 5, day: 9), sales: 117),
        (day: date(year: 2022, month: 5, day: 10), sales: 106),
        (day: date(year: 2022, month: 5, day: 11), sales: 119),
        (day: date(year: 2022, month: 5, day: 12), sales: 109),
        (day: date(year: 2022, month: 5, day: 13), sales: 104),
        (day: date(year: 2022, month: 5, day: 14), sales: 196),
        (day: date(year: 2022, month: 5, day: 15), sales: 172),
        (day: date(year: 2022, month: 5, day: 16), sales: 122),
        (day: date(year: 2022, month: 5, day: 17), sales: 115),
        (day: date(year: 2022, month: 5, day: 18), sales: 138),
        (day: date(year: 2022, month: 5, day: 19), sales: 110),
        (day: date(year: 2022, month: 5, day: 20), sales: 106),
        (day: date(year: 2022, month: 5, day: 21), sales: 187),
        (day: date(year: 2022, month: 5, day: 22), sales: 187),
        (day: date(year: 2022, month: 5, day: 23), sales: 119),
        (day: date(year: 2022, month: 5, day: 24), sales: 160),
        (day: date(year: 2022, month: 5, day: 25), sales: 144),
        (day: date(year: 2022, month: 5, day: 26), sales: 152),
        (day: date(year: 2022, month: 5, day: 27), sales: 148),
        (day: date(year: 2022, month: 5, day: 28), sales: 240),
        (day: date(year: 2022, month: 5, day: 29), sales: 242),
        (day: date(year: 2022, month: 5, day: 30), sales: 173),
        (day: date(year: 2022, month: 5, day: 31), sales: 143),
        (day: date(year: 2022, month: 6, day: 1), sales: 137),
        (day: date(year: 2022, month: 6, day: 2), sales: 123),
        (day: date(year: 2022, month: 6, day: 3), sales: 146),
        (day: date(year: 2022, month: 6, day: 4), sales: 214),
        (day: date(year: 2022, month: 6, day: 5), sales: 250),
        (day: date(year: 2022, month: 6, day: 6), sales: 146)
    ]
}

func date(year: Int, month: Int, day: Int = 1) -> Date {
    Calendar.current.date(from: DateComponents(year: year, month: month, day: day)) ?? Date()
}
```
