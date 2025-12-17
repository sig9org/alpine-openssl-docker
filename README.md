# Docker image of Alpine with OpenSSL installed

- DockerHub
    - [alpine](https://hub.docker.com/_/alpine)

## How to use

### 3.23.0_openssl-3.5.4-r0

```sh
docker run -v "$(pwd)":/root -it -d --name alpine-openssl sig9/alpine-openssl:3.23.0_openssl-3.5.4-r0
```

### 3.16.9_openssl-1.1.1w-r1

```sh
docker run -v "$(pwd)":/root -it -d --name alpine-openssl sig9/alpine-openssl:3.16.9_openssl-1.1.1w-r1
```

## How to build

### 3.23.0_openssl-3.5.4-r0

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

### 3.22.2_openssl-3.5.4-r0

```sh
docker buildx build \
    --platform linux/amd64,linux/arm64 \
    --output=type=registry \
    --tag sig9/alpine-openssl:3.22.2_openssl-3.5.4-r0 \
    versions/3.22.2_openssl-3.5.4-r0/
```

### 3.16.9_openssl-1.1.1w-r1

```sh
docker buildx build \
    --platform linux/amd64,linux/arm64 \
    --output=type=registry \
    --tag sig9/alpine-openssl:3.16.9_openssl-1.1.1w-r1 \
    versions/3.16.9_openssl-1.1.1w-r1/
```

## Run the original Alpine

### Connect to the container shell

```sh
docker run -it -d --name alpine alpine:3.23.0
docker exec -it alpine ash
```

### Check the OpenSSL version

```sh
apk update
apk info openssl
```
