# 
# Build command:
# v=<version> && docker build -t alpine-nodejs:$v . --build-arg version=$v
# eg. 
# v=v6.9.1 && docker build --no-cache --build-arg version=$v -t alpine-nodejs:$v .
# 

FROM seandou/alpine-base:latest

ARG version

# Build node
COPY build-node.sh /build-node.sh
RUN bash /build-node.sh $version && rm /build-node.sh

CMD ["/bin/bash"]
