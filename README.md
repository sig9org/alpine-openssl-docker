# Docker image of Alpine with OpenSSL installed

This is a Docker container image based on [Alpine](https://hub.docker.com/_/alpine), with different versions of the OpenSSL installed. It was created to perform verification based on OpenSSL version differences.

## DockerHub

[sig9/alpine-openssl](https://hub.docker.com/r/sig9/alpine-openssl) supports the following tags:

- [latest](https://hub.docker.com/layers/sig9/alpine-openssl/latest)
- [3.5.6-r0](https://hub.docker.com/layers/sig9/alpine-openssl/3.5.6-r0)
- [3.5.5-r0](https://hub.docker.com/layers/sig9/alpine-openssl/3.5.5-r0)
- [3.3.6-r0](https://hub.docker.com/layers/sig9/alpine-openssl/3.3.6-r0)
- [3.1.8-r1](https://hub.docker.com/layers/sig9/alpine-openssl/3.1.8-r1)
- [3.1.8-r0](https://hub.docker.com/layers/sig9/alpine-openssl/3.1.8-r0)
- [3.0.19-r0](https://hub.docker.com/layers/sig9/alpine-openssl/3.0.19-r0)
- [1.1.1w-r1](https://hub.docker.com/layers/sig9/alpine-openssl/1.1.1w-r1)
- [1.1.1t-r2](https://hub.docker.com/layers/sig9/alpine-openssl/1.1.1t-r2)
- [1.1.1s-r0](https://hub.docker.com/layers/sig9/alpine-openssl/1.1.1s-r0)
- [1.1.1o-r0](https://hub.docker.com/layers/sig9/alpine-openssl/1.1.1o-r0)
- [1.1.1l-r0](https://hub.docker.com/layers/sig9/alpine-openssl/1.1.1l-r0)
- [1.1.1k-r0](https://hub.docker.com/layers/sig9/alpine-openssl/1.1.1k-r0)
- [1.0.2u-r0](https://hub.docker.com/layers/sig9/alpine-openssl/1.0.2u-r0)
- [1.0.2t-r0](https://hub.docker.com/layers/sig9/alpine-openssl/1.0.2t-r0)
- [1.0.2r-r0](https://hub.docker.com/layers/sig9/alpine-openssl/1.0.2r-r0)
- [1.0.2q-r0](https://hub.docker.com/layers/sig9/alpine-openssl/1.0.2q-r0)
- [1.0.2n-r0](https://hub.docker.com/layers/sig9/alpine-openssl/1.0.2n-r0)
- [1.0.2k-r0](https://hub.docker.com/layers/sig9/alpine-openssl/1.0.2k-r0)
- [1.0.1u-r0](https://hub.docker.com/layers/sig9/alpine-openssl/1.0.1u-r0)

## How to use

### OpenSSL 3.x

```sh
docker run -v "$(pwd)":/root -it -d --name alpine-openssl sig9/alpine-openssl:3.5.6-r0
```

### OpenSSL 1.x

```sh
docker run -v "$(pwd)":/root -it -d --name alpine-openssl sig9/alpine-openssl:1.1.1w-r1
```

## How to build

### 3.5.6-r0

```sh
docker buildx build \
  --build-arg ALPINE=3.23 \
  --build-arg REPOSITORY=3.23 \
  --build-arg OPENSSL=3.5.6-r0 \
  --platform linux/amd64,linux/arm/v6 \
  --output=type=registry \
  --tag sig9/alpine-openssl:latest \
  .
```

```sh
docker buildx build \
  --build-arg ALPINE=3.23 \
  --build-arg REPOSITORY=3.23 \
  --build-arg OPENSSL=3.5.6-r0 \
  --platform linux/amd64,linux/arm/v6 \
  --output=type=registry \
  --tag sig9/alpine-openssl:3.5.6-r0 \
  .
```

## Run the original Alpine

### Connect to the container shell

```sh
docker run -it -d --name alpine alpine:3.23.4
docker exec -it alpine ash
```

### Check the OpenSSL version

```sh
apk update
apk info openssl
```
