# How It Works

BrowserUp packages up your tests working dir, and sends the files within it
into a pre-configured docker image. It unzips your files to

/home/browserup/artifact in the VM.

Why does it work this way? It would certainly be possible to mint a new
Docker image for each test run, but that would be slow. By using a pre-configured
image, we can start the test run much faster.

The docker image has a number of tools installed, including:
* Chrome
* Ruby
* Python
* Node
* Java
* C# / .NET
* Playwright
* Selenium / chromedriver
* Postman with Newman test runner
* Curl

For browser-based testing, we publish CHROME_PATH and CHROMEDRIVER_PATH
which can be passed into both Selenium and Playwright to drive Chrome.

For Playwright, it will try and use an embedded browser if you don't pass this
argument, but it's better to use the Chrome that we ship. If we embedded
every browser, for every Playwright language/framework, our image would be huge.

We recommend you also export these variables on your local system, so that
you can make tests that run everywhere.

Selenium seems to be less particular about the paths to chrome/chromedriver,
so it may work without setting these variables.

Once your code is in our container, we run it.  The command to run is
specified in browserup.load.yaml.  The command is run from the working
directory, which is /home/browserup/artifact.

The command can be anything you want.

# Why put everything in a big image?

Docker uses a copy on write filesystem.  This means that when you run a container,
it starts with a copy of the image, so image size doesn't convert directly to
memory usage.  The memory usage of a container is the memory used by the
processes running in the container, plus the memory used by the copy on write
filesystem.

If you have a large number of tests, you can use the same image for all of them.

NOTE: Do *not* run installs inside of your test--this load tests your package
distribution system, which is *bad* and may break your test.

If you need something that is not in the standard image, you can create your
own image based on ours, and install whatever you need.  See the section on
custom images for more information.

# How do I verify my tests

Take a look at the verify command.

# How does data-banking (data driven testing) work?

We publish the values into your container as ENV variables on each iteration.

# How do delays / think times work?

We also publish think time as an env variable. You should use this to pause execution
between each step. For this, you should use your language/frameworks sleep statement.
In the case of Javascript, you can use setTimeout.

# How do I test different environments?
