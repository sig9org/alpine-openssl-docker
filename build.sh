TAGS="--tag sig9/alpine-openssl:${OPENSSL}"
if [ -n "${LATEST}" ]; then
  TAGS="${TAGS} --tag sig9/alpine-openssl:latest"
fi

docker buildx build \
  --build-arg ALPINE=${ALPINE} \
  --build-arg REPOSITORY=${REPOSITORY} \
  --build-arg OPENSSL=${OPENSSL} \
  --platform ${PLATFORM} \
  --output=type=registry \
  $TAGS \
  .
