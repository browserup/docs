---
title: Configuring AWS Test Credentials
---

<span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> can run tests locally using Docker, and in the cloud using Amazon
Web Services (AWS).

Deploying and running a load test in the cloud is _very_ similar to
running a local test from the <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> Command Line. The main difference is just that
you'll configure your AWS credentials, and set cluster_type: aws.


## Prerequisites:

Install [Amazon AWS CLI](https://aws.amazon.com/cli/) and configure a user with the required AWS credentials

<span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> requires that you have an AWS user with these IAM permissions:
* AmazonEC2FullAccess
* AmazonRoute53FullAccess
* AmazonS3FullAccess
* IAMFullAccess
* AmazonVPCFullAccess


## Step 1 - Configure AWS credentials

The <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> AWS credentials work via the AWS Command Line client, and are configured in
the same manner, by exporting the environment variables:

```bash
$ export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
$ export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
$ export AWS_DEFAULT_REGION=us-west-2
```

## Step 2 - Remote Cluster

In your test's browserup.load.yaml, set it to cluster_type: aws

```yaml
cluster_type: aws
```

That's it! Run your test using the usual command line instructions and you have a
scalable load test in the cloud!




