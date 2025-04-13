set -u
: "$VERSION"

docker build -t ghcr.io/josephtham/prime-service:$VERSION --file ./Dockerfile .