---
title: Quick Start
aside:
  toc: true
---

The starting point for working with BrowserUp is the command line util.
The BrowserUp Command Line Util:
* Creates test configs (BrowserUp Yaml)
* Launches (provision) the test cluster (locally, or in Amazon AWS)
* Starts and Stops tests
* And More

[<img src="{{ site.baseurl }}/assets/images/load/cli-util.png" width="500"/>](assets/images/load/cli-util.png)

Once the test cluster is running, you can log into the cluster's web UI and
view your results, create reports administer other users and more.

[<img src="{{ site.baseurl }}/assets/images/load/screenshot.png" width="500"/>](assets/images/load/screenshot.png)

## Prerequisites

#### Local Cluster

* Docker Installed and Running (make sure it is current)
* Mac Arm64 (M1/M2) or AMD64 or Linux (Windows *not* yet supported)
* 32 GB Ram or more Recommended

#### Cloud Cluster

* Amazon AWS account
* Local Mac Arm64 (M1/M2) or AMD64 or Linux to operate the BrowserUp Command line Util
* Local Docker is not required for remote (cloud) execution, so CI/CD setup is simple

## Installation

### Mac

```bash
brew install -vd browserup/browserup-cli/browserup-cli
```

### Linux

```bash
sudo curl https://github.com/browserup/browserup/archive/browserup-cli.tar.gz | tar xvf - -C /usr/local/bin/
```

## Creating your first test

1. Generate a basic test scaffold in the current working dir:

```bash
browserup generate ruby
```
Look in your working directory and you should see the test files,
as well as a browserup.yaml. The browserup.yaml is your test config that defines what
will be run for this test. Try ```cat browserup.yaml``` to see what's in it.

2. Run your test!

```bash
browserup start
```

The start command will run the `provision` command if your cluster is not already running.
This will take a couple minutes to start, and launch your test.

When the start command finishes, you are running a test and collecting live stats!

Let's take a look!

### Inspecting the Test
<br>
Visit  [http://localhost:6730/](http://localhost:6730/)
<br>
<br>

*Login*

**username:** superadmin

**password:** ChangeMe!
<br>
<br>
1. Click on Reports -> Summary in the left sidebar
2. Select the Run in the drop-down at the top and check the summary
3. Explore the other reports for this run
4. Stop the test


### Cloud Runs

This quick start focused on a local Docker run, but the process for a
remote run is the same, except you'll need [AWS credentials](configuring-aws-credentials)
defined, and to set in your config:
```yaml
cluster_type: aws
```
