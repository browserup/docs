---
title: upload_license
---

The upload_license command provides a method to add a license to
the browserup cluster. The license enables products and workspaces and can set (increase)
the system's capacity and simultaneous users.

The default freemium license allows 50 simultaneous users.

To purchase licenses, contact [sales@browserup.com](mailto:sales@browserup.com).

Licenses can be used to enable capabilities like running with thousands of simultaneous
users and enabling separate workspaces to segregate your dataset by team or functional area.


```bash
=================================
BrowserUp Command Line Util
=================================

Usage:
  browserup upload_license

Options:
      [--path=PATH]               # Full Path to license file.
  v, [--verbose], [--no-verbose]  # Enable or disable verbose output logging. Disabled by default.
				  # Or set the $BROWSERUP_CLI_VERBOSE environment variable.
  c, [--config=CONFIG]            # Path to browserup.yaml configuration file.
                                  # Default: /Users/ebeland/apps/browserup/cli/scaffolds/python/browserup.yaml
  a, [--api-token=API_TOKEN]      # Your BrowserUp account API access token.
				  # Or set the $BROWSERUP_API_TOKEN environment variable.
				  # Required for remote tests. Optional for local tests.

Upload License.
Local Docker ✓
```
