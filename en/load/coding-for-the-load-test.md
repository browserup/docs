---
title: Coding for the Load-test
---

There are a few considerations for creating a good load-test. Although load tests can
and often should be built by reusing your assets that "talk to your app",
the actual code that "runs" should be implemented to follow certain guidelines
when run for a load test.


## Think-time

In order to make load requests have realistic pacing, BrowserUp uses a "think_time" setting
for each Profile (see here). The think_time setting, which represents the number of seconds to sleep
between each step (in a browser a step might be a page load, in an API test, a Request, for example)

The think_time setting your profile is pushed into your code's container when it runs your code as an environment variable.

Your test is responsible for implementing the code that sleeps.
Typically, in pseudo code, this is something like:

* Do something
* sleep(ENV['THINK_TIME'])
* Do something else
* sleep(ENV['THINK_TIME'])
* Do something
* sleep(ENV['DELAY_BETWEEN_ITERATIONS])
* Loop

There are several reasons for using think time:
1 - It ensures that the load tests are consistent. If a load test runs full-bore, then today's
load test can't be compared to tomorrows. For example, if your application's speed is doubled,
then the same test, run tomorrow, might make twice as many requests as it did today, while
appearing to be bottlenecked on both days. Even worse, if the CPU or networking of the machines driving the load
have differences, you'll get inconsistent results.

Think time ensures that there is capacity to spare on the CPU of the load-generating machines.

2 - It ensures the machine has capacity to do other things, like send back metrics to the data collector.

For these reasons, your scripts should always implement think_time, and delay between iterations.

Think time is used between each "step."  DELAY_BETWEEN_ITERATIONS should be the last step in the script.




## Databanking

Most tests need to use varied data. BrowserUp provides Databanking for data driven tests.

With databanking set up, the current databank variable is made available to your container via
environment variables.

To use them, your code needs to retrieve the current value from the environment. If your profile is
set to be iterated by the system, it will retrieve a new value on each iteration.

If your code is set to iterate iteself (it loops) it will receive values on start, but that will be all.



## Iterating

There are two approaches to iterating:
1. BrowserUp will call the *command* defined for your profile, and wait for it to finish for each iteration
2. Your code loops (iterates) on it's own.

If your artifact is code that runs once, and completes for each iteration, in your profile, set
```yaml
iterate: true
```

If your code handles looping, is taking over the iteration responsibility, tell BrowserUp not to iterate it, with

```yaml
iterate: false
```
