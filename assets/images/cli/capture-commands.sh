#!/bin/bash

# this program generates the CLI screenshots in this folder
# add new commands as needed

# install termshot to record terminal output
# https://github.com/homeport/termshot

# Base Commands
termshot -f "./help.png" -- "browserup help"

# Load Commands
termshot -f "./load-init.png" -- "browserup load init -h"
termshot -f "./load-start.png" -- "browserup load start -h"
termshot -f "./load-status.png" -- "browserup load status -h"
termshot -f "./load-stop.png" -- "browserup load stop -h"
termshot -f "./load-reports.png" -- "browserup load reports -h"
termshot -f "./load-watch.png" -- "browserup load watch -h"
termshot -f "./load-verify.png" -- "browserup load verify -h"
termshot -f "./load-help.png" -- "browserup load -h"

# Cluster Commands
termshot -f "./cluster-deploy.png" -- "browserup cluster deploy -h"
termshot -f "./cluster-info.png" -- "browserup cluster info -h"
termshot -f "./cluster-destroy.png" -- "browserup cluster destroy -h"
termshot -f "./cluster-upgrade.png" -- "browserup cluster upgrade -h"
termshot -f "./cluster-upload-license.png" -- "browserup cluster upload-license -h"

# Optimize images
find . -name "*.png" -exec optipng -o7 {} \;

# conver to jpeg option
# mkdir jpegs; sips -s format jpeg *.* --out jpegs

