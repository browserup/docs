---
title: Profile Config YAML Settings
---

artifact_dir
: The artifact dir is the relative path to a folder which contains the item you will execute to create your load.
: The whole directory, and all contents below it, will be copied to the folder
: /home/browserup/artifact/ inside your containers. This folder is the working directory
: when your test executes the command in the command setting.

command:
: The command is what is executed whenever your container iterates. The working dir
: for the command is  /home/browserup/artifact

image:
: The name of the image that will be run when this profile executes. The profile

think_time:
: The amount of time between each _step_ in your script. The value for think_time is
: passed into the container as an environment variable. Most often, this is done by sleep(ENV['think_time'])
: For real-browser tests, a value of 30 seconds is suggested. The average time between pages for real users
: in most apps, on average, is about 60 seconds. We like 30 seconds as a more aggressive default.

delay_between_iterations:
: Implementation of think_time is the responsibility of the test script. Typically it is implmented
: by a delay at the end of each script.
: We suggest 30 seconds to mimic a page think-time.

databank:
: The path to a databank file that will be uploaded.

allocation:
: Allocation is the target percentage of user load that this script represents.  The sum of all allocations
: must add up to 100%

iteration_delay:
: The amount of time to sleep between each iteration. The script

region:
: BrowserUp allows distributed testing out of the box by selecting the region from which each profile will run.
: BrowserUp has two modes: Local Docker runs, and Amazon AWS cloud runs.
: The region setting is ignored for local runs.

vus_per_vcpu:
: For cloud tests (cluster_type: remote), multiple containers can be run on a single vcpu. Proper load tests
: implement a delay between iterations and steps, which means a virtual user is sleeping for some portion of the time.
: This sleep time is important for accurately testing keepalives, open sessions, streaming traffic, websockets, and
: other
: on average, this makes vcpu sharing an effective cost saving measure.
