#!/bin/bash

NODE_VERSION=$1

NODE_PACKAGE="node-$NODE_VERSION.tar.gz"
TMP_FILE="/tmp/$NODE_PACKAGE"
TMP_DIR="/tmp/node-$NODE_VERSION"

# Install building tools
apk add --no-cache curl make gcc g++ python linux-headers paxctl libgcc libstdc++ gnupg

# Download and unpack node package
wget -cq https://npm.taobao.org/mirrors/node/$NODE_VERSION/$NODE_PACKAGE -O $TMP_FILE
cd /tmp/ && tar xzf $NODE_PACKAGE

# Building
cd $TMP_DIR \
  && ./configure \
  && make \
  && make install \
  && npm install -g cnpm --registry=https://registry.npm.taobao.org \
  && cnpm install -g npm \
  && cnpm install -g yarn

# Clean up temp files
rm -rf $TMP_FILE $TMP_DIR
