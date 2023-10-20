---
title: Quick Start
aside:
  toc: true
redirect_from:
  - /
---

The <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> Command Line Interface (CLI)
is how you:

* Create test configs (browserup.load.yaml)
* Launch (deploy) the test cluster in local docker, or Amazon AWS
* Start and Stop tests, and more

Once the test cluster runs, you can view results, create reports, and administer users all via the web UI.

[<img src="{{ site.baseurl }}/assets/images/load/screenshot.png" width="500"/>]({{ site.baseurl }}/assets/images/load/screenshot.png)

We'll walk through a quick start to get you up and running with a test in minutes. This is a local (Docker) test,
but the process is the same for a remote test, except you'll need [AWS credentials](configuring-aws-credentials)

Let's go!

## Prerequisites

The CLI is installed via [NPM](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm).

If Javascript is not your thing, don’t worry, you don’t need to know Javascript!
NPM is just how you install the CLI.

### Requirements:

Local Installation (Docker):
* Docker installed and running (current version)
* 32 GB RAM or more (recommended)

Cloud Cluster:
* Amazon AWS account
* Windows, Mac or Linux to operate the <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> CLI
* Local Docker is not required for remote AWS execution, which keeps CI/CD setup simple

## Installation

```bash
npm install -g browserup
```

### Install the local docker images

```bash
browserup cluster install
```

This will download the docker images locally into Docker.
Grab a coffee! This will take several minutes, but you won't need to do it again.


## Creating your First Test

1. Generate a basic test scaffold:

```bash
mkdir demo
cd demo
```

To see a list of test examples, let’s call init with -h, for help:

```bash
browserup load init -h
```

Let's make a test with Playwright using JavaScript and PostMan:

```bash
browserup load init --playwright-js --postman
```

You should see the test files in your working directory as well as a browserup.load.yaml, which is the test config.
The browserup.load.yaml config file defines what will be run for this test.

Run ```cat browserup.load.yaml``` to see what's in it, or open it in your favorite editor.

2. Run your test!

```bash
browserup load start -d
```

The start command, when passed -d will run the `deploy` command if your cluster is not already running.
This will take a couple minutes to start, and launch your test.

When the start command finishes, you are running a test and collecting live stats. Let's take a look!

### Inspecting the Test Run
<br>
Visit  [http://localhost:23000/](http://localhost:23000/)
<br>
<br>

*Login*

**username:** superadmin

**password:** changeme!
<br>
<br>
1. Click on **Reports** -> **Summary** in the left sidebar menu
2. Select the Run in the drop-down at the top and view the **Summary Report**
3. Explore the other reports for this run
4. Stop the test (pass -d to also destroy the cluster)

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


#### Issues?

If you find any issues, report them [here](https://github.com/browserup/browserup-cli/issues)

