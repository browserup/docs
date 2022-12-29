---
title: Load Test With Selenium
---
BrowserUp runs real browser tests using *your* selenium scripts.

While there are other tools that can run Selenium tests,
BrowserUp is different in that it lets you use *your* code.

What do we mean by "your code"?

* Code in your IDE
* Keep your code in your repo
* We don't take your code, run it, and extract an HTTP script. We *actually* run your code during the test.
* You can use your own libraries and extensions.
* Because we run your code, you are free to import your own libraries, gems, JARs
* If you build a custom image, you can use any language you can install on Debian

The easiest way to get started with a selenium test is to generate a scaffold for the
language you would like to use.

There are two main ways to use Selenium and Java in BrowserUp

1 - Using our standard image, and built-in Java with a fat JAR.

```bash
browserup generate java
```

Our browserup/standard-base image ships with JavaScript, Java, Ruby and Python pre-installed.

One advantage of using our pre-built image is that it can run other types of tests as well.

{% include browserup/config-supports-all-test-types.html %}

2 - Create a Custom Image based on ours, with your own dependencies installed. With this approach,
you won't necessarily need to create a FAT jar (although that's fine as well).

At present, the base for the custom image must be our standard-base image, which is built on Debian Bullseye Slim.
