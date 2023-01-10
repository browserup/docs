---
title: verify
---

When a BrowserUp profile is run, it runs inside a container--our
custom-base, or a custom container based on our images.

The *command* itself is a bash command that executes _something_, such as
a script, a JAR, a binary, compiled app, that you expect will create traffic.

The verify command lets you try out your command, and will pass if it causes
traffic to be detected.

Pass the -v (verbose) argument if you'd like to see the command output, as well as
the HAR (traffic capture).

For example:

```bash
verify -v "python3 selenium-test.py" --artifact-dir=.
```
Produces:

```bash
=================================
BrowserUp Command Line Interface
=================================

DEBUG: Verbose logging enabled
INFO: Waiting for proxy to be available...
INFO: Proxy is available
-- Stdout --
 % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
Dload  Upload   Total   Spent    Left  Speed
100  3413  100  3413    0     0  3333k      0 --:--:-- --:--:-- --:--:-- 3333k
------------
Captured HAR:
{
    "log" => {
        "version" => "1.1",
        "creator" => {
               "name" => "BrowserUp Proxy",
            "version" => "0.1",
            "comment" => ""
        },
        "entries" => [
            [0] {
                           "pageref" => "Default",
                   "startedDateTime" => "2023-12-23T16:30:23.951878+00:00",
                              "time" => 41,
                           "request" => {
                         "method" => "GET",
                            "url" => "http://example.com/",
                    "httpVersion" => "HTTP/1.1",
                        "cookies" => [],
                        "headers" => [
                        [0] {
                             "name" => "Host",
                            "value" => "example.com"
                        },
                        ...
```
