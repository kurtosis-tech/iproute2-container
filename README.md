iproute2 Container
==================
A very simple Docker container containing `iproute2`, used by Kurtosis to implement network partitions. Credit goes to Alexei Ledenev, for [doing this first with Pumba](https://github.com/alexei-led/pumba/blob/master/docker/alpine-tc.Dockerfile) - we're using his image, but without the `ENTRYPOINT` so we can manipulate `iptables` too.

### Development
Run `scripts/build.sh` with no arguments to see what commands are available.

Just testing
