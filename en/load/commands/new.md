---
title: new
---
The *new* command is useful for getting working hello world files in a
particular environment for your test.


The new command creates in the local directory:
* a browserup.yaml test config
* an example set of files for that test-type

Note that, the test configs are not actually specialized to test types, and
profiles can be made for multiple different test types in a single test config.

The generated files are useful as scaffolding for starting your test creation.

```bash
============================
BrowserUp Command Line Util
============================

Usage:
  browserup new [examples]

Options:
  v, [--verbose], [--no-verbose]  # Enable or disable verbose output logging. Disabled by default.
				  # Or set the $BROWSERUP_CLI_VERBOSE environment variable.
  c, [--config=CONFIG]            # Path to browserup.yaml configuration file.
                                  # Default: /Users/ebeland/apps/browserup/cli/browserup.yaml
  a, [--api-token=API_TOKEN]      # Your BrowserUp account API access token.
				  # Or set the $BROWSERUP_API_TOKEN environment variable.
				  # Required for remote tests. Optional for local tests.

Description:
  `new "postman,curl"` Create a new working example test config with a curl and postman example (browserup.yaml).

  Available Examples:

  postman, curl, java, ruby, python, playwright-js, playwright-python, selenium-ruby, selenium-java, selenium-python, custom

  If a comma-separated list of desired examples is passed, example files for each type will be generated and included in the config.

Local Docker ✓
```
