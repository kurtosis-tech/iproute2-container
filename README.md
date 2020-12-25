iproute2 Container
==================
A very simple Docker container containing `iproute2`, used by Kurtosis to implement network partitions. Credit goes to Alexei Ledenev, for [doing this first with Pumba](https://github.com/alexei-led/pumba/blob/master/docker/alpine-tc.Dockerfile) - we're using his image, but without the `ENTRYPOINT` so we can manipulate `iptables` too.

### Building
We haven't configured CircleCI for this repo because it's so small. To build a new release, run `build.sh`. To upload it to Dockerhub, run `push-to-dockerhub.sh`.
