---
title: Load Test With Java
---

There are several ways to run a Java-based load test with BrowserUp.

1 - Running your plain Java code directly.

If you have a code library that makes HTTP/Websocket requests, you can call
your library directly to make requests on your behalf. For example, if you
have an internal client library for a REST api, you can use your own library to
generate load with BrowserUp while capturing your traffic.

The key advantages to doing this with BrowserUp are:
* Full traffic capture
* Full Reporting
* Automatic, global distribution of load, as desired
* Rampup, rampdown, and scaling

There are two approaches to creating this type of test:

* Use our standard-full image with a FAT Jar. A Fat JAR is compiled with all
dependencies built into the Jar. For this approach, your app will be run with our
built-in Java (OpenJDK 17)

* Use a custom image based on our browserup/standard-base. With a custom image, you are free to install whatever dependencies
you like into the image, as well as to change the Java version or tweak the image in other ways.


2 - Running a browser-based test in Selenium or other Java-driven tool.

* For Selenium, our standard image features a built-in chromium install, so you can
run browser-based load without worrying about containers.

* For other tools, you can install what you like in our custom image.

```bash
browserup generate java
```

Our browserup/standard-full image ships with JavaScript, Java, Ruby and Python pre-installed.

One advantage of using our pre-built image is that it can run other types of tests as well.

{% include browserup/config-supports-all-test-types.html %}

2 - Create a Custom Image based on browserup/standard-base, with your own dependencies installed. With this approach,
you won't necessarily need to create a FAT jar (although that's fine as well).

At present, the base for the custom image must be our browserup/standard-base image, which is built on Debian Bullseye Slim.

So simply start your Dockerfile with:


