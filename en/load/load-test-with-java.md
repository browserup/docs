---
title: Load Test With Java
---

There are several ways to run a Java-based load test with <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span>.

Our browserup/standard image ships with Java pre-installed.


1 - Running your plain Java code directly.

If you have a code library that makes HTTP/Websocket requests, you can call
your library directly to make requests on your behalf. For example, if you
have an internal client library for a REST api, you can use your own library to
generate load with <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> while capturing your traffic.

The key advantages to doing this with <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> are:
* Full traffic capture
* Full Reporting
* Automatic, global distribution of load, as desired
* Rampup, rampdown, and scaling

There are two approaches to creating this type of test:

* Use our standard image with a FAT Jar. A Fat JAR is compiled with all
dependencies built into the Jar. For this approach, your app will be run with our
built-in Java (OpenJDK 17)

* Use a custom image based on our browserup/custom-base. With a custom image, you are free to install whatever dependencies
you like into the image, as well as to change the Java version or tweak the image in other ways.

```bash
browserup load init --java
```

2 - Running a browser-based test in Selenium or other Java-driven tool.

* For Selenium, our standard image features a built-in chromium install, so you can
run browser-based load without worrying about containers.

To create an example selenium-based test, run:

```bash
browserup load init --selenium-java
```

The generated test will need to be compiled. Within the generated project folder, view the selenium-java-README.md for instructions on how to compile and run your test,

3 - Create a Custom Image based on browserup/custom-base, with your own dependencies installed. With this approach,
you won't necessarily need to create a FAT jar (although that's fine as well).

At present, the base for the custom image must be our browserup/custom-base image, which is built on Debian Bookworm Slim.

So simply start your Dockerfile with:
browserup/custom-base

Then install your dependencies as needed.

