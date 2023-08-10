---
title: Load Test With Selenium
---
<span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> runs real-browser tests using **_your_** selenium scripts.

While there are other tools that can run Selenium tests,
<span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> is different in that it lets you use *your* codebase.

What do we mean by "your code"?

* Code in your IDE
* Keep your code in your repo
* <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> doesn't take your code, run it, and extract an HTTP script. <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> *actually* runs your code during the test.
* You can use your own libraries and extensions.
* Because we run your code, you are free to import your own libraries, gems, JARs
* If you build a custom image, you can use any language you can install on Debian Bookworm

The easiest way to get started with a selenium test is to generate a scaffold for the
language you would like to use.

The BrowserUp init command offers a number of options for generating a scaffold for your test.

```bash
browserup load init --help
```

<br>
Although you can use any language you like, we have provided scaffolds for the following languages:

  **--selenium-js**       - Init a sample script with Selenium using JavaScript

  **--selenium-java**     - Init a sample script with Selenium using Java

  **--selenium-python**   - Init a sample script with Selenium using Python

  **--selenium-ruby**     - Init a sample script with Selenium using Ruby

  **--selenium-csharp**   - Init a sample dotnet solution with C#. Requires compilation.



