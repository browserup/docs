---
title: Load Test With Python and Playwright or Selenium
---
<span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> can run Python based load tests.

It can run:

* Python Driving Selenium and Chromium
* Python Driving Playwright and Chromium
* Python make requests without a browser
* Anything that drives traffic in your custom image...

The easiest way to get started is to generate a scaffold with a simple test:

```bash
browserup load init --python --python-selenium --python-playwright
```

This will generate a scaffold with three Python-based profiles:

* A Plain Python profile (no browser, API type traffic)
* A Selenium profile
* A Playwright profile


