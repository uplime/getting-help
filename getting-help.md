Troubleshooting (uncovering the source of an issue) is a learned art, and it can
be difficult to know exactly where to start, or even which details are relevant.
The goal of this guide is to demystify the process, and make it easier for you
and the community as a whole to fix your problem.

## A Hard Truth

Sometimes, your question may not get answered or your problem may not get
solved. This community has many knowledgable people (both regarding AWS and
outside of it), and ideally, would be able to provide solutions to every post.
However, for any number of reasons, the possibility still exists. Remember, this
is a community-run server and everybody here is a volunteer, including AWS
employees. 

## Common Troubleshooting Methods

It isn't always possible to try every method listed below, but some combination
of them is always a good starting point. Get some glue and give them a whirl!

### Searching the Web

While it is entirely possible that your problem is unique and the first of its
kind, AWS is a popular platform. Odds are that somebody has had the same issue
before. Try adapting any of these into a search engine query:

  - Any error or warning you may be getting. Try to omit things like file names
    and line numbers if they are specific to your project.

  - The keywords of the goal you are currently trying to achieve. For example,
    if you are trying to host a static site and are stuck on a problem with AWS
    S3, you might search "AWS S3 static website hosting". Perhaps somebody
    needed to do something similar, and found a way to do it that bypasses your
    problem entirely. Don't be discouraged if the first search turns up nothing.
    Sometimes it can take [multiple refined searches][multi-searches].

  - The keywords of the  overall project you are implementing. Continuing with
    the above static hosting example, you might search "How to host a static
    site on AWS". While this is often less specific than querying for your
    current goal, there is always the chance that it can return something that
    provides the insight you are looking for.

### Reviewing Documentation

Software, hardware, and networking can be incredibly complex at times. [Nobody can remember everything](https://twitter.com/ChrisShaver64/status/1072516363258880005), and double-checking that your understanding of the service, feature, library, etc. is correct never hurts. Worst case scenario, you're in the same position you were before you checked.

### Making a Testcase

The exact requirements for a testcase can vary from topic to topic, but the core of any testcase is the minimal amount of code, configuration, steps, and/or input required to reproduce the behavior you're seeing. Testcases are arguably the most useful tool in the troubleshooting shed. With a well-made testcase, it can make the cause and solution a lot more obvious to anybody looking at it (including you).

### Rolling Back Changes

If the problem started occuring close to or immediately after a relevant change was made, try rolling it back if possible. For example, perhaps a botched or incompatible system update was installed, causing your service to crash. While coincidences can and do happen, there is a strong likelihood that the change is relevant in some way.

### Taking a Break

The longer you stare at a problem, the easier it is to miss something, and to start going down avenues that don't lead to a solution to your problem. Unfortunately, this can happen to anybody. Coming back with fresh eyes can give you the lightbulb you need to figure out what the answer is.

### Rubber Duck Debugging

A legitimate troubleshooting technique where one justifies their code, configuration, steps, etc. to an inanimate object (traditionally a rubber duck) out loud. Reading or hearing information doesn't always mean that our minds have actually processed it. Repeating it out loud gives you the opportunity to think about what is actually happening, and can lead to a solution. An inanimate object is not required, but makes you look less insane if somebody asks.

## Getting Responses

Sometimes, none of the above methods work. This could be for any number of reasons, but either way, you've arrived at a point where you need the help of the community. There isn't anything wrong with that; this community encourages asking and loves answering questions. However, the more thought out and well written your question is, the more likely it is to get a response.

### Context is Key

Usually, nobody is going to have more context on your problem than you. Explaining why or how you're doing something a certain way may not always appear relevant, but more often than not gives those helping you the understanding they need to see the solution that is appropriate for your problem.

### Details Matter

When making your post, the more information you provide, the easier it is going to be for somebody to provide an answer or a solution. There is such a thing as too many details, which can cause problems on its own, however is still better than not providing enough details. This means including in your post any and all errors, log entries, and exact issues you're experiencing. If you feel that it is too many details, then that is a good sign that you should probably make a testcase. However, sometimes it may not even be obvious what details are relevant until after you've gotten a solution or answer. If you're at all unsure if it should be included or not, it is generally a better idea to include it and not need it. 

## Decoding Responses

As stated above, this is complex stuff. Nobody expects you to know everything right off the bat (or ever). If a response from a volunteer isn't totally clear, here are some things to try:

  - Plugging the keywords of the response into a search engine.

  - Asking for clarification. Assuming and guessing can do more harm than good, and the importance of context goes both ways.

  - If all else fails, you may even want to try re-phrasing your question.

## What To Do Afterwards

If you've reached this point of the process, then congratulations, your problem has been solved! As you've just experienced, this can be a frustrating process at times. Since you will likely have the most details on the end result (or even the solution itself), here are some things you can do to make this less frustrating for whoever runs into the problem next:

  - Post your result. Knowing that the posted solution actually fixes the problem or answers the question helps sort out the relevant comments and details.

  - If you came to the solution yourself, post the solution as well. [Knowing a solution to your problem exists, but not being able to access it](https://xkcd.com/979/) can just add to the frustration of trying to solve a problem.

  - Don't delete the post. Nobody wins if you do this, including future you if you ever run into this problem again.

## Reading Material

  - [How To Ask Questions The Smart Way](https://web.archive.org/web/20221015041850/http://www.catb.org/~esr/faqs/smart-questions.html)

  - [AWS Lambda > Operator Guide > Debugging](https://docs.aws.amazon.com/lambda/latest/operatorguide/debugging-ops.html)

  - [Github Actions / Monitor & troubleshoot / Enable debug logging](https://docs.github.com/en/actions/monitoring-and-troubleshooting-workflows/enabling-debug-logging)

  - [Debugging Terraform](https://www.terraform.io/internals/debugging)

[multi-searches]: https://support.google.com/websearch/answer/2466433
