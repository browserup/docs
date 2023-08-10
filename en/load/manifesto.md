---
title: Manifesto
---

For most organizations, there's a better way to load test!

The way we load testing is done today made sense for the time, but it's time to rethink it.


## A Brief History of Load Testing

<h3>Late 1990s</h3>
As commerce slowly trickled online, companies needed to know if a web application would scale _before_ it was released.

A reasonable first proposal for scalability testing was _to make many browsers hit your site_.
In 1996, this meant buying servers powerful enough to run many automated web browsers and paying monthly datacenter bills.
Servers weren't powerful, so setting up, monthly hosting, and running this could cost hundreds of thousands of dollars.

### Labor was cheap, _hardware_ was expensive.

Hardware was _very_ expensive, time-consuming and cumbersome to source and maintain. In comparison, salaries were cheaper.
HTTP server traffic was simple and transactional, so it was easy to write scripts to mimic browser requests.

Trading labor costs order to lower hardware costs was a good trade!

So HTTP-protocol level testing became the dominant load testing paradigm.
Dynamic session variables and cookies were handled through correlation, a ~~torture method~~ technique to mimic browser requests.

What are the downside of using labor hours to create highly efficient scripts to reduce machine-costs?

Labor-intensive process does __not__ lend itself to CI. A human has to be in the loop to create and maintain the scripts.

* Because HTTP level scripts go stale when an application is updated, creating or capturing scripts for code changes requires labor
for every change. This slows releases and shifts testing later in the development cycle.
* Scripting and correlating takes labor hours, and drives up costs
* A separate toolset and set of expertise is required.
* We maintain *two* separate implementations of page-walking logic. One in the load testing tool, and in another in our system, acceptance, and integration tests.
With every new feature, page-logic must be implemented twice
* Typically, this delays our releases, often *by a full Sprint or more*.

Things have changed...

* The cloud means server time no longer requires "hosting costs."
* Cloud time is rentable, by the second, for pennies.
* Rising demand and a skills shortage has raised labor costs.
* Testers often maintain page object libraries that hold the logic for how to walk a website.
* For REST APIs, we have client libraries or postman collections that hold the logic for how to talk to our API's.
* Servers are cheap, _people_ are expensive.

Trading labor to save ~server~ *cloud* costs has become a _bad_ tradeoff.

## The future of load testing

What would an ideal load testing tool for today's world look like?
It would:
* reuse our page walking logic so that we only had a single implementation. For API tests,
* reuse our REST API client, or Postman libraries.
* work with our language of choice and not force a new tool or language.

It _wouldn't_ *require* HTTP level playback, because this forces a brittle, low-level understanding and implementation of our app's requests.
We don't want the extra headaches that come from correlation.

We don't want the staleness of HTTP-protocol *snapshots*.

We want to maintain one "source of truth" for talking to our REST API's, rather than two.

There __are__ tools which can capture or import traffic from functional tests, but they recommend you then maintain the outputted HTTP-level script.
That means you're back to maintaining *two* implementations of your page walking logic. That's the problem we want to avoid, because
you have to re-update, re-test, and re-work for every change.

We think we have a better approach with BrowserUp. What does that look like?

<ul>
 	<li>Instead of <em>importing,</em><strong>run</strong> your code, so programmatic logic and smarter scripts are possible.</li>
 	<li>The code can live right in your repo if you want--in your language of choice.</li>
  <li>For browser tests, reuse your page objects libraries for load testing. Or your end-to-end tests.</li>
  <li>For API tests, reuse your postman libraries, or your own REST API client libraries.</li>
 	<li>Traffic is captured with full reporting and metrics</li>
 	<li>Execute in your own AWS account, so there's no data privacy issues.</li>
 	<li>Anything that makes requests, can drive load!</li>
</ul>

Get Started Today!

[Try our QuickStart!](quick-start.html)
