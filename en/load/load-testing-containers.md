---
title: Load Testing Containers
---

<span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> utilizes two different container types for load testing.
These images, which is built off a Debian Bullseye base, have our traffic-capturing code built in and pre-configured.

## Standard Full

By default, if no image is specified in your [profile](profile-settings)
your code will be running our browserup/standard image.

This image comes with the following pre-installed:
* JavaScript (Node 19), Java (17), Python (3.11), Ruby (3.2)
* Ruby Selenium/Cuprite
* Node Playwright
* Python Playwright
* Chromium
* Curl
* Newman (for PostMan)

```bash
browserup/standard
```

## Custom Container

However, it may be that you'd like to run a custom container with your own
libraries, dependencies, and code. <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> supports custom OCI/Docker container-based
load testing. To set this up, you'll build your image on top of our [browserup/custom-base](https://hub.docker.com/r/browserup/custom-base)
image.

```bash
FROM browserup/custom-base:latest
```

There are a few simple rules to creating your load test:

This is important because:
* it makes your tests repeatable
* it lets the CPU have some CPU for filing your counter-data and other activitiies

1-Implement Think Time between each step
2-Implement a delay between iterations
3-[Verify](commands/verify) your profile's command causes traffic to occur
4-You will need to at least publish the AMD64 image. Also publishing an ARM64 build
is necessary if you or your org would like M1 mac support. You can build both flavors with
Docker [buildx](https://docs.docker.com/engine/reference/commandline/buildx_bake/).
5-Publish the image to a container registry that is accessable when your tests runs, for example, the Amazon
AWS registry.


## Overview - how it works:

- <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> takes the artifact_dir, if specified in the profile, and uploads it to our container
-
- If the image is not specified, it uses the default *standard* image, so the artifact_dir key __must__ be specified
  as otherwise, there's not going to be something to run for the test.

- With a custom image, the target of *command* might be baked into the image, so the *artifact_dir* key is not required to be specified for a profile
  This can be useful if you want to bake dependencies into your image, but alter scripts and not worry about docker rebuilds each time

