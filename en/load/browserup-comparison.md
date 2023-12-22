---
title: BrowserUp vs. Other Tools
---

## Comparison with other tools:

#### For browser-based scenarios:	with loadNinja, loadster, loadero

You maintain a visual "script" inside a Saas app you log into. After functional testing is done, you later log into this second app to create/update your load test with each change set.

#### with K6

You'll use the "K6" browser https://k6.io/blog/get-started-with-xk6-browser/ and code in JavaScript.

 #### with JMeter, LoadRunner or other HTTP based tools

You'll typically be "recording" a snapshot of your browser, then "correlating" the session ID's and adding the websocket requests on by hand. This usually takes a whole sprint to get set up, from surveys I've run. Because there's no actual browser, any small changes mean your test is stale, and wrong to some extent. For example, add a footer to your website? Too bad, your script was stale and didn't capture that request.


## with **BrowserUp**

Use your acceptance test, or your own "page objects" libraries. These are typically ready well before
		load tests, so you can shift your load testing left!

##  For API tests:

#### with JMeter	/ LoadRunner
    You maintain a set of scripts in these other tools that tell Jmeter or LoadRunner what API calls to make.

### with BrowserUp, your load test can be:
  -Your own REST client library making the calls
  -Your own PostMan collection making the calls

You just keep the same stuff you are using up-to-date, and your load test maintenance is free.

