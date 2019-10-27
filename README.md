# circleci-buildpack-deps-awscli

A Docker container that includes CircleCI build deps Python and AWS CLI.

Pre-built containers are available on Dockerhub:
https://hub.docker.com/r/enterat/circleci-buildpack-deps-awscli

## Versioning
Container versions are as follows:

```
<py-version>-<revision>
```

So for example, `3.7.4-1` would be the first container revision with Terraform 3.7.4.

## Building for Dockerhub

```
# Build the container
$ docker build . -t enterat/circleci-buildpack-deps-awscli:<py-version>-<revision>

# Push to Dockerhub
$ docker push enterat/circleci-buildpack-deps-awscli:<py-version>-<revision>

# Update 'latest' tag
$ docker tag enterat/circleci-buildpack-deps-awscli:<py-version><revision> enterat/circleci-buildpack-deps-awscli:latest
$ docker push enterat/circleci-buildpack-deps-awscli:latest
```
