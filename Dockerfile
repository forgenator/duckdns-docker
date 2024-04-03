FROM alpine:latest
LABEL maintainer="me@myemail.com"
RUN \
  apk update && \
  apk add --no-cache \
  curl moreutils
COPY entrypoint.sh /tmp/entrypoint.sh
ENTRYPOINT ["/tmp/entrypoint.sh"]