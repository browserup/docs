---
title: generate
---
The *generate* command is useful for getting working hello world files in a
particular environment for your test.


The generate command creates in the local directory:
* a browserup.yaml test config
* an example set of files for that test-type

Note that, the test configs are not actually specialized to test types, and
profiles can be made for multiple different test types in a single test config.

The generated files are useful as scaffolding for starting your test creation.

```bash
browserup help generate
=================================
BrowserUp Command Line Util
=================================

Usage:
  browserup generate [ruby|java|javascript|playwright|postman]

Options:
  v, [--verbose], [--no-verbose]  # Enable or disable verbose output logging. Disabled by default.
				  # Or set the $BROWSERUP_CLI_VERBOSE environment variable.
  c, [--config=CONFIG]            # Path to browserup.yaml configuration file.
                                  # Default: /Users/ebeland/apps/browserup/cli/scaffolds/python/browserup.yaml
  a, [--api-token=API_TOKEN]      # Your BrowserUp account API access token.
				  # Or set the $BROWSERUP_API_TOKEN environment variable.
				  # Required for remote tests. Optional for local tests.

Description:
  `generate TYPE` Generate a working example of a particular test type into the current working directory. > $ browserup generate
Local Docker ✓
```
