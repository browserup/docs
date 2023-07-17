---
title: init
---
The *init* command is useful for getting working example files for a test type.

The init command creates in the local directory:
* an example set of files for specified test-types
* a browserup.load.yaml test config referencing any examples

Note that test configs are not specialized to test types.

Any browserup.load.yaml can be used to specify, and run, any kind of test,
and a single yaml file may reference any or all kinds of items in its profiles
to run as load.

The generated files are useful as scaffolding for starting your test creation.
However, your imagination is the limit on what you use to drive load.

[<img src="{{ site.baseurl }}/assets/images/cli/load-init.png" width="1000"/>]({{ site.baseurl }}/assets/images/cli/load-init.png)
