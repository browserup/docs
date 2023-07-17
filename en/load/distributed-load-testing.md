---
title: Distributed Load Testing
---

<span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> provides distributed load testing capabilities out-of-the-box via Amazon Web Services.

To configure a distributed test, simply set the "region" field on each profile
in your scenario in your (run config)[/en/config-yaml].

```yaml
    - name: US Cart Status
      think_time: 10s
      allocation: 100%
      region: us-east-2
      command: newman run postman_collections/cart_status_api.json
```

```yaml
    - name: EU Cart Status
      think_time: 10s
      allocation: 100%
      region: eu-west-1
      command: newman run postman_collections/cart_status_api.json
```

Make sure your run config has:
```yaml
settings:
  cluster_type: aws
```

The *remote* (AWS) cluster type is automatically deployed, created, and scaled in AWS by <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span>
within *your own* AWS account.

Our approach provides superior privacy and GDPR protection--we don't see your data!
