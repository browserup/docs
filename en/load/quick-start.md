---
title: Quick Start
aside:
  toc: true
redirect_from:
  - /
---

The <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> Command Line Interface (CLI)
is how we:

* Create test configs (browserup.load.yaml)
* Launch (deploy) the test cluster in local docker, or Amazon AWS
* Start and Stop tests, and more

Once the test cluster is running, we view results, create reports, administer users, etc. in the web UI.

[<img src="{{ site.baseurl }}/assets/images/load/screenshot.png" width="500"/>]({{ site.baseurl }}/assets/images/load/screenshot.png)

Let's get started!

## Prerequisites

The CLI is installed via [NPM](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm).

If Javascript is not your thing, don't worry, you don't need to know Javascript! NPM is just
how we install the CLI.

### Requirements:
Local Cluster:
* Docker Installed and Running (make sure it is current)
* 32 GB Ram or more Recommended

Cloud Cluster:
* Amazon AWS account
* Windows, Mac or Linux to operate the <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> Command line Util
* Local Docker is not required for remote AWS execution, so CI/CD setup can remain simple

## Installation

```bash
npm install -g browserup
```

## Creating your first test

1. Generate a basic test scaffold:

```bash
mkdir demo
cd demo
```

To see the list of test types with pre-canned examples, let's call init with -h, for help:

```bash
browserup load init -h
```

Let's make a test with JS and Playwright and also PostMan:

```bash
browserup load init --playwright-js --postman
```

You should see the test files in your working directory as well as a
browserup.load.yaml. The browserup.load.yaml is your test config--it defines what
will be run for this test. Run ```cat browserup.load.yaml``` to see what's in it.

2. Run your test!

```bash
browserup load start -d
```

The start command, when passed -d will run the `deploy` command if your cluster is not already running.
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
4. Stop the test (-d will stop the test and the cluster)

```bash
browserup load stop -d
```

That's it! You've run your first test!

### Cloud Runs

This quick start focused on a local Docker run, but the process for a
remote run is the same, except you'll need [AWS credentials](configuring-aws-credentials)
defined, and to set in your browserup.load.yaml:
```yaml
cluster_type: aws
```


#### Issues

If you find any issues, Report them [here](https://github.com/browserup/browserup-cli/issues)

