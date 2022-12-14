---
title: start
---

The start command allows you to start a run, either locally or remotely, based on the settins in the config.


```bash
=================================
BrowserUp Command Line Util
=================================

Usage:
browserup start

Options:
[--scenario=SCENARIO]                        # A valid scenario ID from the browserup.yaml configuration file. The first scenario found is used by default.
[--provision], [--no-provision]              # If no BrowserUp app is provisioned, provision one before starting the test.
[--cluster-type=CLUSTER_TYPE]                # Cluster type, either 'local' or 'aws'.
# Default: local
[--region=REGION]                            # AWS Region
# Default: us-east-2
[--instance=INSTANCE]                        # AWS instance type
# Default: m5a.xlarge
[--admin-emails=one two three]               # Space separated list of emails to receive system notifications
[--key-pair=KEY_PAIR]                        # Optional AWS Key Pair name to use for ECS cluster.
[--create-key-pair], [--no-create-key-pair]  # Optional flag to create AWS Key Pair for ECS cluster and save it. Ignored in case key_pair is provided.
# Default: true
v, [--verbose], [--no-verbose]                   # Enable or disable verbose output logging. Disabled by default.
# Or set the $BROWSERUP_CLI_VERBOSE environment variable.
c, [--config=CONFIG]                             # Path to browserup.yaml configuration file.
# Default: browserup.yaml
a, [--api-token=API_TOKEN]                       # Your BrowserUp account API access token.
# Or set the $BROWSERUP_API_TOKEN environment variable.
# Required for remote tests. Optional for local tests.

Run a load scenario. Provisions local (default) or remote BrowserUp app. Builds and uploads all items in scenario.
Local Docker ✓
```
