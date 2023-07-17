---
title: Load Testing Internet Of Things Software
---

The <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> approach to load testing enables any "thing that makes requests" to
become the engine of a load test.  That includes arbitrary binaries that make requests.
Our tool will containerize, scale, and execute any artifact you can provide.

Currently, the only real restriction is that the binary must work on our Debian Bullseye image.
In the future, we plan to make some changes that will remove this restriction.

There are two approaches to testing IoT software with <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span>:

1 - If the software is written in a language that we **support**, you can use our standard image to run your test.

2 - If the software is written in a language that our standard image **_doesn't support_**,
you can create a custom image based on our browserup/custom-base image with your software dependencies installed.

