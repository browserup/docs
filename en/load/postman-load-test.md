---
title: Load Testing With PostMan
---
To run a load test using your Postman, first install <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> per these instructions.

```bash
npm install -g browserup-cli
```

```bash
browserup load init --playwright
```

Create your collection of tests as normal in Postman

Export the collection to the working directory for your load test

https://www.tutorialspoint.com/postman/postman_run_collections_using_newman.htm

Test out your collection [locally with newman](https://www.tutorialspoint.com/postman/postman_run_collections_using_newman.htm) to make sure it works as desired.

Adjust your scenario's profile(s) to run the collection.

```yaml
scenario:
  name: Newman
  total_users: 20
  profiles:
    - name: Cart API
      think_time: 10s
      allocation: 50%
      command: newman run postman_collections/cart-api.json
```

```bash
browserup load start
```

This will launch a local load test own Docker environment.

Finally, log into the app and watch the reporting as your load test runs.

Repeat, as needed, with a large-scale load test in Amazon AWS to really put your app through its paces.
