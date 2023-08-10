---
title: Load test config - browserup.load.yaml
---

In the command-line flow, <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> load tests are defined in a YAML config file.

```yaml
scenario:
  name: Newman
  total_users: 2
  profiles:
    - name: Cart API
      think_time: 10s
      allocation: 50%
      command: newman run postman_collections/cart-api.json
    - name: Refund API
      think_time: 10s
      allocation: 50%
      command: newman run postman_collections/refund-api.json
  stop_after: 15m
  ramp:
    - ramp_to: 100%
      over: 1m
settings:
  cluster_type: local
```

### The Important keys:

*scenario*

  A scenario represents the definition of work that will happen during a test run.

*profiles*

Every scenario has an array of profiles. Each profile represents an item that will be executed during the test.

*profile*

Each (profile)[profile-settings] is an item that is executed during the test. Each profile must have a *name* key.
The name is used to associate metrics captured for this profile with data in our reports.

*stages*

The stages array defines the ramp pattern for a test.

*stage*

Each stage has a duration and type of stage and a target number of users.

*images*  [optional]

By default, your code is wrapped into a docker container running our standard image.
However, if you specify an image, you can use a custom image, based off our image, into which
you have pre-installed any of your own software that will be utilized for the load test.

To create a custom image, you need to create the image using our browserup/custom-base image as the FROM,
and ensure it has been uploaded to a registry with builds for each architecture where it will run.
This means, at minimum, you need to ensure the docker image is published in the AMD64 architecture
which is used for linux cloud machines. For local docker runs, if you use mac, you should also build
and push an Arm64 image as well.

Images are referenced by *name* in <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span>, so if you specify a custom image in a profile, it should
reference the name in the browserup system.


## Creating a test config

The easiest way to create a sample test config is to use the [init](/en/load/commands/init.html) command.


#### Expanded, commented, load test config:

```yaml
# Settings for the scenario.
scenario:
  # Name of the scenario. Required.
  name: GiveMeABetterName

  # Total number of users. Required.
  total_users: 10

  # List of profiles to use for the load test. Required.
  profiles:
  # Profile details.
  -
        # Name of the profile. Required.
        name: "PlaywrightJSExample"

        # Docker image for this profile. Optional. If skipped, it will use the browserup/standard image.
        # if not blank, the images key should be present, and the name of the image should be present in the images key.
        image: "browserup/standard:latest"

        # Allocation of virtual users. Optional.
        allocation: "100%"

        # Region where the profile will be executed. Optional.
          # For AWS: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html
          # For local docker, ignored
        region: "us-east-1"

        # Delay between iterations. Optional.
        iteration_delay: "10s"

        # Time for thinking between actions. Required.
        think_time: "30s"

        # Directory containing artifacts for virtual user containers. Optional.
        artifact_dir: "."

        # Configuration for the hidden proxy. Optional.
        proxy_config:
          filter_images: # Optional. Default is true, so image downloads will be skipped.
          filter_multimedia: # Optional. Default is true, so multimedia downloads will be skipped.
          filter_common_third_party_js: # Optional. Default  is true, so common third-party JS, like google analytics will be skipped.
          restrict_to_domains_matching: # Optional. Default is blank, so all domains are allowed.
          use_custom_config: # Optional. Instead of using the default configuration, use a custom configuration.
          custom_config_path: # Optional. Path to the custom configuration file. (required if use_custom_config is true)

        # Databank configuration. Optional. A databank is a CSV file that is uploaded to the container and published as ENV variables.
        # The CSV MUST have row headers. The row headers must be valid ENV variable names.
        databank:
          name: # Required. Name of the databank.
          path: # Required. Path to the databank file (CSV) on disk.
                # CSV is uploaded. On each iteration, the CSV row values are published to the container as ENV variables.

        # Command to execute. Required.
        command: "node ./playwrightJs/playwright-js-example.js"

        # Virtual users per vCPU. Optional.
        vus_per_vcpu:

  # Stop the load test after this duration. Optional.
  stop_after: 15m

  # Ramp-up settings. Optional.
  ramp:
  # Ramp-up details.
  -
  # Ramp up to this percentage. Required.
  ramp_to: 100%

        # Duration for ramping up. Required.
  over: 5m

# List of report cards. Optional.
reports:
# Report card details.
-
    # Name of the report. Required.
    name: 'UrlResponseTime'

    # Title of the report. Required.
    title: 'URL 90th Response Time (SLA)'

    # Y1 axis label. Optional.
    y1:

    # Y2 axis label. Optional.
    y2:

    # Type of the graph. Optional.
    type: 'line'

    # Date range for the report. Optional.
    range:
      start: # Required.
      end:   # Required.

    # Cards (graphs) within the report. Required.
    cards:
      # Card details.
      -
        # Type of card. Required.
        type:

        # Metrics for the card. Required.
        metrics:
          # Metric details.
          -
            # Name of the metric. Required.
            metric: 'urls.response_ms.avg'

            # Round the value. Optional.
            round:

            # Filter if value is zero. Optional.
            filter_if_zero:

            # Display name for the metric. Optional.
            display_name:

            # Check condition for the metric. Optional.
            check:
              '<': 2000 # Required.

# General settings.
settings:
# Cluster type: local for local Docker, or aws for AWS run. Required.
cluster_type: local

# Load generator settings. Optional.
load_generators:
  cores: # Required.
  memory: # Required.

# Images for the Docker containers. Optional.
images:
# Image details.
-
    # Name of the image. Required.
    name:

    # Docker image URL. Optional.
    image:

    # Docker image registry URL. Optional.
    registry:
```
