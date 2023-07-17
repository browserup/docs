---
title: Coding for the Load-test
---

There are a few considerations for creating a good load-test. Although load tests can
and often should be built by reusing your assets that "talk to your app",
the actual code that "runs" should follow certain guidelines when run for a load test.

## Think-time

In order to make load requests have realistic pacing, <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> uses a "think_time" setting
for each Profile (see here). The think_time setting, which represents the number of seconds to sleep
between each step (in a browser a step might be a page load, in an API test, a Request, for example)

The think_time setting your profile is published as an environment variable in your code's container
when it runs.

Your test is responsible for implementing the code that sleeps.

Typically, in pseudo code, this is something like:

* Do something
* sleep(ENV['THINK_TIME'])
* Do something else
* sleep(ENV['THINK_TIME'])
* Do something else
* sleep(ENV['THINK_TIME'])

There are several reasons for using think time:
1 - It ensures that the load tests are consistent. If a load test runs full-bore, then today's
load test can't be compared to tomorrow's. For example, if your application's speed is doubled,
then the same test, run tomorrow, might make twice as many requests as it did today, while
appearing to be bottlenecked on both days.

Even worse, if the CPU or networking of the load machines are different, you'll get inconsistent results.
Think time ensures that there is capacity to spare on the load-generating machines.

2 - It ensures the machine has capacity to do other things, like send back metrics to the data collector.

For these reasons, your scripts should always implement think_time.


## Databanking

Most tests need to use varied data. <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> provides Databanking for data driven tests.

With databanking set up, the current databank variable is made available to your container via
environment variables.

To use them, your code needs to retrieve the current value from the environment. If your profile is
set to be iterated by the system, it will retrieve a new value on each iteration.

If your code is set to iterate iteself (it loops) it will receive values on start, but that will be all.



## Iterating

There are two approaches to iterating:
1. <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> will call the *command* defined for your profile, and wait for it to finish for each iteration
2. Your code loops (iterates) on it's own.

If your artifact is code that runs once, and completes for each iteration, in your profile, set
```yaml
iterate: true
```

If your code handles looping, is taking over the iteration responsibility, tell <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> not to iterate it, with

```yaml
iterate: false
```

If you set iterate to false, you should implement the sleep for the DELAY_BETWEEN_ITERATIONS which
is normally handled by browserup when iterating.

* Do something
* sleep(ENV['THINK_TIME'])
* Do something else
* sleep(ENV['THINK_TIME'])
* Do something else
* sleep(ENV['DELAY_BETWEEN_ITERATIONS'])
