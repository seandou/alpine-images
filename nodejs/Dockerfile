# docker build -t alpine-nodejs:<version> .

FROM alpine-base:latest

# Build node
COPY build-node.sh /build-node.sh
RUN bash /build-node.sh

# Set work directory
WORKDIR /root

CMD ["/bin/bash"]
