---
title: Why BrowserUp?
---

BrowserUp offers a fresh approach to load testing.

See [our manifesto](manifesto.md) for more about _why_ we think this is the right approach to load testing.

## How is it different?

#### BrowserUp is a DRY (Don't Repeat Yourself) load testing tool

BrowserUp lets you use your own code, libraries, page objects, binaries, and PostMan definitions for load tests.
Why maintain two implementations of "how to talk to your app" when you can maintain one?
Don't Repeat Yourself!

Other tools force you to maintain a second implementation of your request-logic for API's, or page-walking logic for
UI tests within their language, UI or IDE.

Our approach uses assets you already have so you can test earlier in the release cycle. This shifts
your load testing left.

* BrowserUp stays out of your way--work in your repo, in your IDE, in your language of choice
* Built-in multi-region cloud run capability
* Your data stays in your own EC2 account

## Overview

* Other tools use your code to generate a script. We *run* _your_ code in our magic traffic-capturing containers. This means
real logic and condition-handling code just works
* We containerize your __stuff__ (automatically) and scale containers running your code to generate load
* We capture the traffic and provide rich reporting

You might be thinking "what scripting language do I use to create the script?"
The answer is:  anything you like that drives traffic!

Java and Selenium? check
Playwright? check
Your PostMan script?
Python script? check
Ruby Script? check
Some binary you compiled yourself? check
Brainf**ck? check (probably, but in a customer container)--really, probably don't do this
Any other thing, yes, probably!

...So do I have to worry about containers now?

Probably not! We have a standard container with Java, Javascript, Ruby, Python, Bash, Postman
and Curl and some other things ready to go. It has Chromium installed and ready for each of these languages. We call
this our browserup/standard-base image and you get it, plus your assets by default
and there's no special container setup. It just works!

If your needs are off the beaten path, the custom container option gives you an escape valve
where you can install anything you want to drive load.
