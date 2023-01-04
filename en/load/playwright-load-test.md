---
title: Load Testing With Playwright
---

The browserup/custom-base image ships with Playwright installed.

To test out a playwright sample script, run:

```bash
browserup generate playwright
```

This will generate a playwright script into the current folder.
It will also generate browserup

You can use this script as a staring point.  Edit it to reflect what you'd like to run.

In the generated browserup.yaml, the profiles: key can handle many profiles.

Set up a profile for each playwright script your test should run.

