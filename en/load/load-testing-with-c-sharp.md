---
title: Load Testing With C#
---

Load testing using DotNet <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> can be done in a few ways.

* You can use a REST API Client to drive test requests
* You can use Selenium with C# to drive the browser
* You can use C# with a websocket client to drive websocket requests
* You can use any combination of the above, along with any other language we support

# Load Testing with C# and Real Browsers

For a web application, the simplest way to test DotNet is to automate a browser that
visits the pages that cause the websocket traffic. Out of the box, we support Playwright, Selenium,
and others.

This approach offers a number of advantages:
* It behaves as a real browser does
* When the websocket behavior is changed, the script won't need to be updated if the page flow is the same
* You can re-use your Page Objects and your own source code that you already maintain to drive the test
* Typically, the functional automation is ready earlier in the development cycle,  letting you release sooner

To use our example, run:
```bash
browserup load init --selenium-csharp
```

Then, build the project:
```bash
dotnet build --configuration Release
```

Then, run the test:
```bash
dotnet
```


# Load testing a REST API with C#

Our standard image supports C# load tests using a REST API client. To generate an example, use the
init command as follows:

```bash
browserup load init --csharp
```

Some points to keep in mind:
* Any language that can run in a Docker container can be used to drive the load test.
* There is nothing special about our examples--you can use your own code and libraries to drive the load test.
In fact, we encourage it! DRY load tests are easier to maintain and more reliable.

