---
title: Data-driven Load Testing with Databanks
---

Databanks provide a way to vary the data sent during your load test.

A databank is a Comma Separated Value file (CSV)[https://en.wikipedia.org/wiki/Comma-separated_values]

Browserup publishes the current databank value to each virtual user as an
environment variable with the same name as each CSV column.

As the script iterates, each VU moves through the rows sequentially.

Consuming scripts and programs can access these variable values to send varied traffic.

Databanks serve several important purposes:

* Varying traffic to prevent caching from providing an overly optimistic performance result.
  For example, querying the same data over and over again will cause many applications to
  skip database queries and instead retrieve data from the cache. This can be misleading as
  your real-world users are likely to use varied data, and therefore realistic performance tests must do the same.
* Providing multiple logins - Reusing the same user for all requests may mean data is
  changing during the test in conflicting ways.

### In the config:




### In the UI:
[<img src="{{ site.baseurl }}/assets/images/load/urls-report.png" width="800"/>]({{ site.baseurl }}/assets/images/load/urls-report.png)
