---
title: Custom Images
---

If you'd like to run a Selenium test with a different language, you'll need to build your own Docker image
based on our browserup/custom-base image.

Make sure your dockerfile starts with:

```bash
FROM browserup/custom-base:latest
```

When you base your image on browserup/custom-base, you can install whatever you need to run your test.
This is espeically useful if you need to install a specific version of a browser driver, or
your code requires a specific version of a language runtime, apt packages, or other dependencies.

In order to utilize your custom image, you need to edit your test configuration to use your custom image.

```yaml
scenarios:
  - id: TestGoogle
    total_users: 1
    profiles:
      - image: my/custom-image:latest
        name: my-custom-profile

```
