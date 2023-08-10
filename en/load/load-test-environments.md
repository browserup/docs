---
title: Load Testing in Local Docker Or AWS
---

BrowserUp offers two styles of load tests:
* Local load tests run in Docker on your local machine.
* Cloud load tests run in Amazon AWS.

# Running a local load test in Docker

## Prerequisites
Download and install Docker Desktop for your operating system:
* [Docker Desktop for Mac](https://docs.docker.com/docker-for-mac/install/)
* https://docs.docker.com/desktop/install/windows-install/
* https://docs.docker.com/engine/install/debian

For a docker-based load test, make sure you've run:

```bash
browserup cluster install
```

This will download the Docker images for BrowserUp to your local Docker environment.

## Running a local load test

Create a browserup.load.yaml with

cluster_type: local

## Running a an AWS load test

Create a browserup.load.yaml with

cluster_type: aws

Add your AWS credentials to your environment:

```bash
export AWS_ACCESS_KEY_ID=..
export AWS_SECRET_ACCESS_KEY=...
```

And that's it--the process to run tests locally is the same as running them in AWS.

The basic commands are:


```bash
browserup cluster deploy
```

```bash
browserup load start
```


```bash
browserup load stop
```

```bash
browserup cluster destroy
```

If you want to automatically deploy/destroy the cluster, use the -d flag on the start and stop commands.
When run this way, you can skip the deploy/destroy commands.

  ```bash
  browserup load start -d
  ```

  ```bash
  browserup load stop -d
  ```

