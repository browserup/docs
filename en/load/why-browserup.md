---
title: Why BrowserUp?
---

<span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> offers a new approach to load testing, the first

See [our manifesto](manifesto.md) for more about _why_ we think this is the right approach to load testing.

## How is it different?

### <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> is a DRY (Don't Repeat Yourself) Load Testing Tool

It runs _your_ code, libraries, page objects, binaries, and PostMan definitions to drive load for load tests.
Why should you maintain two implementations of "how to talk to your app" when you can maintain one?

#### Don't Repeat Yourself!

<span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> uses the cloud to "scale the things that make requests." With traditional load testing,
you scale an optimized thin-client script that makes requests that are _kindof_ like the real ones,
or at least _kindof_ like how the real thing worked at the moment you hard-code it or captured it.

This approach forces you to maintain a second, shadow, implementation of your request-logic for every API or UI you want to load test.
Usually, these scripts are within the tool's language or UI or IDE. Because they are a snapshot, they go stale quickly.
And because they are a snapshot, they are usually created last, once the development-dust has settled.

<span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> uses assets you _already have_, so you can test earlier in the release cycle and shift
*your load testing left*.

* <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> stays out of your way--work in your repo, in your IDE, in your language of choice
* Built-in multi-region cloud run capability
* Your data stays in _your_ EC2 account

## Overview

* <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> *scales* _your_ code in our "magic" traffic-capturing containers. This means logic and condition-handling code just works
* <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> containerizes your _stuff_ (automatically) and scale containers running your code to generate load
* <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> captures the traffic and provides rich reporting

You might be thinking "what scripting language do I use to create the script?" The answer is: anything you like that drives traffic!

Java and Selenium? <i class="fas fa-check" style="color: green; padding-left: 15px;"></i>

Playwright? <i class="fas fa-check" style="color: green; padding-left: 15px;"></i>

C# with Selenium? <i class="fas fa-check" style="color: green; padding-left: 15px;"></i>

Your PostMan script? <i class="fas fa-check" style="color: green; padding-left: 15px;"></i>

Python script? <i class="fas fa-check" style="color: green; padding-left: 15px;"></i>

Ruby Script? <i class="fas fa-check" style="color: green; padding-left: 15px;"></i>

Some binary or command-line app you compiled yourself? <i class="fas fa-check" style="color: green; padding-left: 15px;"></i>

Any other thing, yes, probably!

#### ...So do I have to worry about containers now?

Probably not! <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> has a standard container with Java, Javascript, Dotnet, Ruby, Python, Bash, Postman
and Curl and some other things ready to go. It has Chromium installed and ready for each of these languages.
This image is the browserup/standard image and you get it, plus your assets (code under the test dir) by default.
It should just work, and you won't need to think about containers.

If your needs are off the beaten path, the browserup/custom-base container option gives you an escape valve
where you can install more or less *anything* you want to drive load.
