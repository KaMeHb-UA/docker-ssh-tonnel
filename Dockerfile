FROM alpine

RUN apk add --no-cache openssh-client

ENTRYPOINT ssh \
    -i \
    /id \
    -o \
    StrictHostKeyChecking=no \
    -o \
    ServerAliveInterval=1 \
    -L \
    $PORT:127.0.0.1:$PORT \
    -NnTg4 \
    $USER@$HOST
