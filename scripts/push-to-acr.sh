set -u
: "$CONTAINER_REGISTRY"
: "$VERSION"
: "$CONTAINER_REGISTRY_UN"
: "$CONTAINER_REGISTRY_PW"

echo "$CONTAINER_REGISTRY_PW" | docker login --username $CONTAINER_REGISTRY_UN --password-stdin $CONTAINER_REGISTRY
docker tag ghcr.io/josephtham/prime-service:$VERSION $CONTAINER_REGISTRY/prime-service:$VERSION
docker push $CONTAINER_REGISTRY/prime-service:$VERSION

