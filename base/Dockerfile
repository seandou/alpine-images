# 
# https://github.com/CentOS/sig-cloud-instance-images
# https://github.com/CentOS/CentOS-Dockerfiles
# 
# docker build -t alpine-base .

FROM alpine:3.4

# Use aliyun repo
ADD repositories /etc/apk/repositories

# Update repository and install useful packages  
RUN apk update && \
    apk add bash

CMD ["/bin/bash"]