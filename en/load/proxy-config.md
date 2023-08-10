---
title: Proxy Config YAML Settings
---

During some types of load tests, especially browser-based ones, it is desirable to
prevent certain requests from occuring. The proxy settings allow you to stop these
requests from being made.

Here are some examples of requests you may want to block:

* Google Analytics
* Embedded Advertisers
* Requests that hit the CDN
* Requests that load images (images are not needed in many test types)
* Chat services
* Other third-party services

It is important to be mindful of what requests your web pages cause when
they load.

<span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> lets you configure your proxy settings on a per-profile basis.
Our YAML


## Proxy config

Our proxy has two modes. We offer out-of-the-box defaults for
blocking certain request types, and an advanced mode where you can specify your
own proxy config.

### Built-in settings

* filter_images:
Filter requests for images. When true, this causes image requests to be ignored
and not sent to the server.

* filter_multimedia:
Filter requests for multimedia. When true, this causes multimedia requests to be ignored
and not sent to the server.

* filter_domains:
Filter requests for domains block the configured domain entirely.

* filter_common_third_party_js:
This setting uses our best-guess for popular, known third party javascript. The
setting may not cover every possibility, so it is good to review your apps requests.

* restrict_to_domains_matching:
This setting _only_ allows through requests to domains that match the specified string.
This works well for internal apps that are not allowed make requests to third parties.

* use_custom_config:
When true, all other settings are *ignored* except the value in *custom_config* which
is expected to be an mitmproxy config.

* custom_config:
A config for our mitmproxy fork to use. Note that when a custom config is used,
all other config settings are ignored.

The mitmproxy offers a number of other possibilities for filtering, adding headers,
etc. For cases where advanced functionality is needed, a (custom config)[https://docs.mitmproxy.org/stable/concepts-filters/]
makes sense.


