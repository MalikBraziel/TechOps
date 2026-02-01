---
URL: https://developer.apple.com/videos/play/wwdc2024/10195/
Title: Go further with Swift Testing
Topics: Swift Concurrency, SOLID
Date_Published: June 2024
Swift_Version_At_Publish: Swift 6.0
---

# Go further with Swift Testing

Go further with Swift Testing
Learn how to write a sweet set of (test) suites using Swift Testing's baked-in features. Discover how to take the building blocks further and use them to help expand tests to cover more scenarios, organize your tests across different suites, and optimize your tests to run in parallel.

### Chapters

Chapters
0:00 - Introduction
0:36 - Why we write tests
0:51 - Challenges in testing
1:21 - Writing expressive code
1:35 - Expectations
3:58 - Required expectations
4:29 - Tests with known issues
5:54 - Custom test descriptions
7:23 - Parameterized testing
12:47 - Organizing tests
12:58 - Test suites
13:33 - The tag trait
20:38 - Xcode Cloud support
21:09 - Testing in parallel
21:36 - Parallel testing basics
24:26 - Asynchronous conditions
26:32 - Wrap up

### Resources
- [Adding tests to your Xcode project](https://developer.apple.com/documentation/Xcode/adding-tests-to-your-xcode-project)
- [Forum: Developer Tools & Services](https://developer.apple.com/forums/topics/developer-tools-and-services?cid=vf-a-0010)
- [Improving code assessment by organizing tests into test plans](https://developer.apple.com/documentation/Xcode/organizing-tests-to-improve-feedback)
- [Running tests and interpreting results](https://developer.apple.com/documentation/Xcode/running-tests-and-interpreting-results)
- [Swift Testing](https://developer.apple.com/documentation/Testing)
- [Swift Testing GitHub repository](https://github.com/apple/swift-testing)
- [Swift Testing vision document](https://github.com/apple/swift-testing/blob/main/Documentation/Vision.md)


### Related Videos

#### WWDC24

- [Meet Swift Testing](https://developer.apple.com/videos/play/wwdc2024/10195/)

#### WWDC21

- [Meet async/await in Swift](https://developer.apple.com/videos/play/wwdc2021/10132)


## Transcript

<Transcript>

0:07

Hi I’m Jonathan and I’m part of the Swift Testing team.

0:11

My colleague Dorothy and I, are here to walk you through some of the powerful features in Swift Testing that will elevate your test development to the next level. Swift Testing is a modern, open-source testing library for Swift powerful and expressive capabilities. It's included with Xcode 16. If you haven’t already, watch “Meet Swift Testing” to learn about the building blocks of Swift Testing.

0:35

Testing is a crucial step in the development process. It helps surface issues before your code reaches your users and gives you confidence that you’re shipping a quality product. However, you may run into challenges as you maintain your project's ever-growing collection of tests.

0:51

Tests document and enforce the behavior of your code. The more complex your code gets, the more critical it is that your tests are easy to read and understand. It takes a lot of thought and effort to cover all possible edge cases in your code.

1:06

Organizing and relating a large collection of tests can be a complex task, and hidden dependencies between your tests may make them fragile and prone to unexpected failures. To get us started, here’s Dorothy. The readability of your tests is important. Readable tests are easier to work with, and make test failures more understandable especially as your code gets more and more complex. Swift Testing includes several features that can help you write clear, expressive tests.

1:36

Expectations are how you validate that your code is behaving as expected in Swift Testing. They leverage Swift language features and syntax to provide a highly expressive and concise interface.

1:47

Here are some examples of expectations with simple expressions that evaluate to true or false. However, the expect macro is much more powerful and can handle even more complicated validations.

2:00

Error handling is often less tested but is an important part of the user’s experience. You want to make sure your code fails gracefully in the face of invalid input and unexpected conditions. The expect throws macro make this workflow much easier by building on expectations.

2:17

When you’re testing your code's happy path and are expecting a throwing function to return successfully, just call it inside your test.

2:24

If the function does end up throwing an error, the test will fail.

2:28

If the function runs successfully and returns a value, you can use an expectation to verify that it’s what you're expecting it to be.

2:36

On the other hand, to verify failure cases behave as intended, you need to catch, and examine the error, thrown by the function.

2:45

You could add your own do catch statement around the code and examine the error, but it's pretty wordy, and if an error is not thrown, this code won't let you know that things went terribly right.

2:57

Swift Testing is here to help with the expect throws macro. Instead of manually writing your own do catch statement, the expect throws macro does the hard work for you. If the brew function throws an error, then this test passes. If no error was thrown, the test fails.

3:16

If you want to check that a particular type of error is thrown, you can pass that type instead of any Error. Now this test will fail if no error is thrown, or, if any error is thrown that isn't an instance of BrewingError.

3:29

To take it one step further, you can be even more thorough and validate that a specific error is thrown. For the most complex cases, you can also customize the validation performed by the expect throws macro.

3:43

You can customize your error validation to check for specific types or cases of errors, whether associated values or properties are correct, or whatever else you need to do to ensure the error your code threw was the right one for the job.

3:57

In the “Meet Swift Testing” session, Stuart introduced the concept of required expectations. As a quick reminder, any regular expectation, including throwing ones, can be made into a required expectation.

4:11

In cases where you’re validating an optional value, you can use a required expectation to document the control flow.

4:19

It doesn’t make sense to examine a value that ended up being nil, so adding a required expectation lets you end your test early if there's nothing left to do.

4:29

Next, let’s go over how to document known errors in your test using the withKnownIssue function.

4:35

Triaging test failures is a time-consuming process. When you cannot immediately fix a failing test, or if it’s failing due to factors outside of your control, the failure can add noise to your test results that obscures real customer-facing problems.

4:51

This test is checking that a soft serve ice cream machine can make an ice cream cone, but it looks like the machine is out of service right now and the test is failing as a result.

5:00

It may be a while before the mechanic can fix the machine.

5:05

While you're waiting for them to arrive, your first intuition may be to use the disabled trait on this test.

5:11

However, withKnownIssue is a better option in this case. The test will continue to run and you will be notified of compilation errors.

5:20

If the function returns an error, the test’s results will not count towards a test failure, as this failure is expected. Instead, the test will be surfaced as an expected failure in the results. When the issue is fixed and an error is no longer thrown, you'll be notified, and you can go ahead and remove the withKnownIssue call and run the test normally again.

5:42

Your test may also perform multiple checks.

5:45

In this case, you can just wrap the failing function in withKnownIssue and allow the rest of your validations to run.

5:52

The last topic in this section I want to cover is custom test descriptions. In a perfect world, all of your tests pass all of the time and the ice cream machine is always working, of course. In the real world, tests do fail. Custom test descriptions can help you see at a glance what's going on inside a test and can help guide you to a solution when something is wrong. When working with simple enumerations, the default description is usually succinct and straightforward.

6:23

However, more complex types like structures and classes can produce a lot more noise because their descriptions, by default, include a lot of extra data that may not be useful during testing.

6:36

These values show up in Xcode with a lot of information. The information is accurate, but it can be hard to find the important bits that distinguish one value from another. In this case, you may want to give each one a concise test description without affecting production code.

6:54

You can make your type conform to the CustomTestStringConvertible protocol which lets you provide a tailored, test-specific description.

7:02

Now you'll get a much more readable and descriptive value in both the test navigator and the test report! We covered handling thrown errors, ending a test early with required expectations, handling known issues, and making test output more readable. Your tests are now ready to handle anything you throw at them! Now back to Jonathan.

7:23

As we mentioned earlier, one of the challenges in preserving your code’s quality is covering all its edge cases: those bits of complex functionality that rarely happen in your day to day testing.

7:35

It’s good practice to run your tests under various conditions to ensure you catch edge cases, but this previously took lots of time and writing a separate test for every possible variation is a maintenance nightmare. With Swift Testing, you can easily run a single test function with many different arguments.

7:54

Let me show you what I mean: this enumeration lists various ice cream flavors and you can check if a particular flavor contains nuts. The containsNuts property needs test coverage for every case in the enumeration.

8:08

Swift Testing’s parameterized testing makes adding that test coverage a piece of cake.

8:14

This test function checks whether or not one of the cases in the enumeration vanilla, in this case contains nuts.

8:21

You could write a separate test function for each case in the enumeration, but that's a lot of code. It would be easy to accidentally check for the wrong value after copying and pasting the same function so many times.

8:35

Instead, you really only need one or two test functions here. After all, the logic of the tests is the same except for a single input value.

8:44

And that's what a parameterized test is: A test that takes one or more parameters. When the test function runs, Swift Testing automatically splits it up into separate test cases: one per argument.

8:58

These test cases are entirely independent of each other and are able to run in parallel. This means less time is needed to test them all all than would be needed with a for loop or separate test functions. Xcode supports re-running individual test cases of a test function, when the type of input conforms to Codable. This allows you to retry individual failing test cases without needing to re-run other test cases that have run successfully. Let's walk through how to parameterize our test function in more detail.

9:29

You might start by writing a test function that loops over all the cases in the enumeration and tests each one. This function works, but we can improve it.

9:39

One problem jumps out: If this test function fails for one of the values in the array, it will stop execution and won't test subsequent arguments. It may be unclear which value failed, and you won't get the coverage you want.

9:53

You can move the inputs up and pass them to the test attribute instead of iterating over them inside the test function. When a collection is passed to the Test attribute for parameterization the testing library will pass each element in the collection, one, at at time, to the test function as its first and only argument. Then, if the test fails for one of these arguments, the corresponding diagnostics will clearly indicate which inputs need your attention.

10:18

You're almost done! If you add a second function that tests those flavors that do contain nuts, you'll have 100% code coverage for this enumeration. And it's easy to add new test cases if you expand the enumeration in the future.

10:33

That example looked at the cases of an enumeration, but parameterized test functions can also accept many other kinds of input.

10:40

Any sendable collection, including arrays, dictionaries, ranges, and more can be passed to the test attribute.

10:48

Test Cases along with their arguments are displayed in both the test navigator where each argument will get its own run button, and a test report, where you’ll get a rich information view for failed parameterized tests. So far, you've learned how to write parameterized tests with 1 input, but what if you need to pass more? Test functions in Swift Testing can accept multiple inputs, and you can add another argument to this test by simply appending it after the first argument.

11:16

Every element from the first collection is passed as the first argument to the test function, and every element from the second collection is passed as the second argument. All combinations of elements from these two collections are automatically tested.

11:30

Being able to test every combination in a single test function is a powerful way to improve your test coverage! To help visualize just how powerful, let’s consider two arrays of arguments, raw ingredients and the foods you can make with them.

11:45

A test function with two arguments will test every possible combination, sixteen in total. You might find yourself taste testing some strange pairings. I like egg salad and omurice as much as the next engineer, but help me out here what are lettuce fries? And that was just four values in each array. As you add more inputs to the two sets, the number of test cases will grow and grow and grow, exponentially! To help control this exponential growth, test functions accept a maximum of two collections. You can also use the Swift standard library's zip function to match up pairs of inputs that should go together.

12:24

Instead of testing every combination of raw ingredient and final dish. Call zip and they'll be paired up.

12:31

Zip will produce a sequence of tuples, where each element from your first collection is paired with its corresponding element in your second collection, and nothing else. Now you've got the tools you need to expand your test coverage with parameterized testing! Back to Dorothy to talk about organizing test. With all these new features to help you write more tests, you need strategies to manage them. Let’s go over the tools Swift Testing provides to organize your tests.

12:58

To recap, suites are types containing test functions.

13:02

Their functionality can be documented with traits, such as, a display name. New in Swift Testing, suites can now contain other suites to give you more flexibility in organizing tests. This is a pretty, sweet set of tests but it’s not organized very clearly. The test suite includes tests for warm desserts, and tests for cold desserts.

13:24

By adding sub suites, you can reflect this organization in the tests themselves, and make relationships between these groups of tests, more obvious.

13:33

Tags are another trait that help you organize your tests. A complex package or project may contain hundreds or thousands of tests and suites.

13:41

You probably have multiple test suites covering different parts of your code. Although they're not directly connected, some subset of your tests may share common characteristics.

13:52

In this example, some tests involve foods that are caffeinated, and some involve foods that are chocolatey. In this case, tags can help you associate these tests across the two suites.

14:04

Keep in mind: Tags are not a replacement for test suites. Suites impose structure on test functions at the source level, while tags help you associate tests from different files, suites and targets that share something in common.

14:17

That's tags in a nutshell but how do you declare a tag and add it to a test? All of these drinks contain caffeine, as does any espresso brownie worth eating. You can create a caffeinated tag to relate these tests even though they exist in separate suites.

14:34

First, extend the Tag type, and declare a static variable with the name caffeinated. The variable needs to be an instance of Tag. And the secret ingredient: Add the tag attribute to the variable to make it usable as a tag in your tests.

14:50

Now that you've created the tag, you can add it to these tests. You can add it at the suite level for DrinkTests because all the drinks used in those tests are caffeinated, and tests inherit tags from their suites.

15:02

Then, you can add it to espressoBrownieTexture. It's the only caffeinated food in DessertTests, so you wouldn't want to add it to the entire DessertTests suite.

15:13

Suites and tests can also have multiple tags. For example, while mocha and espresso brownies are both caffeinated, they're also both made with chocolate! You can create a chocolatey tag and add it to those two tests.

15:28

Tests are grouped together by tags in the test navigator and allow you to run tests that have specific tags. Let's take a tour and see how you can use your tags in Xcode 16. The test navigator has several new features to help you work with tagged tests. By default, the navigator shows tests organized by their location in your source code. I've been busy perfecting my top-secret hot sauce recipe, and I want to improve my test coverage for code that uses it. These are the tests I've already written.

15:58

I'm going to use the filter field at the bottom of the test navigator to find tests related to my hot sauce. As I start typing, Xcode will suggest tags based on the ones available in my project.

16:09

Xcode is now surfacing a few tag suggestions, like seasonal, spicy, and street food. I’ll continue typing to narrow down my results.

16:19

By default, the filter field matches the tests’ display and function names. That’s why tests like Spice blend in gingerbread cookies and Spinach and artichoke dip ratio are showing up.

16:30

Xcode is also suggesting tests that do not have any words highlighted in their names. That's because they have tags that match what I've typed.

16:39

When I click spicy in the suggestions popover, The Test Navigator will convert what I typed into a tag filter which will remove all tests that don’t have that tag. Now the test navigator is showing me only tests with the spicy tag.

16:52

The test navigator can also group tests by their tags. I can switch to this view by clicking on the tag icon at the top of the test navigator. I'll remove the tag filter so all the tags in my project will show up in the results. This view gives me a convenient way to run my tests. Like the hierarchy view, I can click the play button beside any tag to run all tests with this tag.

17:16

As I’m developing, I can run my hot sauce-related tests and get quick feedback on my changes. In addition to running these tests manually you can save these tag preferences to your test plan using the redesigned test plan editor! I've created a new test plan that includes a core set of reliable tests so I can quickly catch any bugs I might introduce as I make changes. This test plan includes all of my test targets. I can switch to the new test plan by selecting its name, Core Food, from the list of test plans in the test navigator. Then, I'll open the test plan editor by clicking its name directly in the test navigator.

17:54

I’ll expand my unit test target to view all my tests.

17:58

I'll also hide the navigator to give myself a bit more room to look around.

18:02

As a reminder: a test plan can reference one or more test targets, and the test plan editor lets you organize tests across all of those targets.

18:11

The tags for each suite and tests are displayed in the right-hand column.

18:16

I can choose which tests to include or exclude by specifying tags in these fields at the top of the test plan editor. Suppose I want to update this test plan to run all my core tests except for those with the seasonal tag. Those tests cover code that is only expected to work at certain times of the year, so I don't want them to always run.

18:36

I can exclude tests with the seasonal tag by adding that tag in the exclude field.

18:41

The test plan preview automatically updates to match my changes. Tags that are currently active in the include and exclude fields will be highlighted in purple. Tags that are excluded from the test plan will be crossed out.

18:55

I'll add another tag to the exclude field, and that will give me some additional filtering options. When my test plan is filtered by more than one tag, Xcode gives me the option to match either all tags or any tags. All tags is the default.

19:10

In this case, I'll use any tags because I want to exclude all tests tests that have the seasonal or the unreleased tag. Now both tags are highlighted in purple, and both are crossed out because they’re being actively excluded from my test plan.

19:25

Tags are also a useful tool that helps you analyze your results across entire test targets. This is the test report that was generated after running the test plan we just created. There are quite a few failures, so let’s investigate how the test report can help us fix failures faster with tags.

19:43

Let’s explore the tests outline screen.

19:46

Tags now appear in the outline, next to their corresponding suites and tests.

19:51

We can narrow down the results by using the tags filter. But because I have so many failures, it will be tedious to look through each one.

20:00

Navigating to the all insights screen, there’s a new section for distribution insights, which surfaces patterns in test failures that have common run destinations, tags, or bugs. This insight is interesting. All of the tests with the spicy tag failed.

20:16

We can navigate to the details screen by double clicking on the insight row.

20:21

All the associated failing tests with their failure messages appear in this screen.

20:26

I recently modified the chili pepper that we use in our secret hot sauce, so that could be the reason all the spicy tests are failing. I’ll review my changes and fix my tests.

20:37

Xcode Cloud has also been updated to support Swift Testing.

20:42

Just like in Xcode, you can view the results of your test suites in the Xcode Cloud tab of App Store Connect. This includes details about the traits that have been defined in your tests. When you organize and relate your tests, Xcode can help you gain insight into problems affecting them. Suites and tags make large collections of tests more efficient to navigate and easier to manage. Back to Jonathan to talk about running test in parallel.

21:09

Now that you have a sizable and manageable test suite, it's time to consider how testing in parallel can keep your tests passing quickly and how to ensure they run reliably in a concurrent environment. Parallel testing is enabled by default in Swift Testing, so you can start taking advantage of these features with no extra code.

21:28

For the first time, you can run parallel tests on all physical devices, bringing all these great advantages to even more tests! Let’s begin by going over the basics of parallel testing. Tests run one after another in serial testing. If you've used XCTest before, this is how it runs tests by default.

21:48

This is in contrast to parallel testing, where tests execute concurrently. You gain several advantages when your tests run in parallel.

21:57

First, execution time will be reduced, which is crucial in CI where every minute counts. This also means a faster turnaround to get your results. Swift Testing runs test functions in parallel by default, regardless of whether they are synchronous or asynchronous. This is a notable difference from XCTest, which only supports parallelization using multiple processes, each running one test at a time.

22:22

Test functions can be isolated to a global actor like MainActor when needed. Next, the order in which your tests run is randomized. This helps surface hidden dependencies between tests and exposes areas where you may need to make adjustments.

22:38

Let's look at an example. I have two tests: in the first one, I bake a cupcake, and in the second one I eat it.

22:45

If these tests always run in order and run one after the other, then I'll always have a cupcake ready for the second test because it was baked in the first test. That wasn't intentional! If the tests run in parallel, then the second test's dependency on the first will be exposed at runtime and I'll be able to fix it. If you’re converting older test code, some of those dependencies may already be baked in.

23:08

Swift 6 will be able to help you find some of the problems with your existing code as you rewrite it, but others will be harder to find. As your first step, you may just want to convert your code to Swift Testing and come back to address those problems later.

23:22

You may not be able to fix them all just yet, which is where the .serialized trait can help.

23:27

The .serialized trait can be added to a test suite to indicate that its tests need to be run serially.

23:33

These tests will lose the advantages we just discussed, so you should first consider refactoring your test code, whenever possible, to run in parallel.

23:42

.serialized can also be applied to a parameterized test function to ensure its test cases run one at a time.

23:48

If applied to a suite that contains another suite, it’s automatically inherited and you don’t need to add it twice.

23:55

Tests in a suite with the .serialized trait will run one after another. However, Swift is still free to run other unrelated tests in parallel with these serialized tests, so you can still get parallel performance. If necessary, you can run tests serially but we recommend refactoring your tests so they can run in parallel.

24:15

Parallel testing is on by default when you use Swift Testing and will let your tests run as fast as possible. And Swift 6 can help you find issues with your tests that prevent them from running in parallel.

24:27

Next, we’ll show you techniques for waiting on asynchronous conditions with Swift Testing.

24:32

When writing concurrent test code, you can use the same concurrency features in Swift as you would in your production code.

24:39

await works exactly the same way and will suspend a test allowing other test code to keep the CPU busy while work is pending.

24:47

Some code, especially older code written in C or Objective-C, uses completion handlers to signal the end of an asynchronous operation.

24:55

This code will run after the test function returns, and you won't be able to verify the function succeeded.

25:02

For most completion handlers, Swift provides an async overload automatically that you can use instead.

25:08

If the code you're testing uses a completion handler and an async overload is NOT available, you can instead use withCheckedContinuation or withCheckedThrowingContinuation to convert it to an expression that can be awaited.

25:22

For more information about continuations in Swift, watch "Meet async/await in Swift".

25:28

Another kind of callback is an event handler that may fire more than once. This version of the eat function calls its callback once for each cookie instead of at the end of the whole meal.

25:40

However, trying to count the number of cookies eaten with a variable will result in a concurrency error in Swift 6 because it's unsafe to set a variable this way.

25:50

If the code you’re testing may invoke a callback more than once and you need to test how many times it is called, you can use a confirmation instead.

25:58

By default, a confirmation is expected to occur exactly once but you can specify a different expected count. I'm baking and eating 10 delicious cookies, so I expect this event will occur 10 times. You can also specify 0 if the confirmation should never occur during testing.

26:16

Swift concurrency is a powerful tool in your production code and in your tests. Get faster results by running your tests in parallel, and use async/await, continuations, and confirmations to ensure your test code runs correctly in a concurrent environment. In this session, you learned how Swift Testing can improve your testing workflow. We’ve covered a large range of topics, so let’s do a quick recap! To start, we looked at how Swift Testing’s APIs help you write expressive tests. With parameterization, you can exercise many different cases with a single test.

26:52

Tools such as suites and tags help you organize and document your test code.

26:58

And finally, testing in parallel can reduce the time it takes to run your tests and may help identify dependencies between them. Thanks for tuning in Happy testing!

</Transcript>

## Code
[Note: The author at Apple responsible for the code snippets section did not give the code snippets the right time stamps.]

### 0:01 - Successful throwing function
```swift
// Expecting errors

import Testing

@Test func brewTeaSuccessfully() throws {
    let teaLeaves = TeaLeaves(name: "EarlGrey", optimalBrewTime: 4)
    let cupOfTea = try teaLeaves.brew(forMinutes: 3)
}
```

### 0:02 - Validating a successful throwing function
```swift
import Testing

@Test func brewTeaSuccessfully() throws {
    let teaLeaves = TeaLeaves(name: "EarlGrey", optimalBrewTime: 4)
    let cupOfTea = try teaLeaves.brew(forMinutes: 3)
    #expect(cupOfTea.quality == .perfect)
}

### 0:03 - Validating an error is thrown with do-catch (not recommended)
```swift
import Testing

@Test func brewTeaError() throws {
    let teaLeaves = TeaLeaves(name: "EarlGrey", optimalBrewTime: 3)

    do {
        try teaLeaves.brew(forMinutes: 100)
    } catch is BrewingError {
        // This is the code path we are expecting
    } catch {
        Issue.record("Unexpected Error")
    }
}
```

### 0:04 - Validating a general error is thrown
```swift
import Testing

@Test func brewTeaError() throws {
    let teaLeaves = TeaLeaves(name: "EarlGrey", optimalBrewTime: 4)
    #expect(throws: (any Error).self) {
        try teaLeaves.brew(forMinutes: 200) // We don't want this to fail the test!
    }
}
```

### 0:05 - Validating a type of error
```swift
import Testing

@Test func brewTeaError() throws {
    let teaLeaves = TeaLeaves(name: "EarlGrey", optimalBrewTime: 4)
    #expect(throws: BrewingError.self) {
        try teaLeaves.brew(forMinutes: 200) // We don't want this to fail the test!
    }
}
```

### 0:06 - Validating a specific error
```swift
import Testing

@Test func brewTeaError() throws {
    let teaLeaves = TeaLeaves(name: "EarlGrey", optimalBrewTime: 4)
    #expect(throws: BrewingError.oversteeped) {
        try teaLeaves.brew(forMinutes: 200) // We don't want this to fail the test!
    }
}
```

### 0:07 - Complicated validations
```swift
import Testing

@Test func brewTea() {
    let teaLeaves = TeaLeaves(name: "EarlGrey", optimalBrewTime: 4)
    #expect {
        try teaLeaves.brew(forMinutes: 3)
    } throws: { error in
        guard let error = error as? BrewingError,
              case let .needsMoreTime(optimalBrewTime) = error else {
            return false
        }
        return optimalBrewTime == 4
    }
}
```

### 0:08 - Throwing expectation
```swift
import Testing

@Test func brewAllGreenTeas() {
  #expect(throws: BrewingError.self) {
    brewMultipleTeas(teaLeaves: ["Sencha", "EarlGrey", "Jasmine"], time: 2)
  }
}
```

### 0:09 - Required expectations
```swift
import Testing

@Test func brewAllGreenTeas() throws {
  try #require(throws: BrewingError.self) {
    brewMultipleTeas(teaLeaves: ["Sencha", "EarlGrey", "Jasmine"], time: 2)
  }
}
```

### 0:10 - Control flow of validating an optional value (not recommended)
```swift
import Testing

struct TeaLeaves {symbols
    let name: String
    let optimalBrewTime: Int

    func brew(forMinutes minutes: Int) throws -> Tea { ... }
}

@Test func brewTea() throws {
    let teaLeaves = TeaLeaves(name: "Sencha", optimalBrewTime: 2)
    let brewedTea = try teaLeaves.brew(forMinutes: 100)
    guard let color = brewedTea.color else {
        Issue.record("Tea color was not available!")
    }
    #expect(color == .green)
}
```

### 0:11 - Failing test with a throwing function
```swift
import Testing

@Test func softServeIceCreamInCone() throws {
    try softServeMachine.makeSoftServe(in: .cone)
}
```

### 0:12 - Disabling a test with a throwing function (not recommended)
```swift
import Testing

@Test(.disabled) func softServeIceCreamInCone() throws {
    try softServeMachine.makeSoftServe(in: .cone)
}
```

### 0:13 - Wrapping a failing test in withKnownIssue
```swift
import Testing

@Test func softServeIceCreamInCone() throws {
    withKnownIssue {
        try softServeMachine.makeSoftServe(in: .cone)
    }
}
```

### 0:14 - Wrap just the failing section in withKnownIssue
```swift
import Testing

@Test func softServeIceCreamInCone() throws {
    let iceCreamBatter = IceCreamBatter(flavor: .chocolate)
    try #require(iceCreamBatter != nil)
    #expect(iceCreamBatter.flavor == .chocolate)

    withKnownIssue {
        try softServeMachine.makeSoftServe(in: .cone)
    }
}
```

### 0:15 - Simple enumerations
```swift
import Testing

enum SoftServe {
    case vanilla, chocolate, pineapple
}
```

### 0:16 - Complex types
```swift
import Testing

struct SoftServe {
    let flavor: Flavor
    let container: Container
    let toppings: [Topping]
}

@Test(arguments: [
    SoftServe(flavor: .vanilla, container: .cone, toppings: [.sprinkles]),
    SoftServe(flavor: .chocolate, container: .cone, toppings: [.sprinkles]),
    SoftServe(flavor: .pineapple, container: .cup, toppings: [.whippedCream])
])
func softServeFlavors(_ softServe: SoftServe) { /*...*/ }
```

### 0:17 - Conforming to CustomTestStringConvertible
```swift
import Testing

struct SoftServe: CustomTestStringConvertible {
    let flavor: Flavor
    let container: Container
    let toppings: [Topping]

    var testDescription: String {
        "\(flavor) in a \(container)"
    }
}

@Test(arguments: [
    SoftServe(flavor: .vanilla, container: .cone, toppings: [.sprinkles]),
    SoftServe(flavor: .chocolate, container: .cone, toppings: [.sprinkles]),
    SoftServe(flavor: .pineapple, container: .cup, toppings: [.whippedCream])
])
func softServeFlavors(_ softServe: SoftServe) { /*...*/ }
```

### 0:18 - An enumeration with a computed property
```swift
extension IceCream {
    enum Flavor {
        case vanilla, chocolate, strawberry, mintChip, rockyRoad, pistachio

        var containsNuts: Bool {
            switch self {
            case .rockyRoad, .pistachio:
                return true
            default:
                return false
            }
        }
    }
}
```

### 0:19 - A test function for a specific case of an enumeration
```swift
import Testing

@Test func doesVanillaContainNuts() throws {
    try #require(!IceCream.Flavor.vanilla.containsNuts)
}
```

### 0:20 - Separate test functions for all cases of an enumeration
```swift
import Testing

@Test func doesVanillaContainNuts() throws {
    try #require(!IceCream.Flavor.vanilla.containsNuts)
}

@Test func doesChocolateContainNuts() throws {
    try #require(!IceCream.Flavor.chocolate.containsNuts)
}

@Test func doesStrawberryContainNuts() throws {
    try #require(!IceCream.Flavor.strawberry.containsNuts)
}

@Test func doesMintChipContainNuts() throws {
    try #require(!IceCream.Flavor.mintChip.containsNuts)
}

@Test func doesRockyRoadContainNuts() throws {
    try #require(!IceCream.Flavor.rockyRoad.containsNuts)
}
```

### 0:21 - Parameterizing a test with a for loop (not recommended)
```swift
import Testing

extension IceCream {
    enum Flavor {
        case vanilla, chocolate, strawberry, mintChip, rockyRoad, pistachio
    }
}

@Test
func doesNotContainNuts() throws {
    for flavor in [IceCream.Flavor.vanilla, .chocolate, .strawberry, .mintChip] {
        try #require(!flavor.containsNuts)
    }
}
```

### 0:22 - Swift testing parameterized tests
```swift
import Testing

extension IceCream {
    enum Flavor {
        case vanilla, chocolate, strawberry, mintChip, rockyRoad, pistachio
    }
}

@Test(arguments: [IceCream.Flavor.vanilla, .chocolate, .strawberry, .mintChip])
func doesNotContainNuts(flavor: IceCream.Flavor) throws {
    try #require(!flavor.containsNuts)
}
```

### 0:23 - 100% test coverage
```swift
import Testing

extension IceCream {
    enum Flavor {
        case vanilla, chocolate, strawberry, mintChip, rockyRoad, pistachio
    }
}

@Test(arguments: [IceCream.Flavor.vanilla, .chocolate, .strawberry, .mintChip])
func doesNotContainNuts(flavor: IceCream.Flavor) throws {
    try #require(!flavor.containsNuts)
}

@Test(arguments: [IceCream.Flavor.rockyRoad, .pistachio])
func containNuts(flavor: IceCream.Flavor) {
   #expect(flavor.containsNuts)
}
```

### 0:24 - A parameterized test with one argument
```swift
import Testing

enum Ingredient: CaseIterable {
    case rice, potato, lettuce, egg
}

@Test(arguments: Ingredient.allCases)
func cook(_ ingredient: Ingredient) async throws {
    #expect(ingredient.isFresh)
    let result = try cook(ingredient)
    try #require(result.isDelicious)
}
```

### 0:26 - Adding a second argument to a parameterized test
```swift
import Testing

enum Ingredient: CaseIterable {
    case rice, potato, lettuce, egg
}

enum Dish: CaseIterable {
    case onigiri, fries, salad, omelette
}

@Test(arguments: Ingredient.allCases, Dish.allCases)
func cook(_ ingredient: Ingredient, into dish: Dish) async throws {
    #expect(ingredient.isFresh)
    let result = try cook(ingredient)
    try #require(result.isDelicious)
    try #require(result == dish)
}
```

### 0:28 - Using zip() on arguments
```swift
import Testing

enum Ingredient: CaseIterable {
    case rice, potato, lettuce, egg
}

enum Dish: CaseIterable {
    case onigiri, fries, salad, omelette
}

@Test(arguments: zip(Ingredient.allCases, Dish.allCases))
func cook(_ ingredient: Ingredient, into dish: Dish) async throws {
    #expect(ingredient.isFresh)
    let result = try cook(ingredient)
    try #require(result.isDelicious)
    try #require(result == dish)
}
```

### 0:29 - Suites
```swift
@Suite("Various desserts") 
struct DessertTests {
    @Test func applePieCrustLayers() { /* ... */ }
    @Test func lavaCakeBakingTime() { /* ... */ }
    @Test func eggWaffleFlavors() { /* ... */ }
    @Test func cheesecakeBakingStrategy() { /* ... */ }
    @Test func mangoSagoToppings() { /* ... */ }
    @Test func bananaSplitMinimumScoop() { /* ... */ }
}
```

### 0:30 - Nested suites
```swift
import Testing

@Suite("Various desserts")
struct DessertTests {
    @Suite struct WarmDesserts {
        @Test func applePieCrustLayers() { /* ... */ }
        @Test func lavaCakeBakingTime() { /* ... */ }
        @Test func eggWaffleFlavors() { /* ... */ }
    }

    @Suite struct ColdDesserts {
        @Test func cheesecakeBakingStrategy() { /* ... */ }
        @Test func mangoSagoToppings() { /* ... */ }
        @Test func bananaSplitMinimumScoop() { /* ... */ }
    }
}
```

### 0:31 - Separate suites
```swift
@Suite struct DrinkTests {
    @Test func espressoExtractionTime() { /* ... */ }
    @Test func greenTeaBrewTime() { /* ... */ }
    @Test func mochaIngredientProportion() { /* ... */ }
}

@Suite struct DessertTests {
    @Test func espressoBrownieTexture() { /* ... */ }
    @Test func bungeoppangFilling() { /* ... */ }
    @Test func fruitMochiFlavors() { /* ... */ }
}
```

### 0:32 - Separate suites
```swift
@Suite struct DrinkTests {
    @Test func espressoExtractionTime() { /* ... */ }
    @Test func greenTeaBrewTime() { /* ... */ }
    @Test func mochaIngredientProportion() { /* ... */ }
}

@Suite struct DessertTests {
    @Test func espressoBrownieTexture() { /* ... */ }
    @Test func bungeoppangFilling() { /* ... */ }
    @Test func fruitMochiFlavors() { /* ... */ }
}
```

### 0:35 - Using a tag
```swift
import Testing 

extension Tag {
    @Tag static var caffeinated: Self
}

@Suite(.tags(.caffeinated)) struct DrinkTests {
    @Test func espressoExtractionTime() { /* ... */ }
    @Test func greenTeaBrewTime() { /* ... */ }
    @Test func mochaIngredientProportion() { /* ... */ }
}

@Suite struct DessertTests {
    @Test(.tags(.caffeinated)) func espressoBrownieTexture() { /* ... */ }
    @Test func bungeoppangFilling() { /* ... */ }
    @Test func fruitMochiFlavors() { /* ... */ }
}
```

### 0:36 - Declare and use a second tag
```swift
import Testing 

extension Tag {
    @Tag static var caffeinated: Self
    @Tag static var chocolatey: Self
}

@Suite(.tags(.caffeinated)) struct DrinkTests {
    @Test func espressoExtractionTime() { /* ... */ }
    @Test func greenTeaBrewTime() { /* ... */ }
    @Test(.tags(.chocolatey)) func mochaIngredientProportion() { /* ... */ }
}

@Suite struct DessertTests {
    @Test(.tags(.caffeinated, .chocolatey)) func espressoBrownieTexture() { /* ... */ }
    @Test func bungeoppangFilling() { /* ... */ }
    @Test func fruitMochiFlavors() { /* ... */ }
}
```

### 0:37 - Two tests with an unintended data dependency (not recommended)
```swift
import Testing

// ❌ This code is not concurrency-safe.

var cupcake: Cupcake? = nil

@Test func bakeCupcake() async {
    cupcake = await Cupcake.bake(toppedWith: .frosting)
    // ...
}

@Test func eatCupcake() async {
    await eat(cupcake!)
    // ...
}
```

### 0:38 - Serialized trait
```swift
import Testing

@Suite("Cupcake tests", .serialized)
struct CupcakeTests {
    var cupcake: Cupcake?

    @Test func mixingIngredients() { /* ... */ }
    @Test func baking() { /* ... */ }
    @Test func decorating() { /* ... */ }
    @Test func eating() { /* ... */ }
}
```
### 0:39 - Serialized trait with nested suites
```swift
import Testing

@Suite("Cupcake tests", .serialized)
struct CupcakeTests {
    var cupcake: Cupcake?

    @Suite("Mini birthday cupcake tests")
    struct MiniBirthdayCupcakeTests {
        // ...
    }

    @Test(arguments: [...]) func mixing(ingredient: Food) { /* ... */ }
    @Test func baking() { /* ... */ }
    @Test func decorating() { /* ... */ }
    @Test func eating() { /* ... */ }
}
```

### 0:40 - Using async/await in a test
```swift
import Testing

@Test func bakeCookies() async throws {
    let cookies = await Cookie.bake(count: 10)
    try await eat(cookies, with: .milk)
}
```

### 0:41 - Using a function with a completion handler in a test (not recommended)
```swift
import Testing

@Test func bakeCookies() async throws {
    let cookies = await Cookie.bake(count: 10)
    // ❌ This code will run after the test function returns.
    eat(cookies, with: .milk) { result, error in
        #expect(result != nil)
    }
}
```

### 0:42 - Replacing a completion handler with an asynchronous function call
```swift
import Testing

@Test func bakeCookies() async throws {
    let cookies = await Cookie.bake(count: 10)
    try await eat(cookies, with: .milk)
}
```

### 0:43 - Using withCheckedThrowingContinuation
```swift
import Testing

@Test func bakeCookies() async throws {
    let cookies = await Cookie.bake(count: 10)
    try await withCheckedThrowingContinuation { continuation in
        eat(cookies, with: .milk) { result, error in
            if let result {
                continuation.resume(returning: result)
            } else {
                continuation.resume(throwing: error)
            }
        }
    }
}
```

### 0:44 - Callback that invokes more than once (not recommended)
```swift
import Testing

@Test func bakeCookies() async throws {
    let cookies = await Cookie.bake(count: 10)
    // ❌ This code is not concurrency-safe.
    var cookiesEaten = 0
    try await eat(cookies, with: .milk) { cookie, crumbs in
        #expect(!crumbs.in(.milk))
        cookiesEaten += 1
    }
    #expect(cookiesEaten == 10)
}
```

### 0:45 - Confirmations on callbacks that invoke more than once
```swift
import Testing

@Test func bakeCookies() async throws {
    let cookies = await Cookie.bake(count: 10)
    try await confirmation("Ate cookies", expectedCount: 10) { ateCookie in
        try await eat(cookies, with: .milk) { cookie, crumbs in
            #expect(!crumbs.in(.milk))
            ateCookie()
        }
    }
}
```

### 0:46 - Confirmation that occurs 0 times
```swift
import Testing

@Test func bakeCookies() async throws {
    let cookies = await Cookie.bake(count: 10)
    try await confirmation("Ate cookies", expectedCount: 0) { ateCookie in
        try await eat(cookies, with: .milk) { cookie, crumbs in
            #expect(!crumbs.in(.milk))
            ateCookie()
        }
    }
}
```

## Summary

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2024/10195/?time=0)
- Swift Testing provides powerful features for writing expressive, organized, and efficient tests.

- 2:00 - [Writing Expressive Tests](https://developer.apple.com/videos/play/wwdc2024/10195/?time=120)
- Use expectations for validation, handle errors with expect throws, use required expectations for control flow, and document known issues.

- 5:30 - [Parameterized Testing](https://developer.apple.com/videos/play/wwdc2024/10195/?time=330)
- Test multiple inputs with single test functions, support multiple arguments, and use zip for paired inputs.

- 8:45 - [Organizing Tests with Suites and Tags](https://developer.apple.com/videos/play/wwdc2024/10195/?time=525)
- Use sub-suites for organization, tags for cross-suite relationships, and Xcode features for filtering and running tagged tests.

- 12:15 - [Running Tests in Parallel](https://developer.apple.com/videos/play/wwdc2024/10195/?time=735)
- Parallel testing reduces execution time, randomizes test order to expose dependencies, and supports async/await, continuations, and confirmations for concurrent testing.

- Swift Testing improves testing workflow with expressive APIs, parameterization, organization tools, and parallel execution capabilities.
