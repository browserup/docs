---
title: Load Test With Selenium
---
<span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> runs real-browser tests using **_your_** selenium scripts.

While there are other tools that can run Selenium tests,
<span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> is different in that it lets you use *your* codebase.

What do we mean by "your code"?

* Code in your IDE
* Keep your code in your repo
* <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> doesn't take your code, run it, and extract an HTTP script. <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> *actually* runs your code during the test.
* You can use your own libraries and extensions.
* Because we run your code, you are free to import your own libraries, gems, JARs
* If you build a custom image, you can use any language you can install on Debian Bookworm

The easiest way to get started with a selenium test is to generate a scaffold for the
language you would like to use.

There are two main ways to use Selenium and Java in <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span>

1 - Using our standard image, and built-in Java with a fat JAR.

```bash
browserup load init --java
```

Our browserup/standard image ships with JavaScript, Java, Ruby and Python pre-installed.

One advantage of using our pre-built image is that it can run other types of tests as well.

{% include browserup/config-supports-all-test-types.html %}

2 - Create a Custom Image based on ours, with your own dependencies installed. With this approach,
you won't necessarily need to create a FAT jar (although that's fine as well).

At present, the base for the custom image must be our custom-base image, which is built on Debian Bookworm.
