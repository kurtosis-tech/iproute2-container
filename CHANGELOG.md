## TBD
* Add `.dockerignore`
* Move `build.sh` to `scripts` directory, for consistency across our repos

## 1.0.8
* Remove erroneous empty-arg call to `build.sh` in Circle config file

## 1.0.7
* Consolidate `build.sh` and `push-to-dockerhub.sh` into a single script

## 1.0.6
* Add back `docker login`, which is needed for pushing to Dockerhub

## 1.0.5
* `cimg/base` -> version `2020.12`
* Add back `setup_remote_docker` because it's how the Docker Engine gets set up

## 1.0.4
* Drop `setup_remote_docker` command from CircleCI config because the base image is supposed to have it

## 1.0.3
* Try to correct invalid Circle schema

## 1.0.2
* Add CircleCI

## 1.0.1
* Don't explicitly install `iptables`
* Use alpine 3.12
* Add build & push scripts

## 1.0.0
* Init commit
