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
