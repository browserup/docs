---
title: Why BrowserUp?
---

BrowserUp offers a fresh approach to load testing.

See [our manifesto](manifesto.md) for more about _why_ we think this is the right approach to load testing.

## How is it different?

#### BrowserUp is a DRY (Don't Repeat Yourself) Load Testing Tool

BrowserUp uses your code, libraries, page objects, binaries, and PostMan definitions for load tests.
Why maintain two implementations of "how to talk to your app" when you can maintain one?

_Don't Repeat Yourself!_ We use the cloud to "scale the thing that makes the requests." With traditional load testing,
you scale a script that makes requests that are _kinda_ like the real ones,
or at least _kinda_ like how the real thing worked at the moment you hard-code it.

Those tools force you to maintain a second implementation of your request-logic for API's, or page-walking logic for
UI tests within their language, UI or IDE.

Our approach uses assets you _already have_, so you can test earlier in the release cycle and shift
*your load testing left*.

* BrowserUp stays out of your way--work in your repo, in your IDE, in your language of choice
* Built-in multi-region cloud run capability
* Your data stays in _your_ EC2 account

## Overview

* BrowserUp *runs* _your_ code in our "magic" traffic-capturing containers. This means logic and condition-handling code just works
* BrowserUp containerizes your _stuff_ (automatically) and scale containers running your code to generate load
* BrowserUp captures the traffic and provides rich reporting

You might be thinking "what scripting language do I use to create the script?" The answer is: anything you like that drives traffic!

Java and Selenium? <i class="fas fa-check" style="color: green; padding-left: 15px;"></i>

Playwright? <i class="fas fa-check" style="color: green; padding-left: 15px;"></i>

Your PostMan script? <i class="fas fa-check" style="color: green; padding-left: 15px;"></i>

Python script? <i class="fas fa-check" style="color: green; padding-left: 15px;"></i>

Ruby Script? <i class="fas fa-check" style="color: green; padding-left: 15px;"></i>

Some binary or command-line app you compiled yourself? <i class="fas fa-check" style="color: green; padding-left: 15px;"></i>

Any other thing, yes, probably!

#### ...So do I have to worry about containers now?

Probably not! BrowserUp has a standard container with Java, Javascript, Ruby, Python, Bash, Postman
and Curl and some other things ready to go. It has Chromium installed and ready for each of these languages. This image
is the browserup/standard image and you get it, plus your assets by default.
It should just work, and you won't need to consider about containers.

If your needs are off the beaten path, the browserup/custom-base container option gives you an escape valve
where you can install more or less *anything* you want to drive load.
