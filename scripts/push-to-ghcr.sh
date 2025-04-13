set -u
: "$VERSION"
: "$ACCESS_TOKEN"

echo "$ACCESS_TOKEN" | docker login ghcr.io --username josephtham --password-stdin
docker push ghcr.io/josephtham/prime-service:$VERSION
