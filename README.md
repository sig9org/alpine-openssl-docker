# Docker image of Alpine with OpenSSL installed

## How to build

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
