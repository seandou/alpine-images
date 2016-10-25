# docker build -t alpine-nodejs .

FROM alpine-base:latest

# Build node
COPY build-node.sh /build-node.sh
RUN sh /build-node.sh && rm /build-node.sh

# Set work directory
WORKDIR /root

CMD ["/bin/bash"]
