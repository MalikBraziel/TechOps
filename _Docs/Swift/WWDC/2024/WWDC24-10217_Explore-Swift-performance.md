---
URL: https://developer.apple.com/videos/play/wwdc2024/10217/
Title: Explore Swift performance
Topics: Swift Concurrency
Date_Published: June 2024
Swift_Version_At_Publish: Swift 6.0
---

# Explore Swift performance

Discover how Swift balances abstraction and performance. Learn what elements of performance to consider and how the Swift optimizer affects them. Explore the different features of Swift and how they're implemented to further understand the tradeoffs available that can impact performance.

### Chapters

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2024/10217/?time=0)
- 1:24 - [Agenda](https://developer.apple.com/videos/play/wwdc2024/10217/?time=84)
- 1:46 - [What is performance?](https://developer.apple.com/videos/play/wwdc2024/10217/?time=106)
- 4:31 - [Low-level principles](https://developer.apple.com/videos/play/wwdc2024/10217/?time=271)
- 4:36 - [Function calls](https://developer.apple.com/videos/play/wwdc2024/10217/?time=276)
- 8:29 - [Memory allocation](https://developer.apple.com/videos/play/wwdc2024/10217/?time=509)
- 10:34 - [Memory layout](https://developer.apple.com/videos/play/wwdc2024/10217/?time=634)
- 13:57 - [Value copying](https://developer.apple.com/videos/play/wwdc2024/10217/?time=837)
- 20:54 - [Putting it together](https://developer.apple.com/videos/play/wwdc2024/10217/?time=1254)
- 21:08 - [Dynamically-sized types](https://developer.apple.com/videos/play/wwdc2024/10217/?time=1268)
- 24:33 - [Async functions](https://developer.apple.com/videos/play/wwdc2024/10217/?time=1473)
- 28:11 - [Closures](https://developer.apple.com/videos/play/wwdc2024/10217/?time=1691)
- 30:36 - [Generics](https://developer.apple.com/videos/play/wwdc2024/10217/?time=1836)
- 34:00 - [Wrap up](https://developer.apple.com/videos/play/wwdc2024/10217/?time=2040)

### Resources

- [Forum: Programming Languages](https://forums.swift.org/c/swift-users/5)
- [HD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2024/10217/6/0c2c6210-4f59-409a-ba23-36a7895563d3/downloads/wwdc2024-10217_hd.mp4?dl=1)
- [SD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2024/10217/6/0c2c6210-4f59-409a-ba23-36a7895563d3/downloads/wwdc2024-10217_sd.mp4?dl=1)

### Related Videos

#### WWDC24

- [Consume noncopyable types in Swift](https://developer.apple.com/videos/play/wwdc2024/10170/)

#### WWDC19

- [Getting Started with Instruments](https://developer.apple.com/videos/play/wwdc2019/411/)

#### WWDC16

- [Understanding Swift Performance](https://developer.apple.com/videos/play/wwdc2016/416/)

## Transcript

<Transcript>

0:07

My name is John McCall and today we are going to explore Swift performance.

0:12

When you work a lot in a programming language, it's important to have a good intuition for the performance of different operations in that language. Programmers coming from C often have that. For better or worse, the translation of C into machine code is pretty literal.

0:29

Local variables like these are allocated on the stack.

0:33

Heap allocations only happen if you make a call. The compiler might still move things into registers, optimize memory, and find all sorts of other clever ways to make things faster. But there's a baseline for how things are compiled that you can feel confident about.

0:50

Swift is not always so simple. Partly that has to do with safety, that nice little translation you get from C will happily scribble all over memory if your code is wrong. But Swift also provides a lot of tools for abstraction that C doesn't, closures, generics, and so on. Those abstractions have non-trivial implementations with costs that aren't quite as visible as an explicit call to malloc. But that doesn't mean that you can't develop a similar intuition for how your code will actually run. And that's critical for when you need to do performance work. So in this talk, we're going to explore the low-level performance of Swift.

1:29

First, we're going to talk about what we mean by performance. Next, we'll talk about the principles that you should do be thinking about, when you look at low-level performance. And we'll end by exploring some of the details of how key features in Swift are implemented, and what impact that has on performance.

1:46

So what do we mean by performance? That's a pretty deep question. It'd be nice if you could just take your program and feed it to some tool and have it spit out a single number, that was all we needed to know about performance. Maybe Safari has a performance score of 9.2. Sadly, that's not how it works. Performance is multidimensional and situational. Usually, we care about performance because of some macroscopic problem. Our daemon is drawing too much power, or our UI feels awkwardly slow to click around in, or our app keeps getting jetsam’ed.

2:21

When you're investigating these problems, you generally work top down. You make measurements with tools like instruments, and that shows you places to dig in on.

2:30

A lot of the time, you're going to solve these problems with algorithmic improvements, without ever getting into the low-level performance of your code.

2:38

But sometimes you do need to dig into low-level performance. Maybe you've narrowed your investigation down to a single part of the execution trace, and there's not much more you can do with it at an algorithmic level. It just seems slow. Going further requires understanding how your code is actually running, and that requires a more bottom-up approach. Low-level performance tends to be dominated by these four considerations: First, we're doing a lot of calls that aren't being optimized effectively. Second, we're wasting a lot of time, or memory, because of how our data is represented. Third, we're spending too much time allocating memory, or fourth, we're spending a lot of time unnecessarily copying and destroying values. Most features in Swift have implications for one or more of these costs. I'm going to get into all of them, but let me add one last consideration first. Swift has a powerful optimizer. There are things that you never see as performance issues, because the compiler does a good job at eliminating them. There are limits to the optimization. The way you write code can have a significant impact on how much the optimizer can do. So as I go through this, I’m also going to be talking about optimization potential, because it’s an important part of programming for performance. If you’re uncomfortable relying on the optimizer, let me make a suggestion. When performance is an important part of your project, you need to be regularly monitoring it. So when you identify hot spots during top-down investigation, try to find ways to measure them, and then automate those measurements as part of your development process. Once you’re doing that, you’re well set up to identify regressions, whether it’s because you somehow confused the optimizer or just because you accidentally added some quadratic algorithm. And now you’re verifying that the optimizer is still doing what you’re asking of it.

4:31

With all that said, let’s dig on those four principles of low-level performance. The first is function calls.

4:40

There are four costs associated with function calls. Three of them are things that we do. First, we have to set up the arguments for the call.

4:49

We also have to resolve the address of the function we’re calling.

4:53

And we have to allocate space for the function’s local state.

4:57

The fourth is something that we don’t do: This whole thing might inhibit optimization, both in the caller and in the function it calls.

5:07

So. Four costs.

5:10

Let’s look at argument passing first. There’s two levels to this cost. At the lowest level, when we make a call, we have to put arguments in the right place for the calling convention. On modern processors, these costs are usually hidden by register renaming, so they don’t make much difference in practice.

5:29

At a higher level, though, the compiler may have to add copies of values to match the ownership conventions of the function. This often does show up in profiles as extra retains and releases, on one side of the call or the other. I’ll come back to this in a few minutes.

5:45

The next two costs, function resolution and optimization impact, both come down to the same issue: Do we know at compile time exactly which function we’re calling? If so, we say the call uses static dispatch; otherwise, it uses dynamic dispatch. Static dispatch is more efficient, it’s a little faster at the processor level, but more importantly, there’s a lot of optimization that’s possible at compile time, like inlining and generic specialization, if the compiler can see that function definition. But dynamic dispatch is what enables polymorphism and other powerful tools for abstraction.

6:24

In Swift, only specific kinds of calls use dynamic dispatch, and you can tell by looking at the declaration you’re calling.

6:32

In this example, I have a call to update on a value of protocol type. What kind of call this is depends on where the method is declared.

6:42

If it’s declared in the main body of the protocol, it’s a protocol requirement, and the call to it uses dynamic dispatch.

6:51

But if it’s declared in a protocol extension, the call uses static dispatch. This is a really important difference, both semantically and for performance.

7:00

The last cost of function calls is allocating memory for local state. In order to run, this function needs some memory. It’s an ordinary, synchronous function, so it allocates that memory on the C stack. Allocating space on the C stack can be done by just subtracting from the stack pointer.

7:19

If you compile this, you’ll get assembly code that manipulates the stack pointer at the start and end of the function.

7:26

When we enter the function, the stack pointer is pointing into the C stack. We start by subtracting some number from the stack pointer in our assembly, we can see it’s 208 bytes. This allocates what’s traditionally called the CallFrame, and it gives the function space to execute. Now we can run the body of the function.

7:46

Right before we return, we add 208 bytes back to the stack pointer, deallocating the memory we allocated before.

7:56

You can think of the CallFrame as having a layout like a C struct. Ideally, all of the local state of the function just becomes fields in the CallFrame. Now the reason I say putting things in the CallFrame is ideal is that the compiler is always going to emit that subtraction at the start of the function. It has to, in order to make space to save critical things like the return address. Subtracting a larger constant doesn’t take any longer, so if we need memory in the function, allocating it as part of the CallFrame is as close as it gets to free.

8:29

That ties nicely into the next low-level principle we want to look at, which is memory allocation.

8:36

Traditionally, we think of there as being three kinds of memory. Of course, to the computer, these all ultimately come from the same pool of RAM; but we allocate and use them in different patterns, on our programs. And that’s significant to the operating system, which makes it significant for performance.

8:54

Global memory is allocated and initialized when the program is loaded. This isn’t free, but it’s close to it. The big drawback with global memory is that it only works for specific patterns with a fixed amount of memory that will live for the entire duration of the program. That matches well with global variables and static member variables, but not with much else.

9:18

We already talked about CallFrames as an example of stack allocation. Like global memory, stack memory is very cheap, but it only works in certain patterns. In this case, the memory has to be scoped: there has to be a point in the current function where we’re guaranteed that there will be no more uses of that memory.

9:36

That matches well with a typical local variable.

9:41

The last kind of memory is the heap. Heap memory is very flexible: you can allocate it at an arbitrary time and deallocate it in an arbitrary time later.

9:51

That flexibility makes allocation and deallocation substantially more expensive than either of the other kinds.

9:59

The heap is used for some obvious things like class instances, but it’s also used for some features where we simply don’t have strong enough static lifetime restrictions to use anything else.

10:13

Often, when we allocate heap memory, the memory ends up having shared ownership, which means we have multiple, independent references to the same memory. Swift manages the lifetime of those allocations with reference counting.

10:27

In Swift, we call incrementing the reference count a retain, and decrementing the reference count a release.

10:35

Now that we’ve talked about allocating memory, I want to cover how Swift uses that memory to store values. We call this memory layout.

10:43

In most conversations about Swift, when we talk about values, we’re usually talking about a high-level concept, irrespective of what’s stored where in memory.

10:53

For example, after this initialization, we might say that the value of this variable is an array of two doubles.

11:01

When we need to talk about how things look in memory, sometimes people still use the word value. Now in this talk, that’s going to be confusing, so I’ll use the more technical word representation instead. The representation of a value is how it’s arranged in memory. The variable array is a name for memory that holds a reference to a buffer object that’s currently initialized with the representations of two double values.

11:28

I'll also use the phrase inline representation to mean just the portion of the representation that you get without following any pointers. So the inline representation of our variable array is a single buffer reference, ignoring what that buffer actually contains. The MemoryLayout type in the standard library just measures inline representation. So for array, it’s just 8 bytes, the size of a single 64-bit pointer.

11:57

Okay. Every value in Swift is part of some containing context.

12:03

Local scopes contain all of the values used within them: local variables, intermediate results, and so on. Structs and classes contain all of their stored properties. Arrays and Dictionaries contain all of their elements via their buffer and so on.

12:19

Every value in Swift also has a type.

12:22

The value’s type dictates how the value is represented in memory, including its inline representation. The value’s context dictates where the memory comes from to hold the inline representation.

12:37

So let’s see how that looks in our example. Our array is a local variable. So we have an array value, that’s contained by a local scope.

12:47

Local scopes place inline representations in the function’s CallFrame if they can. That's gonna work here, so somewhere in this CallFrame, there’s space for the inline representation of an Array of Double.

12:59

What is the inline representation of an Array of Double? Well, Array is a struct, and the inline representation of a struct is just the inline representation of all its stored properties. If you look at the standard library source code, this could be a little hard to see, but I’ll give you a spoiler: At the end of the day, Array has a single stored property, and it’s a class reference. And a class reference is just a pointer to an object.

13:24

So really, our CallFrame just stores that pointer.

13:30

In Swift, structs, tuples, and enums, all use inline storage: Everything they contain is laid out inline in their container, typically in the order it was declared.

13:41

Classes and actors use out-of-line storage: Everything they contain is laid out inline in an object, and the container just stores a pointer to that object. This difference has major performance implications. To explain those, I need to talk about our last low-level principle, which is value copying. Now, there’s a basic concept in Swift called ownership. Ownership of a value means responsibility for managing that value’s representation.

14:10

We just saw that the inline representation of an Array is a reference to a buffer object. References like this are managed using reference counting. When we say that a container has ownership of an Array value, that means there’s an invariant that the underlying array buffer has been retained as part of storing the value into the container. The container is then responsible for eventually balancing that retain with a release.

14:38

If nothing else, that has to happen when the container goes away in this example, where the container is a local scope, the object will be released when the variable goes out of scope.

14:49

Any use of a value or variable in Swift interacts with this ownership system somehow; this is a key part of memory safety. There are three main kinds of ownership interaction: a value can be consumed, it can be mutated, or it can be borrowed.

15:06

Consuming a value means transferring ownership of its representation from one place to another. The most important operation that naturally needs to consume a value is assigning the value into memory.

15:19

Now that happens in our example: Initializing a variable, requires us to transfer ownership of the initial value into the variable.

15:28

Sometimes we can do that without any copies. In this example, the initial value of the variable is an array literal, which naturally produces a new, independent value. Swift can just transfer the ownership of that value directly into the variable.

15:43

If we initialize a second variable with the value of the first, we again need to transfer ownership of a value into the new variable.

15:52

But now the initial value expression does not naturally produce a new value: It just refers to an existing variable. We can’t just steal the value out of that variable, because there might be more uses of it.

16:05

In order to get an independent value, we have to copy the current value of the old variable. Since the value is an array, copying it means retaining its buffer.

16:16

Now, this is something that’s frequently optimized. If the compiler can see that aren’t any more uses of the original variable, it should be able to transfer the value here without a copy.

16:28

You can also use the consume operator to request this explicitly. If you do try to use the variable past this point where it's explicitly consumed Swift will complain and tell you there isn’t a value there anymore.

16:43

The second way to use a value is mutation. Mutating a value means temporarily taking ownership of the current value stored in some mutable variable. The key difference from consuming is that the variable still expects to have ownership of the value afterwards.

16:59

When you call a mutating method like this, you’re transferring ownership of the value currently in the variable over to the method. Swift will prevent you from simultaneously using the variable in any other way during the call.

17:12

When the method is done, it transfers ownership of the new value back to the variable. This maintains the invariant that the variable has ownership of its value.

17:23

The last way to use values is to borrow them. Borrowing a value means asserting that nobody else can consume or mutate it. This is what you naturally want to do when you just want to read a value. All you care about is that nobody else is changing or destroying that value out from under you.

17:41

Passing an argument is one of the most common situations that usually should just borrow. If I pass my array to print, ideally that should just pass the information along without doing any extra work. However, there are some situations where Swift needs to defensively copy arguments instead of borrowing them. In order to borrow a value, Swift has to prove that there aren’t any simultaneous attempts to mutate or consume it. In this simple example, it should be able to do that reliably. In more complex examples, it sometimes struggles. When the storage is in a class property, for example, it can be hard for Swift to prove that the property isn’t modified at the same time, so it may need to add a defensive copy.

18:25

This is an area where Swift is actively evolving improvements, both with improvements to the optimizer, and with new features to let you explicitly borrow values to avoid copies.

18:36

What does it actually mean to copy a value? It depends on the inline representation of the value. Copying a value means copying the inline representation so that you get a new inline representation with independent ownership.

18:50

That means that copying a class value means copying the ownership of the reference, which just means retaining the object it refers to. Copying a struct value means recursively copying all of the struct’s stored properties.

19:04

That means that choosing between inline and out-of-line storage involves some real trade-offs. Inline storage avoids allocating memory on the heap and for small types, this is great. For larger types, the cost of copying can become a significant drag on performance, if you find yourself doing a lot of copies. There’s no hard-and-fast rule here for getting the best performance.

19:28

The cost of copying large structs comes in two parts. First, when we’re copying value types, we’re often not just copying bits. These three stored properties are all represented using object references that will have to be retained when we copy the enclosing structs. So, if we made this a class, copying it would have to do a retain of the class object. But copying it as a struct actually still does three retains of these individual fields.

19:56

Also, each copy of this value will need its own storage for all these stored properties. So if we expect to copy this value around a lot, we may end up using a lot more memory. If this type used out-of-line storage instead, each copy would refer to the same object, so the memory would be re-used. Again, no hard-and-fast rules, but something you should be thinking about.

20:20

Now in Swift we encourage you to write types with value semantics, where a copy of the value behaves like it’s totally unrelated to where you copied it from.

20:29

Structs behave this way, but always use inline storage. Class types use out-of-line storage, but they naturally have reference semantics.

20:39

One way to get both out-of-line storage and value semantics is to wrap the class in a struct and then use copy-on-write. The standard library uses this technique in all of Swift’s fundamental data structures, like Array, Dictionary, and String.

20:54

We’ve spent a lot of time talking about these four basic principles. As part of that, we’ve seen how they translate into some basic Swift features like structs, classes, and functions. Now let’s put them together to talk about some high-level features in Swift. We’ll start with dynamically-sized types. Structs in C are always constant-size, but Swift types can have a size determined at runtime. That comes up in two cases.

21:22

First, many value types in the SDK reserve the right to add and change their stored properties in a future OS update, that includes types like Foundation’s URL.

21:34

This means that everything about their layout has to be treated as unknown at compile time.

21:40

Second, a type parameter of a generic type can usually be replaced by any type with any possible representation, so again we have to treat its layout as unknown.

21:51

Now there’s an exception to this second rule when the type parameter is constrained to be a class. In this case, we know that it has to have the representation of a class type, which is to say, always a pointer. This can lead to much more efficient code even when generic substitution doesn’t kick in, if you’re able to accept the constraint.

22:10

Alright. How does Swift handle memory layout and allocation when the compiler doesn’t statically know the representation of a type? Well, it depends on what kind of container is storing the value. For most containers, Swift can just do the layout at runtime. For example, this Connection struct contains a URL. Because the layout of URL isn’t known statically, the layout of Connection can’t be known statically, either. But that’s fine, it just becomes the problem of whatever contains the Connection.

22:40

The compiler knows the static layout of Connection up until it reaches the first dynamically-sized property. The rest of the layout will be filled in dynamically by the Swift runtime, the first time this program needs the layout of the type.

22:54

If URL ends up being 24 bytes, then Connection will be laid out at runtime exactly like the compiler would’ve laid it out if it had known that statically. The compiler will just have to load sizes and offsets dynamically instead of being able to use constants.

23:10

Some containers, however, must have constant size. In these cases, the compiler must allocate memory for the value separately from the main allocation for the container.

23:21

For example, the compiler can only request constant amounts of global memory. If you make a global variable of a type like URL, the compiler will create a global variable of pointer type. When you access the global variable for the first time, as part of lazily running its initializer, Swift will also lazily allocate space for it on the heap.

23:43

A similar thing happens with local variables, because CallFrames must also have a constant size.

23:51

The CallFrame just contains a pointer to the URL. When the variable comes into scope, the function will have to allocate it dynamically, then free it when it goes out of scope.

24:02

However, because local variables are scoped, this allocation can still be done on the C stack. When we enter the function, we allocate the CallFrame as normal.

24:14

When the variable comes into scope, we simply do another subtraction from the stack pointer for the size of the variable.

24:22

When the variable goes out of scope, we can reset the stack pointer to what it was before.

24:33

So far, we’ve only been talking about synchronous functions. What about async functions? The central idea with async functions is that C threads are a precious resource, and holding on to a C thread just to block is not making good use of that resource. As a result, async functions are implemented in two special ways: First, they keep their local state on a separate stack from the C stack, and second, they’re actually split into multiple functions at runtime.

25:03

So, let’s look at an example async function.

25:07

There’s one potential suspension point, await, in this function.

25:13

All of these local functions have uses that cross that suspension point, so they can’t be saved on the C stack.

25:21

We just talked about how sync functions allocate their local memory on the C stack by subtracting from the stack pointer.

25:29

Async functions conceptually work the same way, except they don’t allocate out of a large, contiguous stack.

25:35

Instead, async tasks hold on to one or more slabs of memory.

25:41

When an async function wants to allocate memory on the async stack, it asks the task for memory. The stack tries to satisfy that from the current slab and if it can, great.

25:54

The task will mark that part of the slab as used and give it to the function.

25:59

If most of the slab is occupied however, that allocation might not fit.

26:04

The task then has to allocate a new slab with malloc.

26:09

And the allocation comes out of that.

26:13

In either case, deallocation just hands the memory back to the task, where it becomes marked as unused.

26:21

Because this allocator is only used by a single task and uses a stack discipline, it's typically significantly faster than malloc. The overall performance profile is similar to that of synchronous functions, just with a bit higher overhead for calls.

26:38

Now in order to actually run, an async function must be split into partial functions that span the gaps between the potential suspension points of the function. In this case, because there’s one await in the function, we end up with two partial functions.

26:54

The first partial function starts with the entry to the original function. If the array is empty, it will just return to the async caller. Otherwise, it pulls the first task out and awaits it.

27:05

The other partial function picks up after that await. First, it adds the result of the task it awaited to the output array, then tries to continue the loop. If there are no more tasks, it returns to the async caller. Otherwise, it will loop back and await the next task.

27:22

The key idea here is that there’s only at most one partial function on the C stack.

27:28

We enter one partial function and run like an ordinary C function until the next potential suspension point. If the partial function needs some local state that doesn’t have to cross a suspension point, it can allocate that into its C CallFrame.

27:43

At that point, the partial function tail-calls the next partial function. Its CallFrame disappears from the C stack, and the frame for the next is allocated.

27:54

Then that partial function runs until it reaches a potential suspension point.

28:00

If a task ever needs to actually suspend, it just returns normally on the C stack, which will typically go directly to the concurrency runtime so the thread can immediately be re-used for something else.

28:12

In my examples so far, I’ve always shown a func declaration. How do closures work, and what impact do they have on local allocation? Closures are always passed around as values of function type. This function takes an argument that’s a non-escaping function.

28:29

Function values in Swift are always a pair of a function pointer and a context pointer. So in C terms, this function signature looks something like this.

28:39

A call to the function value in Swift simply calls the function pointer, passing the context pointer as an implicit extra argument.

28:47

A closure expression that captures values from the enclosing scope has to package those values up into the context. How this works depends on the kind of function value it has to produce.

28:59

In this case, the function is a non-escaping function. As a result, we know that the function value will not be used after the call completes, which means it does not need to be memory-managed and we can allocate the context with a scoped allocation.

29:15

The context will therefore just be a simple structure containing the captured value.

29:21

The context can be allocated on the stack, and the address of that will be passed to sumTwice.

29:27

In the closure function, we know the type of the paired context and can just pull the data we need out of it.

29:34

This is different for escaping closures. We no longer know, that the closure will only be used within the duration of the call. Therefore, the context object must be heap-allocated and managed with retains and releases.

29:48

The context essentially behaves like an instance of an anonymous Swift class.

29:55

Now in Swift, when you refer to a local var in a closure, you capture that variable by reference. This allows you to make changes to the variable that will be observed in the original scope and vice-versa.

30:08

If the var is only captured by non-escaping closures, this doesn’t change the lifetime of the variable. As a result, the closures can handle this by just capturing a pointer to the variable’s allocation.

30:20

But if the var is captured by an escaping closure, the lifetime of the var can be extended for as long as the closure is alive.

30:28

As a result, the var also has to be heap-allocated, and the closure context has to retain a reference to that object.

30:36

Let’s wrap up by talking about generics.

30:41

This function is generic over its data model. We already talked about how the layout of this type is statically unknown and how that’s handled in different containers.

30:53

We haven’t yet talked about how protocol constraints work. In particular, how does Swift actually execute this call that uses a protocol requirement? Swift protocols are represented at runtime with a table of function pointers, one for each requirement in the protocol. That table looks roughly like this in C.

31:14

Any time we have a protocol constraint, we’re passing around a pointer to the appropriate table.

31:21

In a generic function like this, the type and witness tables become hidden extra parameters. Everything in this signature at runtime corresponds straightforwardly to something from the original Swift signature.

31:34

When we work with values of protocol type, it’s different. In this case, we’ve made this function more flexible each element of the array is now allowed to be a different type of data model. But that has trade-offs for how efficiently it will run.

31:50

The inline representation of a protocol like AnyDataModel looks like this in C. We have storage for the value and fields to record the value’s type and any conformances we know it has.

32:04

But this has to be a fixed-size type its representation can’t change sizes in order to support different types of data model. No matter how large we make the value storage, there’s potentially going to be a data model that won’t fit into it. What do we do? Swift uses an arbitrary buffer size of 3 pointers. If the value stored in a protocol type can fit into that buffer, Swift will put it there, inline. Otherwise, it allocates space for the value on the heap and just stores that pointer in the buffer.

32:38

So these function signatures look very similar, but they actually have very different characteristics.

32:44

The first function takes a homogeneous array of data models. Those data models will be efficiently packed in the array. The type information will be passed once to the function, as separate top-level arguments.

32:58

The function can also be specialized if the caller knows what type it’s being called with. Here we’re calling it on an array with a known type. The optimizer can easily either inline this call or produce a specialized version of the function that works with this exact argument type. This removes any abstraction cost associated with generics, making the update call go directly to its implementation in MyDataModel’s conformance.

33:26

The second function takes a heterogeneous array of data models. This is more flexible, if you’ve got data models of different types, it’s probably what you need. But each element of the array now has its own dynamic type, and the values won’t be densely packed in the array.

33:43

Optimizing this in practice is also much more difficult; the compiler would have to perfectly reason about how data flows into the array and gets used in the function. Now, that doesn’t completely doom your performance, but it does mean you’ll be getting a lot less help from the compiler in this one place. And as I wrap up this talk, that’s what I want to leave you with. Please don’t come away from this thinking: "John told us to not use protocol types." Everything I mentioned as a cost in this talk is just that: It's a cost, and sometimes costs are worth paying. Because abstraction is a powerful and useful tool, and you should take advantage of it. I hope the information in this talk helps you to develop an intuition for the performance of your Swift code. Thank you for watching!

</Transcript>

## Code

### An example C function, with self-evident allocation [0:24]

```c
int main(int argc, char **argv) {
  int count = argc - 1;
  int *arr = malloc(count * sizeof(int));
  int i;
  for (i = 0; i < count; ++i) {
    arr[i] = atoi(argv[i + 1]);
  }
  free(arr);
}
```

### An example Swift function, with a lot of implicit abstraction [0:50]

```swift
func main(args: [String]) {
  let arr = args.map { Int($0) ?? 0 }
}
```

### An example of a function call [4:39]

```swift
URLSession.shared.data(for: request)
```

### A Swift function that calls a method on a value of protocol type [6:30]

```swift
func updateAll(models: [any DataModel], from source: DataSource) {
  for model in models {
    model.update(from: source)
  }
}
```

### A declaration of the method where it's a protocol requirement using dynamic dispatch [6:40]

```swift
protocol DataModel {
  func update(from source: DataSource)
}
```

### A declaration of the method where it's a protocol extension method using static dispatch [6:50]

```swift
protocol DataModel {
  func update(from source: DataSource, quickly: Bool)
}

extension DataModel {
  func update(from source: DataSource) {
    self.update(from: source, quickly: true)
  }
}
```

### The same function as before, which we're now talking about the local state within [7:00]

```swift
func updateAll(models: [any DataModel],
               from source: DataSource) {
  for model in models {
    model.update(from: source)
  }
}
```

### Partial assembly code for that function, showing instructions to adjust the stack pointer [7:18]

```asm
_$s4main9updateAll6models4fromySayAA9DataModel_pG_AA0F6SourceCtF:
  sub   sp, sp, #208
  stp   x29, x30, [sp, #192]
  …
  ldp   x29, x30, [sp, #192]
  add   sp, sp, #208
  ret
```

### A C struct showing one possible layout of the function's call frame [7:59]

```c
// sizeof(CallFrame) == 208

struct CallFrame {
  Array<AnyDataModel> models;
  DataSource source;
  AnyDataModel model;
  ArrayIterator iterator;
  ...
  void *savedX29;
  void *savedX30;
};
```

### A line of code containing a single variable initialization [10:50]

```swift
var array = [ 1.0, 2.0 ]
```

### Using the MemoryLayout type to examine a type's inline representation [11:44]

```swift
MemoryLayout.size(ofValue: array) == 8
```

### The variable initialization from before, now placed within a function [12:48]

```swift
func makeArray() {
  var array = [ 1.0, 2.0 ]
}
```

### Initializing a second variable with the contents of the first [15:42]

```swift
func makeArray() {
  var array = [ 1.0, 2.0 ]
  var array2 = array
}
```

### Taking the value of an existing variable with the consume operator [16:27]

```swift
func makeArray() {
  var array = [ 1.0, 2.0 ]
  var array2 = consume array
}
```

### A call to a mutating method [16:58]

```swift
func makeArray() {
  var array = [ 1.0, 2.0 ]
  array.append(3.0)
}
```

### Passing an argument that should be borrowable [17:40]

```swift
func makeArray() {
  var array = [ 1.0, 2.0 ]
  print(array)
}
```

### Passing an argument that will likely have to be defensively copied [18:10]

```swift
func makeArray(object: MyClass) {
  object.array = [ 1.0, 2.0 ]
  print(object.array)
}
```

### Part of a large struct type [19:27]

```swift
struct Person {
  var name: String
  var birthday: Date
  var address: String
  var relationships: [Relationship]
  ...
}
```

### A Connection struct that contains a property of the dynamically-sized URL type [21:22]

```swift
struct Connection {
  var username: String
  var address: URL
  var options: [String: String]
}
```

### A GenericConnection struct that contains a property of an unknown type parameter type [21:40]

```swift
struct GenericConnection<T> {
  var username: String
  var address: T
  var options: [String: String]
}
```

### The same GenericConnection struct, except with a class constraint on the type parameter [21:51]

```swift
struct GenericConnection<T> where T: AnyObject {
  var username: String
  var address: T
  var options: [String: String]
}
```

### The same Connection struct as before [22:27]

```swift
struct Connection {
  var username: String
  var address: URL
  var options: [String: String]
}
```

### A global variable of URL type [23:23]

```swift
var address = URL(string: "...")
```

### A local variable of URL type [23:42]

```swift
func workWithAddress() {
  var address = URL(string: "...")
}
```

### An async function [25:02]

```swift
func awaitAll(tasks: [Task<Int, Never>]) async -> [Int] {
  var results = [Int]()
  for task in tasks {
    results.append(await task.value)
  }
  return results
}
```

### A function that takes an argument of function type [28:21]

```swift
func sumTwice(f: () -> Int) -> Int {
  return f() + f()
}
```

### A C function roughly corresponding to the Swift function [28:30]

```c
Int sumTwice(Int (*fFunction)(void *),
             void *fContext) {
  return fFunction(fContext)
       + fFunction(fContext);
}
```

### A function call that passes a closure expression as a function argument [28:47]

```swift
func sumTwice(f: () -> Int) -> Int {
  return f() + f()
}

func puzzle(n: Int) -> Int {
  return sumTwice { n + 1 }
}
```

### C code roughly corresponding to the emission of the non-escaping closure [29:15]

```c
struct puzzle_context {
  Int n;
};

Int puzzle(Int n) {
  struct puzzle_context context = { n };
  return sumTwice(&puzzle_closure, &context);
}

Int puzzle_closure(void *_context) {
  struct puzzle_context *context =
    (struct puzzle_context *) _context;
  return _context->n + 1;
}
```

### The function and its caller again, now taking an escaping function as its parameter [29:34]

```swift
func sumTwice(f: @escaping () -> Int) -> Int {
  return f() + f()
}

func puzzle(n: Int) -> Int {
  return sumTwice { n + 1 }
}
```

### A closure that captures a local variable by reference [29:53]

```swift
func sumTwice(f: () -> Int) -> Int {
  return f() + f()
}

func puzzle(n: Int) -> Int {
  var addend = 0
  return sumTwice {
    addend += 1
    return n + addend
  }
}
```

### Swift types roughly approximating how escaping variables and closures are handled [30:30]

```swift
class Box<T> {
  let value: T
}

class puzzle_context {
  let n: Int
  let addend: Box<Int>
}
```

### A generic function that calls a protocol requirement [30:40]

```swift
protocol DataModel {
  func update(from source: DataSource)
}

func updateAll<Model: DataModel>(models: [Model], from source: DataSource) {
  for model in models {
    model.update(from: source)
  }
}
```

### A C struct roughly approximating a protocol witness table [31:03]

```c
struct DataModelWitnessTable {
  ConformanceDescriptor *identity;
  void (*update)(DataSource source,
                 TypeMetadata *Self);
};
```

### A C function signature roughly approximating how generic functions receive generic parameters [31:20]

```c
void updateAll(Array<Model> models,
               DataSource source,
               TypeMetadata *Model,
               DataModelWitnessTable *Model_is_DataModel);
```

### A function that receives an array of values of protocol type [31:36]

```swift
protocol DataModel {
  func update(from source: DataSource)
}

func updateAll(models: [any DataModel], from source: DataSource)
```

### A C struct roughly approximating the layout of the Swift type `any DataModel` [31:49]

```c
struct AnyDataModel {
  OpaqueValueStorage value;
  TypeMetadata *valueType;
  DataModelWitnessTable *value_is_DataModel;
};

struct OpaqueValueStorage {
  void *storage[3];
};
```

### A contrast of the two Swift function signatures from before [31:50]

```swift
protocol DataModel {
  func update(from source: DataSource)
}

func updateAll<Model: DataModel>(models: [Model],
                            from source: DataSource) {
  for model in models {
    model.update(from: source)
  }
}

func updateAll(models: [any DataModel], from source: DataSource) {
  for model in models {
    model.update(from: source)
  }
}
```

### Specialization of a generic function for known type parameters [32:57]

```swift
func updateAll<Model: DataModel>(models: [Model],
                            from source: DataSource) {
  for model in models {
    model.update(from: source)
  }
}

var myModels: [MyDataModel]

updateAll(models: myModels, from: source)

// Implicitly generated by the optimizer

func updateAll_specialized(models: [MyDataModel],
                           from source: DataSource) {
  for model in models {
    model.update(from: source)
  }
}
```

## Summary

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2024/10217/?time=0)
- Explore Swift performance by understanding how code runs at a low level.

- 1:24 - [Agenda](https://developer.apple.com/videos/play/wwdc2024/10217/?time=84)
- Cover what performance means, low-level principles, and implementation details of Swift features.

- 1:46 - [What is performance?](https://developer.apple.com/videos/play/wwdc2024/10217/?time=106)
- Performance is multidimensional; investigate with tools and measurements for regressions.

- 4:31 - [Low-level principles](https://developer.apple.com/videos/play/wwdc2024/10217/?time=271)
- Function calls, memory allocation, memory layout, and value copying dominate performance.

- 4:36 - [Function calls](https://developer.apple.com/videos/play/wwdc2024/10217/?time=276)
- Costs include argument setup, function resolution, local state allocation, and optimization inhibition.

- 8:29 - [Memory allocation](https://developer.apple.com/videos/play/wwdc2024/10217/?time=509)
- Global, stack, and heap memory have different costs and use cases.

- 10:34 - [Memory layout](https://developer.apple.com/videos/play/wwdc2024/10217/?time=634)
- Inline vs out-of-line storage affects copying and memory usage.

- 13:57 - [Value copying](https://developer.apple.com/videos/play/wwdc2024/10217/?time=837)
- Ownership transfer, mutation, and borrowing; copying depends on representation.

- 20:54 - [Putting it together](https://developer.apple.com/videos/play/wwdc2024/10217/?time=1254)
- Dynamically-sized types, async functions, closures, and generics have performance implications.

- 21:08 - [Dynamically-sized types](https://developer.apple.com/videos/play/wwdc2024/10217/?time=1268)
- Runtime layout for unknown sizes; class constraints improve efficiency.

- 24:33 - [Async functions](https://developer.apple.com/videos/play/wwdc2024/10217/?time=1473)
- Split into partial functions; local state managed separately from C stack.

- 28:11 - [Closures](https://developer.apple.com/videos/play/wwdc2024/10217/?time=1691)
- Function pointers with context; escaping closures heap-allocate context.

- 30:36 - [Generics](https://developer.apple.com/videos/play/wwdc2024/10217/?time=1836)
- Protocol constraints use witness tables; specialization optimizes performance.

- 34:00 - [Wrap up](https://developer.apple.com/videos/play/wwdc2024/10217/?time=2040)
- Develop intuition for Swift performance; abstraction costs are worth paying when beneficial.
