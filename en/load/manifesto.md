---
title: Manifesto
---

We propose: For most organizations, there's a better way to load test!

## The Origins of Load Testing

Let's review the previous load testing paradigm and why it made sense for its time.
Then let's  do a <strong>first principles rethink</strong> of modern load testing for today's world.

<h3>Late 1990s</h3>
Around 1996, as commerce slowly trickled online, there was a need to know if a web application would scale _before_ it was released.

To a 90's engineer, a reasonable first proposal for simulating browsers hitting your site would be _to automate many browsers hitting your site_.
In 1996, this would mean buying servers powerful enough to run many web browsers and paying monthly datacenter bills.
Servers weren't powerful, so setting up, hosting, and running this could easily cost hundreds of thousands of dollars.

Labor was cheap, _hardware_ was expensive.

In 1997, hardware was _very_ expensive, time-consuming and cumbersome to source and maintain.
Relative to this, salaries were far less expensive.
HTTP server traffic was simple and transactional then.
Trading labor costs order to lower server hardware costs made sense!

So HTTP-protocol level testing became the dominant load testing paradigm.
Dynamic session variables and cookies are handled through correlation, a ~~torture method~~ technique to mimic browser requests.

What are the costs of our tradeoff?

A labor-intensive process does __not__ lend itself to CI.

* Because HTTP level scripts go stale when an application is updated, creating or capturing scripts for code changes requires labor
for every change. This slows releases and shifts testing later in the development cycle. Load testing often
isn't "finished" until a full sprint or more after the feature is built.
* Scripting and correlating takes labor hours, and drives up costs
* This approach requires a separate toolset and a separate set of expertise.
* We maintain two separate implementations of page-walking logic for our web application. One in the load testing tool, and in another in our system, acceptance, and integration tests.
* The Page Object pattern helped [DRY](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself) up the repetition in our test scripts. However, it didn't solve the load test implementation.
Maintaining separate implementations comes at a cost. With every new feature, page-logic must be implemented twice
* Often, this delays our releases by a full Sprint or more at most organizations.


To summarize the current approach:
* It trades labor costs to optimize hardware costs
* It requires multiple experts, or domains of expertise
* It requires that an additional implementation of page-walking logic
* It slows releases
* It drives up labor costs

<h3>Today's World</h3>

* Server time no longer requires "hosting costs."
* Cloud time is rentable, by the second, for pennies.
* Servers are many times more powerful.
* Rising demand and a skills shortage has driven labor costs much higher.
* Testers already maintain page objects that hold the logic for how to walk a website.

Hardware is cheap, _people_ are expensive.

Trading labor to save ~server~ *cloud* costs is _now_ a bad trade.

## The future of load testing

Let's imagine what an ideal load testing tool would look like.

It would reuse our page walking logic so that we only had a single implementation.

It would work with our code and not force a new tool or language. Ideally it could be written in the same code our application's tests are written in. This would lower the knowledge required to maintain our app.

It _wouldn't_ require HTTP level playback, because this forces us to test with a brittle, bare-metal understanding of our apps requests. We don't want the extra headaches that come from correlation.

We don't want the inherent staleness of HTTP-level snapshots.

We want to maintain one "source of truth" for talking to our REST API's, rather than two.

To rid ourselves of these problems, we want to avoid maintaining a "snapshot" of browser requests, or a second implementation of our
REST API client.

There __are__ tools which can capture or import traffic from functional tests, but they recommend you then maintain the outputted HTTP-level script.
That means you're back to maintaining two implementations of your page walking logic. That's the problem we want to avoid, because
you have to re-test, re-update an re-work for every minute change.

We think the load testing tool the world needs load testing for developers, in the same language as their app.

<ul>
 	<li>Instead of <em>importing</em>we <strong>run</strong> your code, so programmatic logic and smarter scripts are possible.</li>
 	<li>The code can live right in your repo if you want--in your language of choice.</li>
  <li>For browser based tests, reuse your page objects for load testing. Or your functional and regression tests.</li>
 	<li>Your code, so you can use your internal libraries.</li>
  <li>You can write code directly to talk to your API, but have the traffic captured with full reporting and metrics</li>
 	<li>Execution within your own AWS account, so there's no data privacy issues.</li>
 	<li>Anything that can make requests, can drive load</li>
</ul>


#### Who is and isn't a great fit for the <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> approach?

Companies at the extremes of the growth spectrum might not be an ideal fit.

At (large) Google-scale, it is likely that trading labor for machine efficiency still makes sense.

At (small) startup scale, load testing is often a one-off and not a rinse-and-repeat process yet.
Although, for startups, our 50 freemium users could be a very cost-effective way to get a sanity check.

If you don't have a web _application_, you can probably get by with something simple, like Apache bench.

We think our approach is ideal for mature testing organizations, testing complex web apps.

In our surveys, we found most load testing isn't completed until an entire sprint after the other testing is "done"
because the maintenance and scripting take longer. Where this is true, we think you can
release well-tested software a sprint sooner with our approach.
