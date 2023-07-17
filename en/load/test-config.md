---
title: The BrowserUp Config Yaml Format
---

In the command-line flow, <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> load tests are defined in a YAML config file.

```yaml
scenario:
  name: Newman
  total_users: 2
  profiles:
    - name: Cart API
      think_time: 10s
      allocation: 50%
      command: newman run postman_collections/cart-api.json
    - name: Refund API
      think_time: 10s
      allocation: 50%
      command: newman run postman_collections/refund-api.json
  stop_after: 15m
  ramp:
    - ramp_to: 100%
      over: 1m
settings:
  cluster_type: local
```

The Important keys:

scenario:
: A scenario represents the definition of work that will happen during a test run.


: profiles:
  : This top-level key holds an array of profiles.  Each profile represents an item that will be
  : executed during the test.

    : - profile
      : Each (profile)[profile-settings] is an item that is executed during the test. Each profile must have a *name* key.
      : The name is used to associate metrics captured for this profile with data in our reports.

: stages:
The stages define a duration, and type of stage for the load test.



images:  [optional]
: By default, your code is wrapped into a docker container running our standard image.
: However, if you specify an image, you can use a custom image, based off our image, into which
: you have pre-installed any of your own software that will be utilized for the load test.

To specify a custom image, you need to create the image using our browserup/custom-base image as the FROM,
and ensure it has been uploaded to a registry with builds for each architecture where it will run.
This means, at minimum, you need to ensure the docker image is published in the AMD64 architecture
which is used for linux cloud machines. For local docker runs, if you use mac, you should also build
and push an Arm64 image as well.

Images are referenced by *name* in <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span>, so if you specify a custom image in a profile, it should
reference the name in the browserup system.


## Creating a test config


When creating a [test config](/en/load/test-config) for your load test, the
first step is to define [profile settings](/en/load/profile-settings) for each
thing you'd like to run during your test.

Ideally, you'd like to know that the *command*, when run with the assets in your artict_dir
inside our container will
1-Run properly
2-Cause traffic to occur

The <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> Command line utility's *verify* command lets you do this.

To verify things are working properly, from within the artifact_dir for your test, at the command line, run a command that
you'd like execute succesfully within your container.

For example, if "python3 selenium-test.py" is the command we'd like to try out in our
container, we can run:

```bash
browserup verify -v "python3 selenium-test.py" --artifact-dir=.
```

With the -v *verbose* argument, the output of the command will be captured and printed
as well as the full HAR file (traffic snapshot) that is captured.

The HAR (HTTP Archive) file is a format used by chrome and other utilities to hold
traffic captures. Internally, it is how <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> holds traffic that will be used
for metrics.

Without the -v, the verify command will still check for traffic, however it
will not print the HAR and output.

The output of the command looks like this:

[<img src="{{ site.baseurl }}/assets/images/load/verify-command.png" width="400"/>]({{ site.baseurl }}/assets/images/load/verify-command.png)

Once you have succesfully verified your command with your artifact_dir, you can configure a [profile settings](/en/load/profile-settings)
in the scenario within your [test config](/en/load/test-config)



