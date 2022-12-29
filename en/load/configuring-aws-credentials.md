---
title: Configuring AWS Test Credentials
---

BrowserUp can run tests locally using Docker, and in the cloud using Amazon
Web Services (AWS).

Provisioning and running a load test in the cloud is _very_ similar to
running a local test from the BrowserUp Command Line. The main differences
are:

1 - You must to configure AWS credentials

Assuming you have signed up for an (Amazon Web Services Account)[https://aws.amazon.com/free/],
the next step is to configure your credentials.

The AWS credentials work via the AWS Command Line client, and are configured in
the same manner, by exporting the environment variables:

```bash
$ export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
$ export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
$ export AWS_DEFAULT_REGION=us-west-2
```

2 - In your test's browserup.yaml, set it to a remote cluster type

```yaml
cluster_type: remote
```

That's it! Run your test using the usual command line instructions and you have a
scalable load test in the cloud!



