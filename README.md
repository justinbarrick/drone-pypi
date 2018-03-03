Flynn plugin for Drone.

To use, set your secrets:

* `FLYNN_KEY`: your controller key
* `FLYNN_TLSPIN`: your tls pin
* `FLYNN_APP`: the flynn app to deploy
* `FLYNN_DOMAIN`: the cluster domain

Example `.drone.yml`:

```
pipeline:
  flynn_push:
    image: 2327co/drone-flynn:latest
    secrets: [ FLYNN_KEY, FLYNN_DOMAIN, FLYNN_TLSPIN ]
    environment:
      FLYNN_APP: 2327co-fundchange-master
```
