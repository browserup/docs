---
title: Load Testing With Playwright
---

The browserup/custom-base image ships with Playwright installed.

To test out a playwright sample script, run:

```bash
browserup load init --playwright-js
```

Out of the box, the BrowserUp standard image supports:

* Playwright Load testing with JavaScript
* Playwright Load testing with Python
* Playwright Load testing with C Sharp


The init command will generate a playwright script into the current folder.
It will also generate browserup.load.yaml

```bash
browserup load start
```

You can use this script as a staring point.  Edit it to reflect what you'd like to run.

In the generated browserup.load.yaml, the profiles: key can handle many profiles. Set up a profile for each playwright script your test should run.


