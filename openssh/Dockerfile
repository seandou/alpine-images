# docker build -t alpine-openssh .

FROM alpine-base

# Update repository and install ssh-server
RUN apk update \
    && apk add openssh \
    && rm -f /var/cache/apk/*

COPY sshd_config /etc/ssh/sshd_config
RUN chmod 600 /etc/ssh/sshd_config

RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' \
    && ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -N '' \
    && ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N '' \
    && ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key -N ''

RUN mkdir /var/run/sshd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
