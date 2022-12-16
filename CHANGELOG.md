# 1.0.12

### Features
* Add `latest` as default docker tag such that the latest is always accessible by pulling `kurtosisteck/iproute2:latest`

# 1.0.11

### Changes
* Setup Kurtosis official release workflow

# 1.0.10

### Changes
* Upgrade docker version used in CI from 19.03.13 to 20.10.18
* Upgrade circle base image from 2020.12 to 2022.06
* Build docker images for both linux/amd64 and linux/arm64/v8 using buildx

# 1.0.9

### Changes
* Add `.dockerignore`
* Move `build.sh` to `scripts` directory, for consistency across our repos

# 1.0.8

### Changes
* Remove erroneous empty-arg call to `build.sh` in Circle config file

# 1.0.7

### Changes
* Consolidate `build.sh` and `push-to-dockerhub.sh` into a single script

# 1.0.6

### Changes
* Add back `docker login`, which is needed for pushing to Dockerhub

# 1.0.5

### Changes
* `cimg/base` -> version `2020.12`
* Add back `setup_remote_docker` because it's how the Docker Engine gets set up

# 1.0.4

### Changes
* Drop `setup_remote_docker` command from CircleCI config because the base image is supposed to have it

# 1.0.3

### Changes
* Try to correct invalid Circle schema

# 1.0.2

### Changes
* Add CircleCI

# 1.0.1

### Changes
* Don't explicitly install `iptables`
* Use alpine 3.12
* Add build & push scripts

# 1.0.0

### Changes
* Init commit
