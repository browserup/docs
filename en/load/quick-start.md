---
title: Quick Start
aside:
  toc: true
redirect_from:
  - /
---

The <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> Command Line Util
is the best way to get started quickly.

* It Creates test configs (browserup.load.yaml)
* It Launches (deploys) the test cluster (locally, or in Amazon AWS)
* It Starts and Stops tests
* And More

[<img src="{{ site.baseurl }}/assets/images/load/cli-util.png" width="500"/>]({{ site.baseurl }}/assets/images/load/cli-util.png)

Once we have the test cluster running, we can log into the cluster's web UI and
view results, create reports, administer users, etc. Let's get started!

[<img src="{{ site.baseurl }}/assets/images/load/screenshot.png" width="500"/>]({{ site.baseurl }}/assets/images/load/screenshot.png)

## Prerequisites

#### Local Cluster

* Docker Installed and Running (make sure it is current)
* 32 GB Ram or more Recommended

#### Cloud Cluster

* Amazon AWS account
* Local Mac Arm64 (M1/M2) or AMD64 or Linux to operate the <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> Command line Util
* Local Docker is not required for remote AWS execution, so CI/CD setup is simple

## Installation

```bash
npm install -g browserup-cli
```

## Creating your first test

1. Generate a basic test scaffold in the current working dir:

To see the list of test types with pre-canned examples:

```bash
browserup load init -h
```

Let's make a test with JS and Playwright and also PostMan:

```bash
browserup load init --playwright-js --postman
```
You should see the test files in your working directory as well as a
browserup.load.yaml. The browserup.load.yaml is your test config that defines what
will be run for this test. Run ```cat browserup.load.yaml``` to see what's in it.


2. Run your test!

```bash
browserup load start
```

The start command will run the `deploy` command if your cluster is not already running.
This will take a couple minutes to start, and launch your test.

When the start command finishes, you are running a test and collecting live stats!

Let's take a look!

### Inspecting the Test Run
<br>
Visit  [http://localhost:6730/](http://localhost:6730/)
<br>
<br>


*Login*

**username:** superadmin

**password:** changeme!
<br>
<br>
1. Click on Reports -> Summary in the left sidebar
2. Select the Run in the drop-down at the top and check the summary
3. Explore the other reports for this run
4. Stop the test


### Cloud Runs

This quick start focused on a local Docker run, but the process for a
remote run is the same, except you'll need [AWS credentials](configuring-aws-credentials)
defined, and to set in your browserup.load.yaml:
```yaml
cluster_type: aws
```
