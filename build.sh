docker buildx build \
  --build-arg ALPINE=${ALPINE} \
  --build-arg REPOSITORY=${REPOSITORY} \
  --build-arg OPENSSL=${OPENSSL} \
  --platform ${PLATFORM} \
  --output=type=registry \
  --tag sig9/alpine-openssl:${OPENSSL} \
  .