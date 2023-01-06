---
title: provision
---

The provision command is used to start the cluster for a load test. It
spins up the machines in the local docker environment, or AWS, depending on the
cluster_type defined in the test config.


```bash
=================================
BrowserUp Command Line Util
=================================

Usage:
  browserup provision

Options:
      [--cluster-type=CLUSTER_TYPE]          # Cluster type, either 'local' or 'aws'.
                                             # Default: local
      [--region=REGION]                      # AWS Region
                                             # Default: us-east-2
      [--instance=INSTANCE]                  # AWS instance type
                                             # Default: m5a.xlarge
      [--admin-emails=one two three]         # Space separated list of emails to receive system notifications
      [--key-pair=KEY_PAIR]                  # AWS Key Pair to use to connect to ECS cluster, for debugging purpose
      [--minions-key-pair=MINIONS_KEY_PAIR]  # AWS Key Pair to use to connect to Minions ECS clusters, for debugging purpose
  v, [--verbose], [--no-verbose]             # Enable or disable verbose output logging. Disabled by default.
				  # Or set the $BROWSERUP_CLI_VERBOSE environment variable.
  c, [--config=CONFIG]                       # Path to browserup.yaml configuration file.
                                             # Default: /Users/ebeland/apps/browserup/cli/scaffolds/python/browserup.yaml
  a, [--api-token=API_TOKEN]                 # Your BrowserUp account API access token.
				  # Or set the $BROWSERUP_API_TOKEN environment variable.
				  # Required for remote tests. Optional for local tests.

Provision a BrowserUp for running the test.
Local Docker ✓
```
