---
title: Load Testing Websockets
---

Load testing websockets using <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> can be done in a few ways.

## Browser Automation

For a web application, the simplest way to test websockets is to automate a browser that
visits the pages that cause the websocket traffic. Out of the box, we support Playwright, Selenium,
and others.

This approach offers a number of advantages:
* It behaves as a real browser does
* When the websocket behavior is changed, the script won't need to be updated if the page flow is the same
* You can re-use your Page Objects and your own source code that you already maintain to drive the test
* Typically, the functional automation is ready earlier in the development cycle,  letting you release sooner


## Other Supported Approaches

* Make websocket requests programmatically with a language in our standard image: Javascript, C#, Ruby, Python, Java, etc.
* Run PostMan requests, which now support websockets, using our standard image
* Create a custom docker image based on ours but with your language and libraries of choice driving the websocket requests and use _that_
