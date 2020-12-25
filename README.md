iproute2 Container
==================
A very simple Docker container containing `iproute2`, used by Kurtosis to implement network partitions.

### Building
We haven't configured CircleCI for this repo because it's so small. To build a new release, run:

```
docker build -t kurtosistech/iproute2 -f Dockerfile .
docker push kurtosistech/iproute2
```
