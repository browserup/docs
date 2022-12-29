---
title: deprovision
---

The deprovision command is very important!  *deprovision* tears down your test cluster.
You must run it when you don't want your cluster running.  For cloud runs, this is very
important as you may not want to pay to keep your cluster up and running.

```bash
browserup help deprovision
=================================
BrowserUp Command Line Util
=================================

Usage:
  browserup deprovision

Options:
      [--cluster-name=CLUSTER_NAME]              # Name of cluster to deprovision. Can be provided via env. variable BROWSERUP_CLUSTER_NAME or taken from existing secrets.yaml
      [--remove-volumes], [--no-remove-volumes]
                                                 # Default: true
  v, [--verbose], [--no-verbose]                 # Enable or disable verbose output logging. Disabled by default.
				  # Or set the $BROWSERUP_CLI_VERBOSE environment variable.
  c, [--config=CONFIG]                           # Path to browserup.yaml configuration file.
                                                 # Default: /Users/ebeland/apps/browserup/cli/scaffolds/python/browserup.yaml
  a, [--api-token=API_TOKEN]                     # Your BrowserUp account API access token.
				  # Or set the $BROWSERUP_API_TOKEN environment variable.
				  # Required for remote tests. Optional for local tests.

Deprovision the BrowserUp app.
Local Docker ✓
```
