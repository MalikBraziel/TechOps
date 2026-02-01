---
URL: https://developer.apple.com/videos/play/wwdc2025/300/
Title: Enhance your app with machine-learning-based video effects
Topics:
Date_Published: June 2025
Swift_Version_At_Publish: Swift 6.1
---


# Enhance your app with machine-learning-based video effects

Discover how to add effects like frame rate conversion, super resolution, and noise filtering to improve video editing and live streaming experiences. We'll explore the ML-based video processing algorithms optimized for Apple Silicon available in the Video Toolbox framework. Learn how to integrate these effects to enhance the capabilities of your app for real-world use cases.

### Chapters

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2025/300/?time=0)
- 1:04 - [Video effects overview](https://developer.apple.com/videos/play/wwdc2025/300/?time=64)
- 4:55 - [Add effects to your app](https://developer.apple.com/videos/play/wwdc2025/300/?time=295)
- 6:46 - [Example use: frame rate conversion](https://developer.apple.com/videos/play/wwdc2025/300/?time=406)
- 11:16 - [Example use: motion blur effect](https://developer.apple.com/videos/play/wwdc2025/300/?time=676)
- 13:46 - [Example use: low latency super resolution effect](https://developer.apple.com/videos/play/wwdc2025/300/?time=826)
- 14:55 - [Example use: low latency frame interpolation](https://developer.apple.com/videos/play/wwdc2025/300/?time=895)

### Resources

- [Enhancing your app with machine learning-based video effects](https://developer.apple.com/documentation/VideoToolbox/enhancing-your-app-with-machine-learning-based-video-effects)
- [Frame processing](https://developer.apple.com/documentation/VideoToolbox/frame-processing)
- [Video Toolbox](https://developer.apple.com/documentation/VideoToolbox)
- [HD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2025/300/4/be89fd99-ba12-4e24-96ed-a626da355488/downloads/wwdc2025-300_hd.mp4?dl=1)
- [SD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2025/300/4/be89fd99-ba12-4e24-96ed-a626da355488/downloads/wwdc2025-300_sd.mp4?dl=1)

## Transcript

0:07

Hello, I’m Makhlouf, an engineer on the Video processing team. Video Toolbox is one of the most used frameworks in video applications. It has a rich collection of features intended for many video needs. Starting in macOS 15.4, Video Toolbox was enhanced with VTFrameProcessor API. A new set of ML-based video processing algorithms optimized for Apple Silicon. I’m happy to share that this API is now also available in iOS 26.

0:43

In this video, I’ll start by showing the effects currently available with VTFrameProcessor API. Then, I’ll go over the basic steps to integrate effects into your app. And finally, I’ll demonstrate how to implement a few examples for major use cases. VTFrameProcessor API offers a variety of effects that cover many usages.

1:11

Frame rate conversion, super resolution and motion blur are designed for high quality video editing. Low latency frame interpolation and super resolution effects are for applications with real-time processing needs. Temporal noise filter can be used in both cases.

1:32

I’ll show you the results that you can achieve with these effects.

1:36

Frame rate conversion adjusts the number of frames per second in a clip to match the target FPS. It can also be used to create a slow-motion effect. On the left side is a video of soccer players celebrating a goal. On the right side is the same video with the slo-mo effect. By slowing down the action, the video captures the intensity of the celebration and highlights the emotions of the players.

2:07

Super Resolution scaler enhances video resolution and restores fine details in old videos, making it ideal for application like photo enhancement and media restoration. In this example, applying the super resolution effect enhances the sharpness and clarity of the video, making the boats on the right side appear more detailed and less blurry. Two ML models are available for super resolution, one for images and the other for videos.

2:40

Motion blur, a popular feature in filmmaking, is essential for creating natural movements that an audience expects. It can also be used to create various effects. In this example the motion blur effect is applied to the video on the right, making the biker appear to be traveling at a significantly faster pace. Additionally, the effect helps to smooth out the jarring motion on the video on the left, and it is more enjoyable to watch. Another very helpful effect is temporal noise filtering. It’s based on motion estimation utilizing past and future reference frames. It can help smooth out temporal noise and remove artifacts in a video, making it easier to compress and improving its quality. On the left, there is a video of a tree with a lot of color noise. After applying the effect, the video on the right is much cleaner, with less noise, especially on the traffic sign. The low latency frame interpolation effect upsamples the frame rate with real-time performance. Optionally, the resolution can also be upsampled. On the left side, there is a choppy, low frame rate video of a woman walking and talking to the camera. The enhanced video on the right is smoother and more pleasant to watch. Low latency video super resolution is a lightweight super scaler. It is specifically optimized to enhance the video conferencing experience even when the network condition is bad. It reduces coding artifacts and sharpens edges to produce enhanced video frames. To demonstrate this effect, on the left is a low-resolution, low-quality video of a man talking. The processed video on the right has higher resolution, reduced compression artifacts, sharpened edges, and more detailed facial features.

4:54

In the next topic, I will cover how an application can integrate these effects. I will explain how data is exchanged between the application and the framework. I will also outline the main steps to process a clip. To access VTFrameProcessor API, applications need to import the Video Toolbox framework. After that, there are two main steps to process a clip. Step one is to select the effect. During this stage, the application starts a processing session by providing a configuration of settings, to describe how to use the effect for the whole session. Once the session is created, the application gets a VTFrameProcessor object, that is ready to process frames. VTFrameProcessor is a frame-based API, meaning the application must send the input video frames with their parameters one by one. After processing is done, the framework returns the output frame.

6:02

There are many use cases that can benefit from the VTFrameProcessor API. I’ll go over some examples and show how to implement them.

6:12

But before that, I want to mention there is a fully functional sample code attached to this presentation to use as a reference. The demo application has test clips to try out these effects.

6:27

I’m going to focus on two use cases, video editing and live video enhancement.

6:33

Frame rate conversion, super resolution, motion blur and temporal noise filter are all well suited for video editing applications. where video quality is the primary concern. I will start with frame rate conversion.

6:50

Frame rate conversion is the process of increasing the number of frames in a video clip. This is achieved by synthesizing new frames and inserting them between the existing ones. It is usually done to improve playback smoothness, especially in case of judder caused by frame rate mismatch between the source and the target display. It can help filling the gaps created by missing frames. It can also be used to create slow-motion effect, which is often used in filmmaking to slow down action scenes, making them visually more impressive. In sports, slow motion is used to highlight and analyze key moments in a game.

7:38

On the left side, there is a video of a man practicing a dance routine. On the right side is the same video with the slow-motion effect. Applying the effect gives the viewers more time to appreciate the complexity of the dance movements, making it even more captivating.

7:58

Now I will demonstrate how to implement frame rate conversion using the VTFrameProcessor API.

8:05

The first step is to create the session for the effect. To do this, I will create a VTFrameProcessor object. Next, I create the configuration object. For frame rate conversion, use VTFrameRateConversionConfiguration type. To initialize the configuration, I need to provide few settings, like input frame width and height, whether optical flow was pre-computed or not, quality level, and algorithm revision. I can now invoke the start session method to initialize the frame processing engine.

8:44

Step two is to use the parameters object to process frames. In this case the object should be of type VTFrameRateConversionParameters.

8:56

But before using the parameters class, I need to allocate all the needed buffers. In general, all input and output frame buffers are allocated by the caller. Source and destination pixel buffer attributes of the configuration class can be used to set up CVPixelBuffer pools. First, I create the current source and next frame objects. Then, the interpolationPhase array is created to indicate where to insert the interpolated frames. The array size indicates how many frames to interpolate. Finally, the destination array is created with buffers to receive the output. It is of the same size as the interpolationPhase array. Now that I have my buffers ready, I can set the remaining parameters. I set the optical flow to nil, allowing the processor to calculate the flow for me. I also set the submission mode to indicate whether frames are sent in sequence or in a random order. Once VTFrameRateConversionParameters has been created, I can now call the process function for the actual processing.

10:16

In summary, each effect is defined by two types of classes: the VTFrameProcessorConfiguration class which describes how to set up the processing session for the effect; the VTFrameProcessorParameters class which describes the input and output frames and all associated parameters. An important decision to make when developing your app is whether or not to pre-compute optical flow. Flow calculation can be expensive and some apps choose to do it beforehand to improve performance at the rendering phase. To compute optical flow beforehand, use VTOpticalFlowConfiguration and VTOpticalFlowParameters classes. When the use pre-computed flow parameter is set to false in a configuration, the framework computes the flow on the fly.

11:17

Now I will go over another important video editing feature, Motion Blur.

11:23

Motion Blur simulates a slow shutter speed to create a blurred effect on moving objects. The blur strength can be adjusted through the API to control the intensity of the blur. It is used in many situations, such as making motion look natural, or for artistic reasons, like adding a sense of speed to fast moving objects.

11:49

On the left, there is a time-lapse video of a freeway. After applying the motion blur effect, the video on the right is now more fluid. Applying motion blur to time-lapse videos replicates natural movement, making them look more realistic and less like a series of still images.

12:12

To create a motion blur processing session use the VTMotionBlurConfiguration class. As a reference you can refer to the frame rate conversion example as they share similar settings. Next I will show how to initialize the VTMotionBlurParameters object to process frames.

12:35

Two reference frames are needed for motion blur; next and previous. For the first frame in a clip, the previous frame should be set to nil. Also, at the end of a clip, the next frame should be set to nil. Now that I have the frame buffers, I can create the VTMotionBlurParameters. I let the processor compute optical flow by setting the flow parameters to nil. Then, I choose the blur strength, which ranges from 1 to 100. Once I have created motion blur parameters, I call the process function to initiate the actual processing.

13:17

Now, I will discuss a couple of features intended for real-time usage scenarios, like video conferencing and live streaming.

13:26

Temporal noise filtering, Low latency frame interpolation and super resolution effects are all designed for real-time usages. They provide enhancements with performance in mind. For the low latency effects, the enhancement is usually performed on the receiving devices.

13:46

Now I will go over a couple of these effects. I’ll begin with low latency super resolution. To implement this effect, I need to use the LowLatencySuperResolutionScalerConfiguration and parameters classes. Both classes are straightforward to use. The configuration class only needs frame width, height, as well as the scaling ratio, while the parameters class only requires source and destination frame buffers. This example demonstrates how low latency super resolution can enhance video conferencing session. The video on the left shows a bearded man in a video call, talking, smiling and making hand gestures. It appears blurry due to its low resolution. After applying the super-resolution effect, as the video on the right shows, the man’s face becomes significantly sharper, especially the texture on his facial hair.

14:55

Low latency frame interpolation is also intended for enhancing real-time video conferencing. This is highly beneficial for video call applications, especially when the connection is slow. To apply this effect, use the appropriate version of the LowLatencyFrameInterpolationConfiguration and Parameters classes.

15:19

Previously, we have shown how Low latency frame interpolation can smooth out juddering to provide a pleasant streaming experience. We have an additional utility in this API that combines frame rate doubling and resolution upscaling capabilities into one filter.

15:41

After processing, the woman’s facial features and the background are sharper and the stream is smoother.

15:50

The Video Toolbox framework already provides many features, like direct access to hardware video encoding and decoding capabilities. It allows for services like video compression, decompression, as well as pixel format conversions. With the addition of the VTFrameProcessor API, developers can now create even more compelling applications. Now that you have learned about the VTFrameProcessor API, it’s time to integrate these effects into your app. Enhance your video editing features with new effects like slo-mo or motion blur. Improve your live streaming experiences with low latency super resolution and frame interpolation.

16:37

These are just a few examples of what you can accomplish with the VTFrameProcessor API. Thank you for watching my video and I’m looking forward to seeing your videos.

## Code

8:06 - [Frame rate conversion configuration](https://developer.apple.com/videos/play/wwdc2025/300/?time=486)

```swift
// Frame rate conversion configuration


let processor = VTFrameProcessor()

guard let configuration = VTFrameRateConversionConfiguration(frameWidth: width,
                                                            frameHeight: height,
                                                     usePrecomputedFlow: false,
                                                  qualityPrioritization: .normal,
                                                               revision: .revision1)
else {
     throw Fault.failedToCreateFRCConfiguration
}

try processor.startSession(configuration: configuration)
```


8:56 - [Frame rate conversion buffer allocation](https://developer.apple.com/videos/play/wwdc2025/300/?time=536)

```swift
// Frame rate conversion buffer allocation

//use sourcePixelBufferAttributes and destinationPixelBufferAttributes property of VTFrameRateConversionConfiguration to create source and destination CVPixelBuffer pools

sourceFrame = VTFrameProcessorFrame(buffer: curPixelBuffer, presentationTimeStamp: sourcePTS)
nextFrame = VTFrameProcessorFrame(buffer: nextPixelBuffer, presentationTimeStamp: nextPTS)

// Interpolate 3 frames between reference frames for 4x slow-mo
var interpolationPhase: [Float] = [0.25, 0.5, 0.75]

//create destinationFrames
let destinationFrames = try framesBetween(firstPTS: sourcePTS,
                                           lastPTS: nextPTS,
                            interpolationIntervals: intervals)
```


9:48 - [Frame rate conversion parameters](https://developer.apple.com/videos/play/wwdc2025/300/?time=588)

```swift
// Frame rate conversion parameters

guard let parameters = VTFrameRateConversionParameters(sourceFrame: sourceFrame,
                                                         nextFrame: nextFrame,
                                                       opticalFlow: nil,
                                                interpolationPhase: interpolationPhase,
                                                    submissionMode: .sequential,
                                                 destinationFrames: destinationFrames)
else {
     throw Fault.failedToCreateFRCParameters
}

try await processor.process(parameters: parameters)
```


12:35 - [Motion blur process parameters](https://developer.apple.com/videos/play/wwdc2025/300/?time=755)

```swift
// Motion blur process parameters

sourceFrame = VTFrameProcessorFrame(buffer: curPixelBuffer, presentationTimeStamp: sourcePTS)
nextFrame = VTFrameProcessorFrame(buffer: nextPixelBuffer, presentationTimeStamp: nextPTS)
previousFrame = VTFrameProcessorFrame(buffer: prevPixelBuffer, presentationTimeStamp: prevPTS)
destinationFrame = VTFrameProcessorFrame(buffer: destPixelBuffer, presentationTimeStamp: sourcePTS)

guard let parameters = VTMotionBlurParameters(sourceFrame: currentFrame,
                                                nextFrame: nextFrame,
                                            previousFrame: previousFrame,
                                          nextOpticalFlow: nil,
                                      previousOpticalFlow: nil,
                                       motionBlurStrength: strength,
                                           submissionMode: .sequential,
                                         destinationFrame: destinationFrame) 
else {
    throw Fault.failedToCreateMotionBlurParameters
}

try await processor.process(parameters: parameters)
```