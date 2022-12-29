---
title: Load Testing With PostMan
---

Include Installation

Running a load test of your Postman collections is a straightforward way to learn about the performance a web application.  This approach is especially useful for API testing.

Reusing your Postman collections as a load test provides a great way to load test without repeating yourself. Postman for API load testing it is dry capital. A important programming is don't repeat yourself. By reusing Postman API tests for load testing you avoid repeating yourself maintaining a second implementation of your routes and their payloads.

In order to run a load test using your Postman, first install BrowserUp per these instructions.

Next, run browserup init

This will generate browserup.yaml  file. This file is your configuration for a browser up load test.

Load testing with Postman is browser up uses PostMans <strong>newman</strong> test runner to run a PostMan Collection.

So create a collection of tests in Postman

It can use that collection as your "iterationentrypoint" The iteration entry point starting point it's launched time bizarre up virtual user either eights or runs through your items.

Test out your collection locally with newman to make sure it works as desired.

Next run  browserup provision. This will provision a local environment in your docker environment.

This will launch a local load test own Docker environment.

Next run

browserup start

Finally, log into the app and watch the reporting as your load test runs.

Repeat, as needed, with a large-scale load test in Amazon AWS to really put your app through it's paces.
