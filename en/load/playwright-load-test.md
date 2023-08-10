---
title: Load Testing With Playwright
---

The browserup/standard image ships with Playwright installed.
BrowserUp can run Playwright scripts in any of the following languages as load tests:

Out of the box, the BrowserUp standard image supports:

* Playwright Load testing with JavaScript
* Playwright Load testing with Python
* Playwright Load testing with C Sharp

To test out a playwright sample script, run:

```bash
browserup load init --playwright-js
```
Alternately, you can use the following options:

`--playwright-csharp`
`--playwright-python`

The init command generates a playwright script in the current working directory.
It will also generate the test config: browserup.load.yaml

Review the generated files. They should work out-of-the-box.

To run the test, run:

```bash
browserup load start -d
```

You can use this script as a staring point.  Edit it to reflect what you'd like to run.

Learn more in our [Quick Start](quick-start.html).

