---
title: Load Testing With Ruby and Selenium
---

BrowserUp provides an easy way to load test using Ruby.

There are a couple ways to achieve this:

By default, BrowserUp packages Ruby 3.1 in it's custom-base image.
The custom-base comes with the following libraries pre-installed:

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
browserup generate ruby
```

This will create a simple working Ruby script, and a browserup.yaml file for you to define your
load test.

{% include browserup/config-supports-all-test-types.html %}





