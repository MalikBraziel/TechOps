---
URL: https://developer.apple.com/videos/play/wwdc2025/313/
Title: Bring Swift Charts to the third dimension
Topics:
Date_Published: June 2025
Swift_Version_At_Publish: Swift 6.1
---


# Bring Swift Charts to the third dimension

Learn how to bring your 2D Swift Charts to the third dimension with Chart3D and visualize your data sets from completely new perspectives. Plot your data in 3D, visualize mathematical surfaces, and customize everything from the camera to the materials to make your 3D charts more intuitive and delightful. To get the most out of this session, we recommend being familiar with creating 2D Swift Charts.

### Chapters

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2025/313/?time=0)
- 1:54 - [Plotting in 3D](https://developer.apple.com/videos/play/wwdc2025/313/?time=114)
- 5:05 - [Surface plot](https://developer.apple.com/videos/play/wwdc2025/313/?time=305)
- 7:03 - [Customization](https://developer.apple.com/videos/play/wwdc2025/313/?time=423)

### Resources

- [Swift Charts](https://developer.apple.com/documentation/Charts)
- [Swift Charts updates](https://developer.apple.com/documentation/Updates/SwiftCharts)
- [HD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2025/313/5/01490c3f-6737-43db-b2fb-f3ccfb1e824c/downloads/wwdc2025-313_hd.mp4?dl=1)
- [SD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2025/313/5/01490c3f-6737-43db-b2fb-f3ccfb1e824c/downloads/wwdc2025-313_sd.mp4?dl=1)

### Related Videos

#### WWDC24

- [Swift Charts: Vectorized and function plots](https://developer.apple.com/videos/play/wwdc2024/10155)

#### WWDC22

- [Design an effective chart](https://developer.apple.com/videos/play/wwdc2022/110340)
- [Design app experiences with charts](https://developer.apple.com/videos/play/wwdc2022/110342)

## Transcript

<Transcript>

0:07

Hi, I’m Mike, and I'm an engineer on the System Experience team. Today, I'd like to discuss an exciting new feature in Swift Charts. Swift Charts is a framework for creating approachable and stunning charts.

0:21

Charts are used across Apple platforms for things like checking the temperature in Weather, showing battery usage in Settings, and graphing mathematical functions in Math Notes.

0:34

Using the building blocks available in Swift Charts, you can create 2D charts using components such as axis marks, labels, and line plots. But, the plot thickens! New in iOS, macOS, and visionOS 26, Swift Charts now supports 3D charts. That's right, you can now enable people to explore and understand datasets from completely new perspectives. In this session, I'll show how to bring a set of 2D charts to the third dimension by plotting in 3D, I'll cover how surface plots can be used for graphing three-dimensional math functions, and lastly, I'll go over ways you can customize your charts to make them more intuitive and delightful. But first, I have an important announcement: I love penguins! In fact, one of my favorite datasets contains measurements for hundreds of penguins across the Palmer Archipelago in Antarctica. This data includes the beak length, flipper length, and weight of each penguin, and is grouped by the species of penguin: Chinstrap, Gentoo, and Adélie.

1:54

I'll use Swift Charts to fish for insights in this data, and show how plotting in 3D can help visualize the differences between the penguin species. So, I built a 2D chart here to show the relationship between the flipper lengths and weights of the penguins. PointMark is used to plot each penguin's flipper length and weight, and foregroundStyle colors the points by species, and creates the legend in the corner. This is great, and Swift Charts made it easy to construct a chart. This chart shows that Chinstrap and Adélie penguins have similar flipper lengths and weights, while Gentoo penguins have longer flippers and weigh more.

2:37

The penguin dataset also includes beak length, so I also made a chart that plots the beak length and weight. This one shows that Chinstrap and Gentoo penguins have similar beak lengths, while Adélie penguins have shorter beaks.

2:53

Lastly, I made a chart for the beak lengths and flipper lengths, where it seems penguins with longer beaks tend to have longer flippers too.

3:02

Each of these 2D charts are great, and they provide good insights into the relationships between two properties at a time. However, Swift Charts can now take these charts to the next level, by making a single chart that contains all of this data.

3:18

And it's called Chart3D. Chart3D takes familiar concepts from 2D charts, such as scatter plots, and brings them into full 3D. To use a 3D chart, I'll change Chart to Chart3D.

3:35

PointMark works great in Chart3D, and it now takes a Z value. Here, I use the Beak Length.

3:44

I'll set the Z-axis label to "Beak Length" as well. That's it! With a few lines of code and Chart3D, I can immediately see the differences between the penguin species in a fun and interactive way.

4:00

I can use simple gestures to rotate the chart to precise angles and see three clusters of data points.

4:08

I can also view the chart from the sides to compare two properties at a time, similar to if I was viewing the chart in 2D. 3D charts work great when the shape of the data is more important than the exact values. This can happen naturally when the data itself is three-dimensional, especially if it represents a physical position in 3D space. Also, interactivity is key to understanding three-dimensional datasets, so only consider 3D charts if requiring interaction enhances the experience in your app. When it comes to the best representation for your dataset, the choice between 2D and 3D isn't black and white.

4:51

PointMarks, RuleMarks, and RectangleMarks have all been updated for 3D charts. And now, unique to Chart3D, is SurfacePlot Next, I'll take a deep dive into how SurfacePlot works. SurfacePlot is the three-dimensional extension of LinePlot. It plots a mathematical surface containing up to two variables in three dimensions.

5:20

The new SurfacePlot API is similar to the LinePlot API. It accepts a closure that takes two doubles, and returns a double.

5:31

After entering a math expression in the closure, SurfacePlot evaluates the expression for different values of X and Z and creates a continuous surface of the computed Y values. These surfaces can be as intricate, or as simple, as you want.

5:50

To learn more about function plots via the LinePlot API, check out "Swift Charts: Vectorized and function plots" from WWDC24.

6:01

You know what? Now that I'm looking at the penguin dataset again, there appears to be a linear relationship between the beak length and flipper length of a penguin, and how much it weighs. That seems like a reasonable guess, but instead of winging it, I can use SurfacePlot to show a linear regression of the data.

6:20

I've defined a LinearRegression class that estimates a y value based on the independent x and z variables. More specifically, I set the linear regression to estimate the weight of a penguin based on the flipper length and beak length. This linear regression is then used in SurfacePlot to plot the estimated weights as a continuous surface.

6:47

Great! It does seem like there's a linear relationship in this data. The SurfacePlot shows a positive correlation between the flipper length and weight, and there's a slight positive correlation between the beak length and weight as well. Now, I'll go over some of the great ways to customize the style and behavior of Chart3D.

7:08

While I was interacting with the penguin dataset earlier, I noticed that changing the angle of the chart also changes the appearance of the data. This angle is great for showing the clusters of data points. While this angle works well for showing a linear relationship. These angles are known as the pose of the chart.

7:33

It's important to choose an initial pose that provides a good representation for your data.

7:39

For dynamic data where you don't know the values beforehand, try to choose an initial pose that works well for typical datasets of that type.

7:50

The pose of the chart is adjusted using the Chart3DPose modifier, and it takes a Chart3DPose.

8:01

I can set the pose to specific values, such as front, or I can define a custom pose. This initializer takes two parameters: the azimuth, which rotates the chart left and right, and the inclination, which tilts the chart up and down.

8:27

Next, notice how points near the back of the chart are the same size as points near the front of the chart. This can make it easier to compare sizes and distances across the chart regardless of depth.

8:41

It's also great for viewing charts from the side, as it effectively turns a 3D chart into a 2D one.

8:48

This is known as an orthographic camera projection.

8:53

Chart3D offers two camera projections: orthographic, which is the default behavior, and perspective. With Perspective projection, data points farther away appear smaller, and parallel lines converge. This allows for an immersive experience and can help with depth perception.

9:15

The camera projection is set using the chart3DCameraProjection modifier.

9:23

SurfacePlots have a few customization options for the surface styles as well. ForegroundStyle accepts gradients such as LinearGradient or EllipticalGradient, and it supports two new values: heightBased, which colors points on the surface based on the height of the surface at that point, and normalBased, which colors points on the surface based on the angle of the surface at that point.

9:53

There are many other modifiers available for Chart3D, some of which may be familiar from 2D charts. Use these to customize surface styles, PointMark symbols, the chart domain and axis marks, or the behavior of selection. By combining these view modifiers along with PointMark, RuleMark, RectangleMark, and SurfacePlot, there are all sorts of interesting charts that can be achieved. This is just the tip of the iceberg.

10:23

And, 3D charts work and look great on Vision Pro, where it's a natural fit for three dimensional data sets! That's some of the new 3D features coming to Swift Charts. Once you've decided 3D is a good representation for your data, try plotting with Chart3D to bring a new level of depth to your charts, and use Swift Charts' customization APIs to design your own approachable and stunning charts.

10:53

To learn about best practices for incorporating Swift Charts into your apps, check out "Design app experiences with charts" from WWDC22.

11:04

Thank you. I can't wait to see the types of charts that you bring to the third dimension.

</Transcript>

## Code

2:03 - [A scatterplot of a penguin's flipper length and weight](https://developer.apple.com/videos/play/wwdc2025/313/?time=123)

```swift
// A scatterplot of a penguin's flipper length and weight

import SwiftUI
import Charts

struct PenguinChart: View {
  var body: some View {
    Chart(penguins) { penguin in
      PointMark(
        x: .value("Flipper Length", penguin.flipperLength),
        y: .value("Weight", penguin.weight)
      )
      .foregroundStyle(by: .value("Species", penguin.species))
    }
    .chartXAxisLabel("Flipper Length (mm)")
    .chartYAxisLabel("Weight (kg)")
    .chartXScale(domain: 160...240)
    .chartYScale(domain: 2...7)
    .chartXAxis {
      AxisMarks(values: [160, 180, 200, 220, 240]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
    .chartYAxis {
      AxisMarks(values: [2, 3, 4, 5, 6, 7]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
  }
}
```


2:39 - [A scatterplot of a penguin's beak length and weight](https://developer.apple.com/videos/play/wwdc2025/313/?time=159)

```swift
// A scatterplot of a penguin's beak length and weight

import SwiftUI
import Charts

struct PenguinChart: View {
  var body: some View {
    Chart(penguins) { penguin in
      PointMark(
        x: .value("Beak Length", penguin.beakLength),
        y: .value("Weight", penguin.weight)
      )
      .foregroundStyle(by: .value("Species", penguin.species))
    }
    .chartXAxisLabel("Beak Length (mm)")
    .chartYAxisLabel("Weight (kg)")
    .chartXScale(domain: 30...60)
    .chartYScale(domain: 2...7)
    .chartXAxis {
      AxisMarks(values: [30, 40, 50, 60]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
    .chartYAxis {
      AxisMarks(values: [2, 3, 4, 5, 6, 7]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
  }
}
```


2:51 - [A scatterplot of a penguin's beak length and flipper length](https://developer.apple.com/videos/play/wwdc2025/313/?time=171)

```swift
// A scatterplot of a penguin's beak length and flipper length

import SwiftUI
import Charts

struct PenguinChart: View {
  var body: some View {
    Chart(penguins) { penguin in
      PointMark(
        x: .value("Beak Length", penguin.beakLength),
        y: .value("Flipper Length", penguin.flipperLength)
      )
      .foregroundStyle(by: .value("Species", penguin.species))
    }
    .chartXAxisLabel("Beak Length (mm)")
    .chartYAxisLabel("Flipper Length (mm)")
    .chartXScale(domain: 30...60)
    .chartYScale(domain: 160...240)
    .chartXAxis {
      AxisMarks(values: [30, 40, 50, 60]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
    .chartYAxis {
      AxisMarks(values: [160, 180, 200, 220, 240]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
  }
}
```


3:28 - [A scatterplot of a penguin's flipper length, beak length, and weight](https://developer.apple.com/videos/play/wwdc2025/313/?time=208)

```swift
// A scatterplot of a penguin's flipper length, beak length, and weight

import SwiftUI
import Charts

struct PenguinChart: View {
  var body: some View {
    let xLabel = "Flipper Length (mm)"
    let yLabel = "Weight (kg)"
    let zLabel = "Beak Length (mm)"

    Chart3D(penguins) { penguin in
      PointMark(
        x: .value("Flipper Length", penguin.flipperLength),
        y: .value("Weight", penguin.weight),
        z: .value("Beak Length", penguin.beakLength)
      )
      .foregroundStyle(by: .value("Species", penguin.species))
    }
    .chartXAxisLabel(xLabel)
    .chartYAxisLabel(yLabel)
    .chartZAxisLabel(zLabel)
    .chartXScale(domain: 160...240, range: -0.5...0.5)
    .chartYScale(domain: 2...7, range: -0.5...0.5)
    .chartZScale(domain: 30...60, range: -0.5...0.5)
    .chartXAxis {
      AxisMarks(values: [160, 180, 200, 220, 240]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
    .chartYAxis {
      AxisMarks(values: [2, 3, 4, 5, 6, 7]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
    .chartZAxis {
      AxisMarks(values: [30, 40, 50, 60]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
  }
}
```


5:19 - [A surface plot showing mathematical functions (x \* z)](https://developer.apple.com/videos/play/wwdc2025/313/?time=319)

```swift
// A surface plot showing mathematical functions

import SwiftUI
import Charts

var SurfacePlotChart: View {
  var body: some View {
    Chart3D {
      SurfacePlot(x: "X", y: "Y", z: "Z") { x, z in
        // (Double, Double) -> Double
        x * z
      }
    }
  }
}
```


5:43 - [A surface plot showing mathematical functions](https://developer.apple.com/videos/play/wwdc2025/313/?time=343)

```swift
// A surface plot showing mathematical functions

import SwiftUI
import Charts

var SurfacePlotChart: View {
  var body: some View {
    Chart3D {
      SurfacePlot(x: "X", y: "Y", z: "Z") { x, z in
        // (Double, Double) -> Double
        (sin(5 * x) + sin(5 * z)) / 2
      }
    }
  }
}
```


5:46 - [A surface plot showing mathematical functions (-z)](https://developer.apple.com/videos/play/wwdc2025/313/?time=346)

```swift
// A surface plot showing mathematical functions

import SwiftUI
import Charts

var SurfacePlotChart: View {
  var body: some View {
    Chart3D {
      SurfacePlot(x: "X", y: "Y", z: "Z") { x, z in
        // (Double, Double) -> Double
        -z
      }
    }
  }
}
```


6:19 - [Present a linear regression of the penguin data](https://developer.apple.com/videos/play/wwdc2025/313/?time=379)

```swift
// Present a linear regression of the penguin data

import SwiftUI
import Charts
import CreateML
import TabularData

final class LinearRegression: Sendable {
  let regressor: MLLinearRegressor

  init<Data: RandomAccessCollection>(
    _ data: Data,
    x xPath: KeyPath<Data.Element, Double>,
    y yPath: KeyPath<Data.Element, Double>,
    z zPath: KeyPath<Data.Element, Double>
  ) {
    let x = Column(name: "X", contents: data.map { $0[keyPath: xPath] })
    let y = Column(name: "Y", contents: data.map { $0[keyPath: yPath] })
    let z = Column(name: "Z", contents: data.map { $0[keyPath: zPath] })
    let data = DataFrame(columns: [x, y, z].map { $0.eraseToAnyColumn() })
    regressor = try! MLLinearRegressor(trainingData: data, targetColumn: "Y")
  }

  func callAsFunction(_ x: Double, _ z: Double) -> Double {
    let x = Column(name: "X", contents: [x])
    let z = Column(name: "Z", contents: [z])
    let data = DataFrame(columns: [x, z].map { $0.eraseToAnyColumn() })
    return (try? regressor.predictions(from: data))?.first as? Double ?? .nan
  }
}

let linearRegression = LinearRegression(
  penguins,
  x: \.flipperLength,
  y: \.weight,
  z: \.beakLength
)

struct PenguinChart: some View {
  var body: some View {
    let xLabel = "Flipper Length (mm)"
    let yLabel = "Weight (kg)"
    let zLabel = "Beak Length (mm)"

    Chart3D {
      ForEach(penguins) { penguin in
        PointMark(
          x: .value("Flipper Length", penguin.flipperLength),
          y: .value("Weight", penguin.weight),
          z: .value("Beak Length", penguin.beakLength),
        )
        .foregroundStyle(by: .value("Species", penguin.species))
      }

      SurfacePlot(x: "Flipper Length", y: "Weight", z: "Beak Length") { flipperLength, beakLength in
        linearRegression(flipperLength, beakLength)
      }
      .foregroundStyle(.gray)
    }
    .chartXAxisLabel(xLabel)
    .chartYAxisLabel(yLabel)
    .chartZAxisLabel(zLabel)
    .chartXScale(domain: 160...240, range: -0.5...0.5)
    .chartYScale(domain: 2...7, range: -0.5...0.5)
    .chartZScale(domain: 30...60, range: -0.5...0.5)
    .chartXAxis {
      AxisMarks(values: [160, 180, 200, 220, 240]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
    .chartYAxis {
      AxisMarks(values: [2, 3, 4, 5, 6, 7]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
    .chartZAxis {
      AxisMarks(values: [30, 40, 50, 60]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
  }
}
```


7:50 - [Adjust the initial chart pose (Default)](https://developer.apple.com/videos/play/wwdc2025/313/?time=470)

```swift
// Adjust the initial chart pose

import SwiftUI
import Charts

struct PenguinChart: View {
  @State var pose: Chart3DPose = .default

  var body: some View {
    let xLabel = "Flipper Length (mm)"
    let yLabel = "Weight (kg)"
    let zLabel = "Beak Length (mm)"

    Chart3D(penguins) { penguin in
      PointMark(
        x: .value("Flipper Length", penguin.flipperLength),
        y: .value("Weight", penguin.weight),
        z: .value("Beak Length", penguin.beakLength)
      )
      .foregroundStyle(by: .value("Species", penguin.species))
    }
    .chart3DPose($pose)
    .chartXAxisLabel(xLabel)
    .chartYAxisLabel(yLabel)
    .chartZAxisLabel(zLabel)
    .chartXScale(domain: 160...240, range: -0.5...0.5)
    .chartYScale(domain: 2...7, range: -0.5...0.5)
    .chartZScale(domain: 30...60, range: -0.5...0.5)
    .chartXAxis {
      AxisMarks(values: [160, 180, 200, 220, 240]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
    .chartYAxis {
      AxisMarks(values: [2, 3, 4, 5, 6, 7]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
    .chartZAxis {
      AxisMarks(values: [30, 40, 50, 60]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
  }
}
```


8:02 - [Adjust the initial chart pose (Front)](https://developer.apple.com/videos/play/wwdc2025/313/?time=482)

```swift
// Adjust the initial chart pose

import SwiftUI
import Charts

struct PenguinChart: View {
  @State var pose: Chart3DPose = .front

  var body: some View {
    let xLabel = "Flipper Length (mm)"
    let yLabel = "Weight (kg)"
    let zLabel = "Beak Length (mm)"

    Chart3D(penguins) { penguin in
      PointMark(
        x: .value("Flipper Length", penguin.flipperLength),
        y: .value("Weight", penguin.weight),
        z: .value("Beak Length", penguin.beakLength)
      )
      .foregroundStyle(by: .value("Species", penguin.species))
    }
    .chart3DPose($pose)
    .chartXAxisLabel(xLabel)
    .chartYAxisLabel(yLabel)
    .chartZAxisLabel(zLabel)
    .chartXScale(domain: 160...240, range: -0.5...0.5)
    .chartYScale(domain: 2...7, range: -0.5...0.5)
    .chartZScale(domain: 30...60, range: -0.5...0.5)
    .chartXAxis {
      AxisMarks(values: [160, 180, 200, 220, 240]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
    .chartYAxis {
      AxisMarks(values: [2, 3, 4, 5, 6, 7]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
    .chartZAxis {
      AxisMarks(values: [30, 40, 50, 60]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
  }
}
```


8:09 - [Adjust the initial chart pose (Custom)](https://developer.apple.com/videos/play/wwdc2025/313/?time=489)

```swift
// Adjust the initial chart pose

import SwiftUI
import Charts

struct PenguinChart: View {
  @State var pose = Chart3DPose(
    azimuth: .degrees(20),
    inclination: .degrees(7)
  )

  var body: some View {
    let xLabel = "Flipper Length (mm)"
    let yLabel = "Weight (kg)"
    let zLabel = "Beak Length (mm)"

    Chart3D(penguins) { penguin in
      PointMark(
        x: .value("Flipper Length", penguin.flipperLength),
        y: .value("Weight", penguin.weight),
        z: .value("Beak Length", penguin.beakLength)
      )
      .foregroundStyle(by: .value("Species", penguin.species))
    }
    .chart3DPose($pose)
    .chartXAxisLabel(xLabel)
    .chartYAxisLabel(yLabel)
    .chartZAxisLabel(zLabel)
    .chartXScale(domain: 160...240, range: -0.5...0.5)
    .chartYScale(domain: 2...7, range: -0.5...0.5)
    .chartZScale(domain: 30...60, range: -0.5...0.5)
    .chartXAxis {
      AxisMarks(values: [160, 180, 200, 220, 240]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
    .chartYAxis {
      AxisMarks(values: [2, 3, 4, 5, 6, 7]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
    .chartZAxis {
      AxisMarks(values: [30, 40, 50, 60]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
  }
}
```


9:15 - [Adjust the initial chart pose and camera projection](https://developer.apple.com/videos/play/wwdc2025/313/?time=555)

```swift
// Adjust the initial chart pose and camera projection

import SwiftUI
import Charts

struct PenguinChart: View {
  @State var pose = Chart3DPose(
    azimuth: .degrees(20),
    inclination: .degrees(7)
  )

  var body: some View {
    let xLabel = "Flipper Length (mm)"
    let yLabel = "Weight (kg)"
    let zLabel = "Beak Length (mm)"

    Chart3D(penguins) { penguin in
      PointMark(
        x: .value("Flipper Length", penguin.flipperLength),
        y: .value("Weight", penguin.weight),
        z: .value("Beak Length", penguin.beakLength)
      )
      .foregroundStyle(by: .value("Species", penguin.species))
    }
    .chart3DPose($pose)
    .chart3DCameraProjection(.perspective)
    .chartXAxisLabel(xLabel)
    .chartYAxisLabel(yLabel)
    .chartZAxisLabel(zLabel)
    .chartXScale(domain: 160...240, range: -0.5...0.5)
    .chartYScale(domain: 2...7, range: -0.5...0.5)
    .chartZScale(domain: 30...60, range: -0.5...0.5)
    .chartXAxis {
      AxisMarks(values: [160, 180, 200, 220, 240]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
    .chartYAxis {
      AxisMarks(values: [2, 3, 4, 5, 6, 7]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
    .chartZAxis {
      AxisMarks(values: [30, 40, 50, 60]) {
        AxisTick()
        AxisGridLine()
        AxisValueLabel()
      }
    }
  }
}
```


9:24 - [Customize the surface styles for a sinc function](https://developer.apple.com/videos/play/wwdc2025/313/?time=564)

```swift
// Customize the surface styles for a sinc function

import SwiftUI
import Charts

struct SurfacePlotChart: View {
  var body: some View {
    Chart3D {
      SurfacePlot(x: "X", y: "Y", z: "Z") { x, z in
        let h = hypot(x, z)
        return sin(h) / h
      }
    }
    .chartXScale(domain: -10...10, range: -0.5...0.5)
    .chartZScale(domain: -10...10, range: -0.5...0.5)
    .chartYScale(domain: -0.23...1, range: -0.5...0.5)
  }
}
```


9:29 - [Customize the surface styles for a sinc function (EllipticalGradient)](https://developer.apple.com/videos/play/wwdc2025/313/?time=569)

```swift
// Customize the surface styles for a sinc function

import SwiftUI
import Charts

struct SurfacePlotChart: View {
  var body: some View {
    Chart3D {
      SurfacePlot(x: "X", y: "Y", z: "Z") { x, z in
        let h = hypot(x, z)
        return sin(h) / h
      }
      .foregroundStyle(EllipticalGradient(colors: [.red, .orange, .yellow, .green, .blue, .indigo, .purple]))
    }
    .chartXScale(domain: -10...10, range: -0.5...0.5)
    .chartZScale(domain: -10...10, range: -0.5...0.5)
    .chartYScale(domain: -0.23...1, range: -0.5...0.5)
  }
}
```


9:38 - [Customize the surface styles for a sinc function (heightBased)](https://developer.apple.com/videos/play/wwdc2025/313/?time=578)

```swift
// Customize the surface styles for a sinc function

import SwiftUI
import Charts

struct SurfacePlotChart: View {
  var body: some View {
    Chart3D {
      SurfacePlot(x: "X", y: "Y", z: "Z") { x, z in
        let h = hypot(x, z)
        return sin(h) / h
      }
      .foregroundStyle(.heightBased)
    }
    .chartXScale(domain: -10...10, range: -0.5...0.5)
    .chartZScale(domain: -10...10, range: -0.5...0.5)
    .chartYScale(domain: -0.23...1, range: -0.5...0.5)
  }
}
```


9:47 - [Customize the surface styles for a sinc function (normalBased)](https://developer.apple.com/videos/play/wwdc2025/313/?time=587)

```swift
// Customize the surface styles for a sinc function

import SwiftUI
import Charts

struct SurfacePlotChart: View {
  var body: some View {
    Chart3D {
      SurfacePlot(x: "X", y: "Y", z: "Z") { x, z in
        let h = hypot(x, z)
        return sin(h) / h
      }
      .foregroundStyle(.normalBased)
    }
    .chartXScale(domain: -10...10, range: -0.5...0.5)
    .chartZScale(domain: -10...10, range: -0.5...0.5)
    .chartYScale(domain: -0.23...1, range: -0.5...0.5)
  }
}
