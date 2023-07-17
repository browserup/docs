---
title: Command-Line Test Creation and Execution Flow
---

<span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> launches and runs load tests from the command line.

The key ingredients to a load test are:

* A folder which has some sort of thing that can drive load in it. This is called the *artifact_dir* and in
that folder, the item which makes requests.

* A BrowserUp Config yaml, which defines the test.
The config consists of:
  - An array of profiles (things to execute)
  - Ramp settings

