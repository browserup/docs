---
title: cluster install
---


```bash
browserup cluster install
```

### Local installation

The cluster install command downloads the Docker images needed to run a test into the
local Docker installation.

This step is required to be run before an local tests can be run.

The Docker images contain all the tools needed to run a test, so they
are large. This command will take several minutes to complete.


### Upgrading

When you upgrade the browserup CLI, you should run cluster install again
to fetch the latest images.

[<img src="{{ site.baseurl }}/assets/images/cli/cluster-install.png" width="1000"/>]({{ site.baseurl }}/assets/images/cli/cluster-install.png)
