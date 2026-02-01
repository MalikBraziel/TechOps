---
URL: https://developer.apple.com/videos/play/wwdc2025/319/
Title: Capture cinematic video in your app
Topics:
Date_Published: June 2025
Swift_Version_At_Publish: Swift 6.1
---


# Capture cinematic video in your app

Discover how the Cinematic Video API enables your app to effortlessly capture cinema-style videos. We'll cover how to configure a Cinematic capture session and introduce the fundamentals of building a video capture UI. We'll also explore advanced Cinematic features such as applying a depth of field effect to achieve both tracking and rack focus.

### Chapters

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2025/319/?time=0)
- 0:33 - [Cinematic video](https://developer.apple.com/videos/play/wwdc2025/319/?time=33)
- 3:44 - [Build a great cinematic capture experience](https://developer.apple.com/videos/play/wwdc2025/319/?time=224)

### Resources

- [AVCam: Building a camera app](https://developer.apple.com/documentation/AVFoundation/avcam-building-a-camera-app)
- [AVFoundation](https://developer.apple.com/documentation/AVFoundation)
- [Capturing cinematic video](https://developer.apple.com/documentation/AVFoundation/capturing-cinematic-video)
- [Cinematic](https://developer.apple.com/documentation/Cinematic)
- [HD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2025/319/4/55797f51-c074-44e8-85fe-5aaa0780ba91/downloads/wwdc2025-319_hd.mp4?dl=1)
- [SD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2025/319/4/55797f51-c074-44e8-85fe-5aaa0780ba91/downloads/wwdc2025-319_sd.mp4?dl=1)

### Related Videos

#### WWDC25

- [Enhancing your camera experience with capture controls](https://developer.apple.com/videos/play/wwdc2025/253)

#### WWDC24

- [Build a great Lock Screen camera capture experience](https://developer.apple.com/videos/play/wwdc2024/10204)

#### WWDC23

- [Create a more responsive camera experience](https://developer.apple.com/videos/play/wwdc2023/10105)
- [Discover Continuity Camera for tvOS](https://developer.apple.com/videos/play/wwdc2023/10256)
- [Support external cameras in your iPadOS app](https://developer.apple.com/videos/play/wwdc2023/10106)

## Transcript

<Transcript>

- [0:06] Hi, I'm Roy. I’m an engineer on the Camera Software team. Today, I’m excited to talk about how your apps can easily capture pro-level cinema-style videos with a Cinematic Video API.

- [0:19] With iPhone 13 and 13 Pro, we introduced Cinematic mode. With its intuitive user interface and powerful algorithms, It transformed iPhone into a cinematography powerhouse. In this talk, we will have a look at what makes Cinematic video magical and walk through some code together to see how to build a great Cinematic capture experience.

- [0:43] So, what is Cinematic video? At its heart are classic storytelling tools like rect focus and tracking focus. With a shallow depth of field, the director guides viewers attention to the key subjects in the scene, enhancing narrative impacts. When subjects move, as they often do in films, tracking focus keeps them sharply in view.

- [1:07] Though powerful, in the real world, these focus techniques require a great deal of expertise, which is why on a movie set, there are focus pollers whose main responsibility is to carry out these powerful but challenging shots. Cinematic video drastically simplifies this by intelligently driving focus decisions. For example, when a subject enters the frame, the algorithm automatically racks the focus to them and starts tracking. When a subject looks away, the focus automatically transitions to another point, returning to the subject when appropriate. This year, we're making these amazing capabilities available as the Cinematic Video API, so your apps can easily capture these amazing cinema-style videos. Let’s explore how we can build a great capture experience for Cinematic videos using the new API. Let’s start with a typical capture session for a video app.

- [2:06] Firstly, we select the device from which we want to capture movies.

- [2:12] Then we add it to a device input. Depending on the use cases, multiple outputs can be added to the session. Connection objects will be created when these outputs are added to the capture session.

- [2:26] This is not a trivial setup, but enabling Cinematic video capture is really easy. In iOS 26, we're adding a new property, isCinematicVideoCaptureEnabled on the AVCaptureDeviceInput class. By setting it to true, we configure the whole capture session to output Cinematic video. and each of the outputs will now receive the Cinematic treatment.

- [2:51] The movie file produced by the movie file output will be Cinematic. It contains the disparity data, metadata, and the original video that enables non-destructive editing. To play it back with the bokeh rendered or edit the bokeh effect, you can use the Cinematic Framework we introduced in 2023. To learn more about this framework, please check out the WWDC23 session Support Cinematic mode videos in your app. The video data output will produce frames with a shallow depth of field effect baked in. This is useful when you need direct access to the frames, such as when sending them to a remote device.

- [3:34] Similarly, the preview layer will have the bokeh rendered into it in real time. It's an easy way to build a viewfinder. With this high-level architecture in mind, let’s walk through some code in these following areas.

- [3:50] We will configure an AVCaptureSession with all its components required for Cinematic capture.

- [3:57] Then we build an interface for video capture using SwiftUI.

- [4:02] We will walk through how to get metadata like face detections and how to draw them on the screen.

- [4:09] With different ways to manually drive focus, we tap into the full power of Cinematic video.

- [4:15] And we finish off with some advanced features to make our app more polished.

- [4:22] Let’s get started with the capture session. First, let’s find the video device from which we want to capture the movie. To find the device, we create an AVCaptureDevice.DiscoverySession object.

- [4:36] Cinematic video is supported on both the Dual Wide camera in the back and the TrueDepth camera in the front. In this case, we specify .builtInDualWideCamera in the array of device types. Since we're shooting a movie, we use .video as the mediaType.

- [4:54] And we request the camera in the back of the device.

- [4:58] As we're only requesting a single device type, we can just get the first element in the discovery session's devices array.

- [5:06] In order to enable Cinematic video capture, a format that supports this feature must be used.

- [5:13] To find such formats, we can iterate through all the device's formats and use the one whose isCinematicVideoCaptureSupported property returns true.

- [5:24] Here are all the supported formats.

- [5:28] For both Dual Wide and TrueDepth cameras, both 1080p and 4K are supported at 30 frames per second.

- [5:37] If you are interested in recording SDR or EDR content, you can use either 420 video range or full range. If we prefer 10-bit HDR video content, use x420 instead.

- [5:51] Since we're not making a silent film, we want sound as well. We will use the same DiscoverySession API to find the microphone.

- [6:01] With our devices in hand, we create the inputs for each one of them. Then we add these inputs to the capture session. At this point, we can turn on Cinematic video capture on the video input. To enhance the Cinematic experience, we can capture spatial audio by simply setting first order ambisonics as the multichannelAudioMode.

- [6:24] To learn more about spatial audio, please check out this year's session, "Enhance your app's audio content creation capabilities." Moving on to the outputs, we create an AVCaptureMovieFileOutput object and add it to the session.

- [6:40] Our hands are never as steady as a tripod, so we recommend enabling video stabilization. To do so, we first find the video connection of the movieFileOutput and set its preferredVideoStabilizationMode. In this case, we use cinematicExtendedEnhanced.

- [6:59] Lastly, we need to associate our preview layer with the capture session. We're done with the capture session for now. Let's move on to the user interface.

- [7:09] Since AVCaptureVideoPreviewLayer is a subclass of CALayer, which is not part of SwiftUI, to make them interoperate, we need to wrap the preview layer into a struct that conforms to the UIViewRepresentable protocol. Within this struct, we make a UIView subclass CameraPreviewUIView.

- [7:30] We override its layerClass property to make the previewLayer the backing layer for the view.

- [7:37] And we make a previewLayer property to make it easily accessible as an AVCaptureVideoPreviewLayer type.

- [7:45] We can then put our preview view into a ZStack, where it can be easily composed with other UI elements like camera controls.

- [7:55] As mentioned in the intro, shallow depth of field is an important tool for storytelling. By changing the simulatedAperture property on the device input, we can adjust the global strength of the bokeh effect. Displayed on the right, driving this property with a slider, we change the global strength of the blur.

- [8:17] This value is expressed in the industry standard f-stops, which is simply the ratio between the focal length and the aperture diameter.

- [8:27] Moving them around, the aperture is the focal length divided by the f number.

- [8:33] Therefore, the smaller the f number, the larger the aperture, and the stronger the bokeh will be.

- [8:39] We can find the minimum, maximum, and default simulated aperture on the format.

- [8:46] We use them to populate the appropriate UI elements, like a slider.

- [8:52] Now, let's build some affordances that allow the user to manually interact with Cinematic video. For users to manually drive focus, we need to show visual indicators for focus candidates like faces. And to do that, we need some detection metadata.

- [9:10] We will use an AVCaptureMetadataOutput to get these detections so we can draw their bounds on the screen for users to interact with. The Cinematic video algorithm requires certain metadataObjectTypes to work optimally. And they are communicated with the new property requiredMetadataObjectTypesForCinematicVideoCapture. An exception is thrown if the metadataObjectTypes provided differ from this list when Cinematic video is enabled.

- [9:39] Lastly, we need to provide a delegate to receive the metadata and a queue on which the delegate is called.

- [9:47] we receive metadata objects in the metadata output delegate callback.

- [9:52] To easily communicate this metadata to our view layer in SwiftUI, we use an observable class.

- [10:00] When we update its property, the observing view will automatically refresh.

- [10:06] In our view layer, whenever our observable object is updated, the view is automatically redrawn. And we draw a rectangle for each metadataObject.

- [10:18] When creating these rectangles, it's important that we transform metadata's bounds into the preview layer's coordinate space. Using the layerRectConverted fromMetadataOutputRect method.

- [10:31] Note that X and Y in the position method refer to the center of the view, instead of the upper left corner used by AVFoundation. So we need to adjust accordingly by using the midX and midY of the rect.

- [10:45] With metadata rectangles drawn on the screen, we can use them to manually drive focus.

- [10:52] The Cinematic Video API offers three ways to manually focus. Let's now walk through them one by one. The setCinematicVideoTrackingFocus detectedObjectID focusMode method can be used to rack focus to a particular subject identified by the detectedObjectID, which is available on the AVMetadata objects that you get from the metadata output. focusMode configures Cinematic video's tracking behavior. The CinematicVideoFocusMode enum has three cases: none, strong, and weak. Strong tells Cinematic video to keep tracking a subject even when there are focus candidates that would have been otherwise automatically selected.

- [11:37] In this case, although the cat became more prominent in the frame, the strong focus, as indicated by the solid yellow rectangle, stayed locked on the subject in the back. Weak focus, on the other hand, lets the algorithm retain focus control. It automatically racks the focus when it sees fit. In this case, as the cat turned around, he was considered more important, and the weak focus shifted automatically to him, as indicated by the dashed rectangle.

- [12:08] The none case is only useful when determining whether a metadata object currently has the focus, so it should not be used when setting the focus.

- [12:18] The second focus method takes a different first parameter. Instead of a detected object ID, it takes a point in a view.

- [12:26] It tells Cinematic video to look for any interesting object at the specified point. When it finds one, it will create a new metadata object with the type salient object. So we can draw the rectangle around it on the screen.

- [12:41] The third focus method is setCinematicVideoFixedFocus that takes a point and the focus mode. It sets the focus at a fixed distance which is computed internally using signals such as depth. Paired with a strong focus mode, this method effectively locks the focus at a particular plane in the scene, ignoring other activities even in the foreground. Any apps can implement the focus logic that makes sense in their respective use cases. In our app, we do the following: Tapping on a detection rectangle not in focus, we rack the focus to it with a weak focus. With this, we can switch the focus back and forth between subjects in and out of focus.

- [13:27] Tapping on a metadata object already being weakly focused on turns it into a strong focus, indicated by the solid yellow rectangle.

- [13:37] Tapping at a point where there are no existing detections, we want Cinematic video to try to find any salient object and weakly focus on that. With a long press, we set a strong fixed focus. Here is how we can implement this logic in code. Firstly, we need to make two gestures.

- [13:57] The regular tap gesture can be easily done with a SpatialTapGesture, which provides the tap location that we need to set focus.

- [14:06] When tapped, we call the focusTap method on our camera model object, where we have access to the underlying AVCaptureDevice.

- [14:15] Long press, on the other hand, is a bit more complicated, as the built-in longPressGesture doesn't provide the tap location we need to simulate a long press with a DragGesture.

- [14:26] When pressed, we start at 0.3 second timer.

- [14:31] When it fires, we call the focusLongPress method on the camera model.

- [14:36] Then we create a rectangle view to receive the gestures. It's inserted at the end of the ZStack, which puts it on top of all the detection rectangles so the user's gesture input is not blocked.

- [14:50] As we already saw in the previous videos, it's important to visually differentiate the focused rectangles between weak focus, strong focus, and no focus to help the user take the right action.

- [15:03] We do this by implementing a method that takes an AVMetadataObject and returns a focused rectangle view. Let's not forget that we need to transform the bounds of the metadata from the metadata output's coordinate space to that of the preview layer.

- [15:19] By setting different stroke styles and colors, we can easily create visually distinct rectangles for each focus mode.

- [15:27] With the point passed from the view layer, we can determine which focus method to use. First, we need to figure out whether the user has tapped on a metadata rectangle. And we do this in the helper method, findTappedMetadataObject.

- [15:44] Here, we iterate through all the metadata that we cache for each frame and check whether the point specified falls into one of their bounds. Again, we make sure the point and the rect are in the same coordinate space.

- [15:59] Coming back to the focusTap method, if a metadata object is found and is already in weak focus, then we turn it into a strong focus.

- [16:09] If it's not already in focus, we focus on it weakly.

- [16:14] If the user didn't tap on a metadata rectangle, then we tell the framework to try to find a salient object at this point. With a long press, we simply set a strong fixed focus at the specified point. At this point, we have a fully functional app that can capture Cinematic video. Let's polish it up with a few more details. Currently, our video capture graph looks like this. We have three outputs to capture the movie, receive metadata, and the preview. If we want to support still image capture during the recording, we can do so by simply adding an AVCapturePhotoOutput to the session.

- [16:56] Since our graph is already configured to be Cinematic, the photo output will get a Cinematic treatment automatically.

- [17:04] The image returned by the photo output will have the bokeh effect burned in.

- [17:10] Lastly, the Cinematic video algorithm requires sufficient amount of light to function properly. So in a room that's too dark or the camera is covered, We want to inform users of such problem in the UI. In order to be notified when this condition occurs, you can key-value observe the new property cinematicVideoCaptureSceneMonitoringStatuses on the AVCaptureDevice class. Currently, the only supported status for Cinematic video is not enough light.

- [17:41] In the KVO handler, we can update the UI properly when we see insufficient light.

- [17:47] An empty set means that everything is back to normal.

- [17:52] In today's talk, we had a recap on how Cinematic video enables our users to capture gorgeous pro-level movies, even for everyday moments like hanging out with their pets. And we had a detailed walkthrough on how to build a great Cinematic capture experience with the Cinematic Video API. We can't wait to see how your apps can tap into these capabilities to deliver richer, more cinematic content. Thank you for watching.

</Transcript>

## Code

4:26 - [Select a video device](https://developer.apple.com/videos/play/wwdc2025/319/?time=266)

```swift
// Select a video device

let deviceDiscoverySession = AVCaptureDevice.DiscoverySession(deviceTypes: [.builtInDualWideCamera], mediaType: .video, position: .back)
        
guard let camera = deviceDiscoverySession.devices.first else {
    print("Failed to find the capture device")
    return
}
```


5:07 - [Select a format that supports Cinematic Video capture](https://developer.apple.com/videos/play/wwdc2025/319/?time=307)

```swift
// Select a format that supports Cinematic Video capture

for format in camera.formats {

    if format.isCinematicVideoCaptureSupported {

       try! camera.lockForConfiguration()
       camera.activeFormat = format
       camera.unlockForConfiguration()

       break
    }

}
```


5:51 - [Select a microphone](https://developer.apple.com/videos/play/wwdc2025/319/?time=351)

```swift
// Select a microphone

let audioDeviceDiscoverySession = AVCaptureDevice.DiscoverySession(deviceTypes [.microphone], mediaType: .audio, position: .unspecified)

guard let microphone = audioDeviceDiscoverySession.devices.first else {
    print("Failed to find a microphone")
    return
}
```


6:00 - [Add devices to input & add inputs to the capture session & enable Cinematic Video capture](https://developer.apple.com/videos/play/wwdc2025/319/?time=360)

```swift
// Add devices to inputs

let videoInput = try! AVCaptureDeviceInput(device: camera)
guard captureSession.canAddInput(videoInput) else {
    print("Can't add the video input to the session")
    return
}

let audioInput = try! AVCaptureDeviceInput(device: microphone)
guard captureSession.canAddInput(audioInput) else {
    print("Can't add the audio input to the session")
    return
}

// Add inputs to the capture session

captureSession.addInput(videoInput)
captureSession.addInput(audioInput)

// Enable Cinematic Video capture

if (videoInput.isCinematicVideoCaptureSupported) {
  videoInput.isCinematicVideoCaptureEnabled = true
}
```


6:17 - [Capture spatial audio](https://developer.apple.com/videos/play/wwdc2025/319/?time=377)

```swift
// Configure spatial audio

if audioInput.isMultichannelAudioModeSupported(.firstOrderAmbisonics) {
    audioInput.multichannelAudioMode = .firstOrderAmbisonics
}
```


6:33 - [Add outputs to the session & configure video stabilization & associate the preview layer with the capture session](https://developer.apple.com/videos/play/wwdc2025/319/?time=393)

```swift
// Add outputs to the session

let movieFileOutput = AVCaptureMovieFileOutput()
guard captureSession.canAddOutput(movieFileOutput) else {
    print("Can't add the movie file output to the session")
    return
}
captureSession.addOutput(movieFileOutput)
        

// Configure video stabilization

if let connection = movieFileOutput.connection(with: .video), 
    connection.isVideoStabilizationSupported {
    connection.preferredVideoStabilizationMode = .cinematicExtendedEnhanced
}

// Add a preview layer as the view finder

let previewLayer = AVCaptureVideoPreviewLayer()
previewLayer.session = captureSession
```


7:11 - [Display the preview layer with SwiftUI](https://developer.apple.com/videos/play/wwdc2025/319/?time=431)

```swift
// Display the preview layer with SwiftUI

struct CameraPreviewView: UIViewRepresentable {

    func makeUIView(context: Context) -> PreviewView {
        return PreviewView()
    }

    class CameraPreviewUIView: UIView {
	
			override class var layerClass: AnyClass {
    		AVCaptureVideoPreviewLayer.self
			}

			var previewLayer: AVCaptureVideoPreviewLayer {
  	  	layer as! AVCaptureVideoPreviewLayer
			}

			...
		}

...
}
```


7:54 - [Display the preview layer with SwiftUI](https://developer.apple.com/videos/play/wwdc2025/319/?time=474)

```swift
// Display the preview layer with SwiftUI

@MainActor
struct CameraView: View {       

    var body: some View {
        ZStack {
            CameraPreviewView()  
          	CameraControlsView()
        }
    }
}
```


8:05 - [Adjust bokeh strength with simulated aperture](https://developer.apple.com/videos/play/wwdc2025/319/?time=485)

```swift
// Adjust bokeh strength with simulated aperture


open class AVCaptureDeviceInput : AVCaptureInput {

	open var simulatedAperture: Float

	...

}
```


8:40 - [Find min, max, and default simulated aperture](https://developer.apple.com/videos/play/wwdc2025/319/?time=520)

```swift
// Adjust bokeh strength with simulated aperture


extension AVCaptureDeviceFormat {

	open var minSimulatedAperture: Float { get }

	open var maxSimulatedAperture: Float { get }

	open var defaultSimulatedAperture: Float { get }

	...

}
```


9:12 - [Add a metadata output](https://developer.apple.com/videos/play/wwdc2025/319/?time=552)

```swift
// Add a metadata output

let metadataOutput = AVCaptureMetadataOutput()

guard captureSession.canAddOutput(metadataOutput) else {
    print("Can't add the metadata output to the session")
    return
}
captureSession.addOutput(metadataOutput)

metadataOutput.metadataObjectTypes = metadataOutput.requiredMetadataObjectTypesForCinematicVideoCapture

metadataOutput.setMetadataObjectsDelegate(self, queue: sessionQueue)
```


9:50 - [Update the observed manager object](https://developer.apple.com/videos/play/wwdc2025/319/?time=590)

```swift
// Update the observed manager object

func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {

   self.metadataManager.metadataObjects = metadataObjects

}

// Pass metadata to SwiftUI

@Observable
class CinematicMetadataManager {
    
    var metadataObjects: [AVMetadataObject] = []
    
}
```


10:12 - [Observe changes and update the view](https://developer.apple.com/videos/play/wwdc2025/319/?time=612)

```swift
// Observe changes and update the view

struct FocusOverlayView : View {

    var body: some View {

	        ForEach(
	      metadataManager.metadataObjects, id:\.objectID)
		  	{ metadataObject in

    		  rectangle(for: metadataObject)

			  }
		}
}
```


10:18 - [Make a rectangle for a metadata](https://developer.apple.com/videos/play/wwdc2025/319/?time=618)

```swift
// Make a rectangle for a metadata

private func rectangle(for metadata: AVMetadataObjects) -> some View {
    
    let transformedRect = previewLayer.layerRectConverted(fromMetadataOutputRect: metadata.bounds)
    
    return Rectangle()
        .frame(width:transformedRect.width,
               height:transformedRect.height)
        .position(
            x:transformedRect.midX,
            y:transformedRect.midY)
}
```


10:53 - [Focus methods](https://developer.apple.com/videos/play/wwdc2025/319/?time=653)

```swift
open func setCinematicVideoTrackingFocus(detectedObjectID: Int, focusMode: AVCaptureDevice.CinematicVideoFocusMode)

open func setCinematicVideoTrackingFocus(at point: CGPoint, focusMode: AVCaptureDevice.CinematicVideoFocusMode)

open func setCinematicVideoFixedFocus(at point: CGPoint, focusMode: AVCaptureDevice.CinematicVideoFocusMode)
```


10:59 - [Focus method 1 & CinematicVideoFocusMode](https://developer.apple.com/videos/play/wwdc2025/319/?time=659)

```swift
// Focus methods

open func setCinematicVideoTrackingFocus(detectedObjectID: Int, focusMode: AVCaptureDevice.CinematicVideoFocusMode)


public enum CinematicVideoFocusMode : Int, @unchecked Sendable {

    case none = 0

    case strong = 1

    case weak = 2
}

extension AVMetadataObject {

   open var cinematicVideoFocusMode: Int32 { get }

}
```


12:19 - [Focus method no.2](https://developer.apple.com/videos/play/wwdc2025/319/?time=739)

```swift
// Focus method no.2

open func setCinematicVideoTrackingFocus(at point: CGPoint, focusMode: AVCaptureDevice.CinematicVideoFocusMode)
```


12:41 - [Focus method no.3](https://developer.apple.com/videos/play/wwdc2025/319/?time=761)

```swift
// Focus method no.3

open func setCinematicVideoFixedFocus(at point: CGPoint, focusMode: AVCaptureDevice.CinematicVideoFocusMode)
```


13:54 - [Create the spatial tap gesture](https://developer.apple.com/videos/play/wwdc2025/319/?time=834)

```swift
var body: some View {

let spatialTapGesture = SpatialTapGesture()
    .onEnded { event in
        Task {
            await camera.focusTap(at: event.location)
        }
     }

...
}
```


14:15 - [Simulate a long press gesture with a drag gesture](https://developer.apple.com/videos/play/wwdc2025/319/?time=855)

```swift
@State private var pressLocation: CGPoint = .zero
@State private var isPressing = false
private let longPressDuration: TimeInterval = 0.3

var body: some View {
  
  ...
  
	let longPressGesture = DragGesture(minimumDistance: 0).onChanged { value in
		if !isPressing {
			isPressing = true
			pressLocation = value.location
			startLoopPressTimer()
		}
	}.onEnded { _ in
		isPressing = false
	}
  
	...
  
}

private func startLoopPressTimer() {
	DispatchQueue.main.asyncAfter(deadline: .now() + longPressDuration) {
		if isPressing {
			Task {
				await camera.focusLongPress(at: pressLocation)
			}
		}
	}
}
```


14:36 - [Create a rectangle view to receive gestures.](https://developer.apple.com/videos/play/wwdc2025/319/?time=876)

```swift
var body: some View {

let spatialTapGesture = ...
let longPressGesture = ...

ZStack {
  ForEach(
    metadataManager.metadataObjects,
    id:\.objectID)
  { metadataObject in

    rectangle(for: metadataObject)

  }
  Rectangle()
      .fill(Color.clear)
      .contentShape(Rectangle())
      .gesture(spatialTapGesture)
  .gesture(longPressGesture)}

  }
}
```


15:03 - [Create the rectangle view](https://developer.apple.com/videos/play/wwdc2025/319/?time=903)

```swift
private func rectangle(for metadata: AVMetadataObject) -> some View {
    
    let transformedRect = previewLayer.layerRectConverted(fromMetadataOutputRect: metadata.bounds)
    var color: Color
    var strokeStyle: StrokeStyle
    
    switch metadata.focusMode {
    case .weak:
        color = .yellow
        strokeStyle = StrokeStyle(lineWidth: 2, dash: [5,4])
    case .strong:
        color = .yellow
        strokeStyle = StrokeStyle(lineWidth: 2)
    case .none:
        color = .white
        strokeStyle = StrokeStyle(lineWidth: 2)
    }
    
    return Rectangle()
        .stroke(color, style: strokeStyle)
        .contentShape(Rectangle())
        .frame(width: transformedRect.width, height: transformedRect.height)
        .position(x: transformedRect.midX, 
                  y: transformedRect.midY)
}
```


15:30 - [Implement focusTap](https://developer.apple.com/videos/play/wwdc2025/319/?time=930)

```swift
func focusTap(at point:CGPoint) {
    
   try! camera.lockForConfiguration()
        
    if let metadataObject = findTappedMetadataObject(at: point) {
        if metadataObject.cinematicVideoFocusMode == .weak {
            camera.setCinematicVideoTrackingFocus(detectedObjectID: metadataObject.objectID, focusMode: .strong)
            
        }
        else {
            camera.setCinematicVideoTrackingFocus(detectedObjectID: metadataObject.objectID, focusMode: .weak)
        }
    }
    else {
        let transformedPoint = previewLayer.metadataOutputRectConverted(fromLayerRect: CGRect(origin:point, size:.zero)).origin
        camera.setCinematicVideoTrackingFocus(at: transformedPoint, focusMode: .weak)
    }
    
    camera.unlockForConfiguration()
}
```


15:42 - [Implement findTappedMetadataObject](https://developer.apple.com/videos/play/wwdc2025/319/?time=942)

```swift
private func findTappedMetadataObject(at point: CGPoint) -> AVMetadataObject? {
    
    var metadataObjectToReturn: AVMetadataObject?
    
    for metadataObject in metadataObjectsArray {
        let layerRect = previewLayer.layerRectConverted(fromMetadataOutputRect: metadataObject.bounds)
        if layerRect.contains(point) {
            metadataObjectToReturn = metadataObject
            break
        }
    }
    
    return metadataObjectToReturn
}
```


16:01 - [focusTap implementation continued](https://developer.apple.com/videos/play/wwdc2025/319/?time=961)

```swift
func focusTap(at point:CGPoint) {
    
   try! camera.lockForConfiguration()
        
    if let metadataObject = findTappedMetadataObject(at: point) {
        if metadataObject.cinematicVideoFocusMode == .weak {
            camera.setCinematicVideoTrackingFocus(detectedObjectID: metadataObject.objectID, focusMode: .strong)
            
        }
        else {
            camera.setCinematicVideoTrackingFocus(detectedObjectID: metadataObject.objectID, focusMode: .weak)
        }
    }
    else {
        let transformedPoint = previewLayer.metadataOutputRectConverted(fromLayerRect: CGRect(origin:point, size:.zero)).origin
        camera.setCinematicVideoTrackingFocus(at: transformedPoint, focusMode: .weak)
    }
    
    camera.unlockForConfiguration()
}
```


16:23 - [Implement focusLongPress](https://developer.apple.com/videos/play/wwdc2025/319/?time=983)

```swift
func focusLongPress(at point:CGPoint) {
    
   try! camera.lockForConfiguration()

   let transformedPoint = previewLayer.metadataOutputRectConverted(fromLayerRect:CGRect(origin: point, size: CGSizeZero)).origin
       camera.setCinematicVideoFixedFocus(at: pointInMetadataOutputSpace, focusMode: .strong)
   
    camera.unlockForConfiguration()
}
```


17:10 - [Introduce cinematicVideoCaptureSceneMonitoringStatuses](https://developer.apple.com/videos/play/wwdc2025/319/?time=1030)

```swift
extension AVCaptureDevice {

   open var cinematicVideoCaptureSceneMonitoringStatuses: Set<AVCaptureSceneMonitoringStatus> { get }

}

extension AVCaptureSceneMonitoringStatus {

   public static let notEnoughLight: AVCaptureSceneMonitoringStatus

}
```


17:42 - [KVO handler for cinematicVideoCaptureSceneMonitoringStatuses](https://developer.apple.com/videos/play/wwdc2025/319/?time=1062)

```swift
private var observation: NSKeyValueObservation?

observation = camera.observe(\.cinematicVideoCaptureSceneMonitoringStatuses, options: [.new, .old]) { _, value in
    
    if let newStatuses = value.newValue {
        if newStatuses.contains(.notEnoughLight) {
            // Update UI (e.g., "Not enough light")
        }
        else if newStatuses.count == 0 {
            // Back to normal.
        }
    }
}
```

## Summary

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2025/319/?time=0)
- Use the Cinematic Video API to capture pro-level cinema-style videos in your apps. iPhone 13 and 13 Pro introduced Cinematic mode, which transformed iPhone into a cinematography powerhouse.

- 0:33 - [Cinematic video](https://developer.apple.com/videos/play/wwdc2025/319/?time=33)
- Cinematic video uses shallow depth of field and tracking focus to guide viewer attention, mimicking film techniques. The Cinematic Video API in iOS 26 simplifies this process, enabling apps to automatically rack and track focus. To build a Cinematic capture experience, set up a capture session, select a device, and then enable Cinematic video capture by setting 'isCinematicVideoCaptureEnabled' to true on the 'AVCaptureDeviceInput' class. This configures the session to output Cinematic video with disparity data, metadata, and the original video, allowing for non-destructive editing. You can play back or edit the bokeh rendering with the Cinematic Framework.

- 3:44 - [Build a great cinematic capture experience](https://developer.apple.com/videos/play/wwdc2025/319/?time=224)
