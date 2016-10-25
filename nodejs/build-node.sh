#!/bin/sh

# Install building tools
apk add --no-cache curl make gcc g++ python linux-headers paxctl libgcc libstdc++ gnupg

# Download and unpack node package
wget -c https://nodejs.org/dist/v4.6.1/node-v4.6.1.tar.gz -O /tmp/node-v4.6.1.tar.gz
cd /tmp/ && tar xzf node-v4.6.1.tar.gz

# Building
cd /tmp/node-v4.6.1/ && ./configure && make && make install

# Clean up temp files
rm -rf /tmp/node-v4.6.1.tar.gz /tmp/node-v4.6.1

# Update npm and install cnpm
npm install -g npm cnpm
