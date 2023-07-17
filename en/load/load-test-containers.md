---
title: Load Testing With Containers
---

<span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> allows you to create a custom container in which your test will run.

For <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> to work with your container, it needs to be based off our custom-base image.

## Testing in local Docker, with CLI

The <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> Command Line utility allows you to run and test images for compatibility with
browserup.


## Platforms

Docker's images are architecture-specific, so to build a custom image, it should typically
be built for:

* ARM64 (For local Mac M1/M2 support, if desired)
* AMD64 (For cloud runs or local linux docker-based runs)

Buildkit and other tools provide cross-platform build setup.
