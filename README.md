# Docker image of Alpine with OpenSSL installed

- DockerHub
    - [alpine](https://hub.docker.com/_/alpine)

## How to build

### alpine-3.23.0_openssl-3.5.4-r0

```sh
docker buildx build \
    --platform linux/amd64,linux/arm64 \
    --output=type=registry \
    --tag sig9/alpine-openssl:latest \
    versions/3.23.0_openssl-3.5.4-r0/
```

```sh
docker buildx build \
    --platform linux/amd64,linux/arm64 \
    --output=type=registry \
    --tag sig9/alpine-openssl:3.23.0_openssl-3.5.4-r0 \
    versions/3.23.0_openssl-3.5.4-r0/
```

### 3.23.0

```sh
docker buildx build \
    --platform linux/amd64,linux/arm64 \
    --output=type=registry \
    --tag sig9/alpine-openssl:latest \
    versions/3.5.3/
```

```sh
docker buildx build \
    --platform linux/amd64,linux/arm64 \
    --output=type=registry \
    --tag sig9/alpine-openssl:3.5.3 \
    versions/3.5.3/
```

### 3.5.3

```sh
docker buildx build \
    --platform linux/amd64,linux/arm64 \
    --output=type=registry \
    --tag sig9/alpine-openssl:latest \
    versions/3.5.3/
```

```sh
docker buildx build \
    --platform linux/amd64,linux/arm64 \
    --output=type=registry \
    --tag sig9/alpine-openssl:3.5.3 \
    versions/3.5.3/
```

### 1.1.1w

```sh
docker buildx build \
    --platform linux/amd64,linux/arm64 \
    --output=type=registry \
    --tag sig9/alpine-openssl:1.1.1w \
    versions/1.1.1w/
```

## Run the original Alpine

```sh
docker run -it -d --name alpine alpine:3.23.0
docker exec -it alpine ash
```

```sh
apk update
apk info openssl
```
