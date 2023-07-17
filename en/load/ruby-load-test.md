---
title: Load Testing With Ruby and Selenium
---

<span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> provides an easy way to load test using Ruby.

There are a couple ways to achieve this:

By default, <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> packages Ruby 3.2 in it's standard image.
The standard image comes with the following libraries pre-installed:

* rspec
* cucumber
* faraday
* capybara
* capybara-selenium
* cuprite
* typhoeus
* selenium-webdriver
* webdrivers

To get started, generate a ruby scaffold

```bash
browserup load init --ruby
```

This will create a simple working Ruby script, and a browserup.load.yaml file for you to define your
load test.

{% include browserup/config-supports-all-test-types.html %}





