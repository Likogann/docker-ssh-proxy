FROM alpine:3.18

ENV SSH_IP 127.0.0.1
ENV SSH_PORT 22
ENV SSH_PASSWORD root
ENV SSH_PASSWORD password

RUN apk add sshpass openssh --no-cache
RUN mkdir -p ~/.ssh

CMD ["/bin/sh", "-c", "/usr/bin/ssh-keyscan -H -p $SSH_PORT $SSH_IP >> ~/.ssh/known_hosts && /usr/bin/sshpass -p $SSH_PASSWORD /usr/bin/ssh -4 -N -C -D 0.0.0.0:1080 -p $SSH_PORT $SSH_USERNAME@$SSH_IP"]