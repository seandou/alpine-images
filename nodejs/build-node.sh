#!/bin/sh

NODE_VERSION="v4.6.1"

NODE_PACKAGE="node-$NODE_VERSION.tar.gz"
TMP_FILE="/tmp/$NODE_PACKAGE"
TMP_DIR="/tmp/node-$NODE_VERSION"

# Install building tools
apk add --no-cache curl make gcc g++ python linux-headers paxctl libgcc libstdc++ gnupg

# Download and unpack node package
wget -c https://nodejs.org/dist/$NODE_VERSION/$NODE_PACKAGE -O $TMP_FILE
cd /tmp/ && tar xzf $NODE_PACKAGE

# Building
cd $TMP_DIR && ./configure && make && make install

# Clean up temp files
rm -rf $TMP_FILE $TMP_DIR

# Install cnpm、yarn and update npm
npm install -g cnpm
npm install -g yarn
cnpm install -g npm
