# 
# https://github.com/CentOS/sig-cloud-instance-images
# https://github.com/CentOS/CentOS-Dockerfiles
# 
# docker build -t alpine-base:3.4 . && docker tag alpine-base:3.4 alpine-base:latest

FROM alpine:3.4

# Use aliyun repo
ADD repositories /etc/apk/repositories

# Update repository and install useful packages  
RUN apk update \
    && apk add bash bash-completion \
    && apk add tzdata \
    && apk add openssl \
    && apk add tree vim git \
    && apk add htop \
    && rm -f /var/cache/apk/*

# Set timezone
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Copy dot files
COPY dotfiles/bashrc /root/.bashrc
COPY dotfiles/gitconfig /root/.gitconfig

# Set work directory
WORKDIR /root

CMD ["/bin/bash"]
