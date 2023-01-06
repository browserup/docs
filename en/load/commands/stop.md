---
title: stop
---
The stop command stops a test. The stop command *does not* [deprovision](deprovision) the cluster!
The containers remain up, and running until you [deprovisioning](deprovision) them.
You are responsible for [deprovisioning](deprovision) your cluster when you want to take it down.


```bash
bin/browserup help stop
=================================
BrowserUp Command Line Util
=================================

Usage:
  browserup stop

Options:
      [--scenario=SCENARIO]       # Optional scenario ID from the browserup.yaml configuration file.
      [--run-id=RUN_ID]           # Optional ID of run to stop.
  v, [--verbose], [--no-verbose]  # Enable or disable verbose output logging. Disabled by default.
				  # Or set the $BROWSERUP_CLI_VERBOSE environment variable.
  c, [--config=CONFIG]            # Path to browserup.yaml configuration file.
                                  # Default: /Users/ebeland/apps/browserup/cli/scaffolds/python/browserup.yaml
  a, [--api-token=API_TOKEN]      # Your BrowserUp account API access token.
				  # Or set the $BROWSERUP_API_TOKEN environment variable.
				  # Required for remote tests. Optional for local tests.

Stop a load test scenario on a remote (AWS) BrowserUp cluster.
Local Docker ✓
```
