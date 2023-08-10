---
title: Browser Core Web Vitals
---

#### Getting Browser Core Web Vitals During Load Tests

BrowserUp's instrumented container approach allows for the easy collection of Core Vitals data from the browser.
This data can be used to measure the performance of your application and to identify opportunities for improvement.

For any BrowserUp real-browser load test (Playwright, Selenium/Webdriver, Capybara), Core Vitals data is collected automatically.
Note that for non-browser tests, Core Vitals data will not be collected.

The collection of core vitals occurs **without** any modification to your code or your test scripts.
Also, the collection does not require the use of any special libraries or frameworks, or
customized browsers.


### What are Core Web Vitals?

[Core Web Vitals ](https://developers.google.com/search/docs/appearance/core-web-vitals)are a set of metrics that Google uses to measure the user experience of a web page in the browser.
Core vitals help understand the front-end user experience of a web page.

For performance testing to be valuable, it is critical to encompass both the front-end performance
and back-end performance. BrowserUp's approach to load testing provides the ability to measure both.

From Google's description of Core Web Vitals:

**Largest Contentful Paint (LCP)**

Measures loading performance. To provide a good user experience, strive to have LCP occur within the first 2.5 seconds of the page starting to load.

**First Input Delay (FID)**

Measures interactivity. To provide a good user experience, strive to have an FID of less than 100 milliseconds.
Starting March 2024, Interaction to Next Paint (INP) will replace FID as a Core Web Vital.

**Cumulative Layout Shift (CLS)**

Measures visual stability. To provide a good user experience, strive to have a CLS score of less than 0.1.


### Where can I see Core Web Vitals?

In the BrowserUp web UI, core vitals are found on the *Browser Report*,
which is available in the *Reports Menu* in the left-hand sidebar.

You can also build and save custom reports using core vitals data in the BrowserUp Reports Studio.

Note: First Input Delay will only appear if there is input to a page.
