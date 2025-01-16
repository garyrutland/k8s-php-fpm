# K8s PHP-FPM

A sample repo for me to see how K8s works.

## Prerequisite

> This assumes you are using either Mac or Windows, there are other options but these two steps are the simplest

1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)
2. Enable [Kubernetes](https://docs.docker.com/desktop/features/kubernetes/)

## Local development with Docker

This will allow you to update files and see updates in realtime (hot reload).

```shell
make dkr_install
make dkr_up
```

To exit the container press `Ctrl+C` (or equivalent) and execute the following:

```shell
make dkr_down
```

## Local deployment with K8s

This will build and deploy locally.

```shell
make k8s_apply
```

As this is only using local Docker images, to see any changes the following needs to be executed:

```shell
make k8s_restart
```

To stop and delete the deployment execute the following:

```shell
make k8s_delete
```
