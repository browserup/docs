---
title: Load Testing With Ruby and Selenium
---

<span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> provides an easy way to load test using Ruby.

You can run Ruby load tests with any of the following:
* Selenium/Capybara
* Cuprite
* Typhoeus
* Your own REST client code

To see a working example for plain ruby:

```bash
browserup load init --ruby
```

Or to see a browser-based example with Capybara/Selenium:

```bash
browserup load init --selenium-ruby
```

By default, <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> packages Ruby 3.2 in it's standard image.
The browser/standard image comes with the following Ruby gems pre-installed:

* rspec
* cucumber
* faraday
* capybara
* capybara-selenium
* cuprite
* typhoeus
* selenium-webdriver
* webdrivers

Take a look at our [Quick Start](quick-start.html) for more information on how to run your load test.

This will create a simple working Ruby script, and a browserup.load.yaml file for you to define your
load test.

{% include browserup/config-supports-all-test-types.html %}





