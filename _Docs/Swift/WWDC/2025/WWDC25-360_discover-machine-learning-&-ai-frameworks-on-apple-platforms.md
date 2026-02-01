---
URL: https://developer.apple.com/videos/play/wwdc2025/360/
Title: Discover machine learning & AI frameworks on Apple platforms
Topics:
Date_Published: June 2025
Swift_Version_At_Publish: Swift 6.1
---


# Discover machine learning & AI frameworks on Apple platforms

Tour the latest updates to machine learning and AI frameworks available on Apple platforms. Whether you are an app developer ready to tap into Apple Intelligence, an ML engineer optimizing models for on-device deployment, or an AI enthusiast exploring the frontier of what is possible, we'll offer guidance to help select the right tools for your needs.

### Chapters

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2025/360/?time=0)
- 1:18 - [Platform intelligence](https://developer.apple.com/videos/play/wwdc2025/360/?time=78)
- 8:20 - [ML-powered APIs](https://developer.apple.com/videos/play/wwdc2025/360/?time=500)
- 11:15 - [ML models](https://developer.apple.com/videos/play/wwdc2025/360/?time=675)
- 14:54 - [Exploration](https://developer.apple.com/videos/play/wwdc2025/360/?time=894)

### Resources

- [Human Interface Guidelines: Generative AI](https://developer.apple.com/design/human-interface-guidelines/generative-ai)
- [Human Interface Guidelines: Machine learning](https://developer.apple.com/design/human-interface-guidelines/machine-learning)
- [HD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2025/360/5/ea6bc2a8-c1b8-4735-857d-4526abe1348a/downloads/wwdc2025-360_hd.mp4?dl=1)
- [SD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2025/360/5/ea6bc2a8-c1b8-4735-857d-4526abe1348a/downloads/wwdc2025-360_sd.mp4?dl=1)

## Transcript

<Transcript>

- [0:07] Hi there, I’m Jaimin Upadhyay, an engineering manager on the On-Device Machine Learning team at Apple. Today, I would like to talk about how you can make use of Apple Intelligence and machine learning in your apps and personal projects. Whether you are an app developer ready to tap into Apple Intelligence through UI components or directly in code, an ML engineer converting and optimizing models for on-device deployment, or an AI enthusiast exploring the frontier of what is possible on your Mac, we have the tools for you. I’ll walk you through a high level overview of these tools, highlight the latest additions, and point you to resources to learn more along the way. We will start with an overview of the intelligence built into the operating system and its relationship with your app. Next, we will explore how you can programmatically tap into this intelligence through our system frameworks. We will then talk about how Apple’s tools and APIs can help you optimize and deploy any machine learning model for on-device execution. And we will finish up by discussing how you can stay on top of the latest innovations in ML and AI on Apple hardware.

- [1:12] We’ve got a long and exciting tour to cover, so let’s get started. We start with platform intelligence. Machine Learning and Artificial Intelligence are at the core of a lot of built-in apps and features in our operating system. Whether it’s Optic ID to authenticate you on Apple Vision Pro, or understanding your handwriting to help you with math on iPad, or removing background noise to improve your voice quality on FaceTime, machine learning is at the core. ML Models powering these features have been trained and optimized for efficiency on device and last year marked the start of a new chapter, to bring generative intelligence into the core of our operating systems, with large foundation models that power Apple Intelligence. This brought Writing Tools, Genmoji, and Image Playground across the system, making it easy to integrate them into your apps. If you’re using system text controls, you’ll get Genmoji support automatically. You can even use the APIs to make them appear right in your text.

- [2:12] The Image Playground framework provides Swift UI extensions to bring up the imagePlaygroundSheet in your app. And, for most of you, using the standard UI frameworks to display textViews, your apps were already set up to support Writing Tools. It's that simple. You can either use standard views or add a few lines of code to your custom ones. This way, your users can easily access Apple Intelligence within your apps with a consistent and familiar UI. But, what if you want to go beyond the default UI or need more control? This brings us to the topic of ML-powered APIs that give you programmatic access to system models and capabilities.

- [2:52] We offer a wide variety of such APIs. While some provide access to prominent system models with essential utilities, others expose convenient APIs for specialized ML tasks. Let's dive into these by revisiting how you can integrate image generation into your app. iOS 18.4 introduced ImageCreator class to ImagePlayground framework.

- [3:14] This lets you create images programmatically. Just instantiate the ImageCreator. Request for images based on some ideas. Here, we use a text prompt and a selected style. Then, you can show or use them in your app as you prefer. Also in 18.4, we introduced the Smart Reply API. You can let your users choose generated smart replies for their messages and e-mails, by donating the context to a keyboard. Let’s take a quick look at how you can set it up. To donate your conversation, configure a UIMessage or UIMail ConversationContext with your data, then set it on your entry view before the keyboard is requested.

- [3:54] When a user selects a smart reply from the keyboard for an instant message, it will be directly inserted into the document. However, in a mail conversation, the selection will instead be delegated back to your view's corresponding insertInputSuggestion delegate method. You can then generate and insert your own longer replies appropriate for an e-mail. To learn more, check out "Adopting Smart Reply in your messaging or email app" documentation page. Note that this is all running on device and using Apple's foundation models. In iOS 26, we are going even further with the introduction of: the Foundation Models framework. It provide programmatic access to a highly optimized on-device language model that's specialized for everyday tasks. Now it can power these features across all your apps. It's great for things like summarization, extraction, classification, and more.

- [4:46] You can use it to enhance existing features in your apps, like providing personalized search suggestions. Or you can create entirely new features, like generating itinerary in a travel app.

- [4:59] You can even use it to create dialogue on-the-fly for characters in a game. That one is my personal favorite! Prompting the model is as easy as three lines of code. Import the framework, create a session, and send your prompt to the model. Since the framework is on device, your user's data stays private and doesn't need to be sent anywhere. The AI features are readily available and work offline, eliminating the need to set up an account or obtain API keys. And all of this, at no cost to you or your users for any requests.

- [5:32] The Foundation Models framework provides much more than simple prompting for text responses. Sometimes you need an LLM to generate structured responses that you can use directly in your app.

- [5:44] This is easy with the Foundation Models framework. You can take existing types in your app and mark them as generable. Also add some natural language guides to each property, along with optional controls over their generated values. This lets you use Guided Generation with a simple prompt. When you indicate the response to generate your type.

- [6:08] The framework will customize the language model decoding loop and stop the model from making structural mistakes. Your data structure is filled with the correct information, so you don't have to deal with JSON schemas. Just focus on the prompt and let the framework do the rest! The synergy between Swift, the framework and your custom types makes it easy for you to rapidly iterate and explore new ideas within your app.

- [6:33] When developing your use case, it's important to consider the knowledge available to the foundation model. In addition to information provided via your prompt and generable type descriptions, The model has a core set of knowledge derived from the data it was trained on. This data was fixed in time and does not contain recent events. While the model is incredibly powerful for a device-scale model, it's not as knowledgeable as larger server-scale models. To help with use cases requiring additional knowledge from your app or over the network, the foundation model's framework supports tool calling. Tool calling lets you go beyond text generation and perform some actions. It provides the model access to live or personal data, like weather and calendar events, not just what was trained months ago. It can even let the model cite sources of truth, which allows the users to fact-check its output. Finally, tools can take real actions, whether it's in your app, on the system, or in real world.

- [7:31] This was just a sneak peek of the framework's awesome capabilities, but there is so much more. For a more detailed introduction watch "Meet the Foundation Models framework" session. There you will also learn about streaming responses, stateful sessions, and the framework's tight integration with Xcode. And if you prefer learning by doing, we have a code along session for building your first intelligent app using the new APIs.

- [7:56] We also have a session dedicated to design considerations for your use cases. It focuses on best practices to help you write reflective prompts, AI safety considerations, understanding what is possible with a device-scale language model, and some solid strategies for evaluating and testing quality and safety. Be sure to check out "Explore prompt design and safety for on-device Foundation models" to learn more.

- [8:21] The new Foundation Models framework joins the suite of other Machine Learning powered APIs and tools you can use to tap into on-device intelligence for your app's features. These frameworks each focus on a specific domain with highly optimized task-specific models.

- [8:36] There is Vision to understand the content of images and videos.

- [8:40] Natural language to identify language, parts of speech, and named entities in natural language text.

- [8:46] Translation to perform text translations between multiple languages.

- [8:50] Sound analysis to recognize many categories of sound. And speech to identify and transcribe spoken words in audio. All with just a few lines of code.

- [9:01] Let me highlight some interesting new additions to these frameworks this year.

- [9:05] Let's start with Vision.

- [9:06] Vision has over 30 APIs for different types of image analysis. And today, Vision is adding two new APIs.

- [9:13] Vision is bringing improvements to text recognition. Instead of just reading lines of text, Vision now provides document recognition.

- [9:21] It can group different document structures, making it easier to process and understand documents.

- [9:26] Vision also has a new lens smudge detection mode. It helps you identify smudges on camera lens that can potentially ruin images. For more details on Lens Smudge Detection and the other cool new additions to Vision, check out the session "Reading documents using the Vision Framework" for more details.

- [9:44] Next, let's talk about the Speech framework. The SFSpeechRecognizer class in Speech framework gave you access to the speech-to-text model powering Siri and worked well for short-form dictation.

- [9:56] Now in iOS 26, we're introducing a new API, SpeechAnalyzer, that supports many more use cases and leverages the power of Swift. The new API lets you perform speech-to-text processing with very little code entirely on device.

- [10:11] Along with the API, we are providing a new speech-to-text model that is both faster and more flexible than the previous one.

- [10:19] You pass audio buffers to the analyzer instance, which then routes them through the new speech-to-text model. The model predicts the text that matches the spoken audio and returns it to your app.

- [10:30] The new model is especially good for long-form and distant audio, such as lectures, meetings, and conversations.

- [10:37] Watch the "Bring advanced speech-to-text to your app with SpeechAnalyzer" session to dive deeper.

- [10:43] Apple's ML powered APIs offer tons of capabilities that your app can readily take advantage of! And many of these APIs can be extended or customized to your specific use case.

- [10:55] The Create ML app and framework give you the ability to fine-tune the system models with your own data.

- [11:01] Create your own image classifier to use with the Vision framework, or a custom word tagger to use with Natural Language. You can even extend the capabilities of Vision Pro to recognize and track specific objects with 6 degrees of freedom for spatial experiences.

- [11:16] So far we have talked about how you can leverage or extend the ML and AI powered capabilities built into the system. Next, let's talk about bringing any model to device.

- [11:26] When choosing and integrating a model into your app, there is a lot to consider. But it is made easy with Core ML. All you need is a model in the Core ML format.

- [11:36] These model assets contain a description of the model's inputs, outputs, and architecture along with its learned parameters.

- [11:44] You can find a wide variety of open models in the Core ML format on developer.apple.com ready for use.

- [11:51] They are organized by category with a description of each model's capabilities and a list of different variants along with some high-level performance information on different devices.

- [12:01] Similarly, you may want to check out the Apple space on Hugging Face. In addition to models already in Core ML format, you will also find links to the source model definition.

- [12:10] These model definitions are often expressed in PyTorch along with training and fine-tuning pipelines.

- [12:17] Core ML Tools provides utilities and workflows for transforming trained models to Core ML model format.

- [12:23] These workflows not only directly translate the model's representation but also apply optimizations for on-device execution.

- [12:30] Some of these optimizations are automatic, such as fusing operations and eliminating redundant computation.

- [12:37] However, coremltools also provides a suite of fine-tuning and post-training based model compression techniques.

- [12:43] These will help you reduce the size of your model and improve its inference performance in terms of memory, power and latency.

- [12:51] These techniques are opt-in and allow you to explore different trade-offs between performance and model accuracy.

- [12:57] Check out the "Bring your models to Apple Silicon" session from WWDC24 to learn more. Also, make sure to check out the latest release notes and examples in the user guide.

- [13:09] Once you have your model in the Core ML format, you can easily integrate it with Xcode. You can inspect your model's key characteristics or explore its performance on any connected device.

- [13:19] You can get insights about the expected prediction latency, load times, and also, introspect where a particular operation is supported and executed, right in Xcode.

- [13:30] New this year, you can visualize the structure of the full model architecture and dive into details of any op.

- [13:37] This brand new view helps you build a deeper understanding of the model you are working with, making debugging and performance opportunities incredibly visible.

- [13:46] When it's time to get coding, Xcode generates a type safe interface in Swift specific to your model. And integration is just a few lines of code.

- [13:55] At runtime, Core ML makes use of all available compute, optimizing execution across the CPU, GPU, and Neural Engine.

- [14:03] While Core ML is the go-to framework for deploying models on-device, there may be scenarios where you need finer-grained control.

- [14:11] For instance, if you need to sequence or integrate ML with graphics workload, you can use Core ML models with both MPS Graph and Metal.

- [14:20] Alternatively, when running real-time signal processing on the CPU, Accelerate's BNNS Graph API provides strict latency and memory management control for your ML task.

- [14:30] These frameworks form part of Core ML's foundation and are also directly accessible to you.

- [14:36] This year, there are some new capabilities in BNNSGraph, including a new Graph Builder that lets developers create graphs of operations. This means you can write pre- and post-processing routines or even small machine-learning models to run in real time on CPU. Check out "What's new in BNNS Graph" for all the details.

- [14:54] Finally, let's talk about how you can keep up with the fast-paced development happening in machine learning and how can the Apple platform assist you. ML research is moving at a rapid pace, there's advancements made every single day. New models and techniques are being explored and built at an unprecedented rate. There is a lot to try and keep up with. It can be challenging without the right tools and resources.

- [15:18] To keep up with the current frontier of exploration, one needs the ability to run large models, tinker with unique architectures, and learn from an open community. We have sophisticated tools and resources to help on your endeavors exploring the frontier. One such powerful tool is MLX.

- [15:37] It's array framework for numerical computing and machine learning. It's designed by Apple's machine learning researchers and developed fully open source.

- [15:45] MLX provides access to state-of-the-art models and the ability to perform efficient fine-tuning, training, and distributed learning on Apple Silicon machines.

- [15:55] MLX can run state-of-the-art ML inference on large language models like Mistral with a single command line call.

- [16:01] For example, here it's generating code for quick sort with a maximum token length of 1024.

- [16:08] This allows you to stay in-step with state-of-the-art research, thanks to the open source community working to make these models work with MLX.

- [16:16] The MLX community on Hugging Face has hundreds of frontier models readily available to you through one line of code. Check out "Explore large language models on Apple silicon with MLX" session to learn about how you can run DeepSeek-R1 on your Apple Silicon machine.

- [16:30] MLX is designed to take advantage of the best of Apple Silicon. This includes a new programming model specific to unified memory.

- [16:38] Most systems commonly used for machine learning have a discrete GPU with separate memory.

- [16:43] Data is often resident and tied to a specific device.

- [16:47] Operations run where the data is.

- [16:49] You cannot efficiently run operations that use data from multiple pools of memory. They would require a copy in memory.

- [16:56] Apple Silicon, on the other hand, has a unified memory architecture.

- [17:00] This means that the CPU and the GPU share the same physical memory.

- [17:05] Arrays in MLX aren't tied to a device, but operations are, allowing you to even run different operations on CPU and GPU in parallel on the same buffer.

- [17:16] Check out "Get started with MLX for Apple silicon" session to learn about this unique programming model and other features of MLX. You can even fine-tune your model with a single line of code and scale up as needed for distributed training easily.

- [17:30] It's available in Python, Swift, C++ or C, and other languages of your choice through the multiple bindings created by the open source community.

- [17:41] In addition to MLX, if you are using one of the popular training frameworks like PyTorch and Jax, we've got you covered with Metal, so you can explore the frontier without deviating from the standard tools that have been embraced by the ML community over the years.

- [17:55] Lastly, developer.apple.com is a great resource for AI enthusiasts and researchers to get a peek at the latest machine learning resources from Apple.

- [18:05] With that, we've covered our agenda. Let's step back a little and take a look at everything we talked about today.

- [18:13] Based on your needs and experience with models, you can choose the frameworks and tools that best support your project's Machine Learning and AI capabilities.

- [18:21] Whether you want to fine-tune an LLM on your Mac, optimize a computer vision model to deploy on Apple Vision Pro, or use one of our ML-powered APIs to quickly add magical features to your apps, we have you covered. And all of this is optimized for Apple Silicon, providing efficient and powerful execution for your machine learning and AI workloads.

- [18:45] We are sure you will find the resources we went over here helpful and can't wait to see the new experiences you create by tapping into Apple Intelligence. There has never been a better time to experiment and explore what you can do with machine learning and AI on Apple platforms.

- [19:00] Here we covered just the surface.

- [19:02] I highly encourage you to check out the machine learning and AI category in the Developer app and on our developer forums to learn more.

- [19:10] Ask questions and have discussions with the broader developer community there.

- [19:15] I hope this has been as fun for you as it has been for me. Thanks for watching!

</Transcript>

## Summary

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2025/360/?time=0)
- Apple's On-Device Machine Learning team offers tools for developers and enthusiasts to integrate Apple Intelligence and machine learning into apps and personal projects. Learn more about platform intelligence, system frameworks, model optimization and deployment, and staying updated on the latest ML and AI innovations on Apple hardware.

- 1:18 - [Platform intelligence](https://developer.apple.com/videos/play/wwdc2025/360/?time=78)
- Machine Learning and artificial intelligence are integral to modern operating systems, powering various built-in apps and features. These technologies enable seamless user experiences, such as secure authentication, handwriting recognition, and noise reduction during calls. The latest advancements bring generative intelligence into the core of these operating systems. This includes writing tools, generating custom emojis, and creating images based on text prompts. These features are designed to be easily integrated into existing apps, allowing you to enhance your user interfaces with minimal effort. A wide range of ML-powered APIs is available. These APIs provide programmatic access to system models and capabilities, enabling tasks like image generation and smart reply suggestions. The introduction of the Foundation Models framework in iOS 26 further simplifies this process. This framework allows you to access a highly optimized on-device language model specialized for everyday tasks. It can be used for summarization, extraction, classification, and more, all while ensuring user data privacy as the model operates entirely offline. You can easily prompt the model, generate structured responses, and even integrate it with live or personal data using tool calling, enabling the model to perform actions and cite sources of truth.

- 8:20 - [ML-powered APIs](https://developer.apple.com/videos/play/wwdc2025/360/?time=500)
- Updated Machine Learning-powered APIs provide you with a comprehensive suite of tools for enhancing app intelligence. The frameworks include Vision for image and video analysis, Natural Language for text processing, Translation for languages, Sound Analysis for recognizing sounds, and Speech for recognition and transcription. Notable new additions include document recognition and lens-smudge detection in Vision, and the SpeechAnalyzer API in Speech, which enables faster and more flexible speech-to-text processing, particularly for long-form and distant audio. Developers can also customize these models using the CreateML app and framework.

- 11:15 - [ML models](https://developer.apple.com/videos/play/wwdc2025/360/?time=675)
- Core ML simplifies the process of integrating machine learning models into apps for Apple devices. You can utilize models already in CoreML format, available on developer.apple.com and the Apple space on Hugging Face, or convert trained models from other formats using CoreML Tools. CoreML Tools optimizes these models for on-device execution, reducing size and improving performance through automatic and manual techniques. You can then easily integrate these models into Xcode, where they can inspect performance, visualize the model architecture, and generate type-safe Swift interfaces. At runtime, CoreML leverages the CPU, GPU, and Neural Engine for efficient execution. For more advanced control, combine CoreML models with MPSGraph, Metal compute, or Accelerate’s BNNS Graph API, which has new capabilities this year, including a BNNSGraphBuilder for real-time CPU-based ML tasks.

- 14:54 - [Exploration](https://developer.apple.com/videos/play/wwdc2025/360/?time=894)
- The rapid pace of machine learning research demands sophisticated tools and resources to keep up. Apple's MLX, an open-source array framework for numerical computing and machine learning, is designed to leverage the power of Apple Silicon. MLX enables efficient fine-tuning, training, and distributed learning of state-of-the-art models on Apple devices. It can run large language models with a single command line call and takes advantage of Apple Silicon's unified memory architecture, allowing parallel CPU and GPU operations on the same buffer. You can access MLX in Python, Swift, C++, and other languages. Additionally, Apple supports popular training frameworks like PyTorch and Jax through Metal. The developer.apple.com website and Apple Github repositories are valuable resources for AI enthusiasts and researchers, providing access to the latest machine learning resources from Apple.