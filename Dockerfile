FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get dist-upgrade -y --no-install-recommends && \
    apt-get install apt-mirror ca-certificates -y --no-install-recommends && \
    update-ca-certificates

VOLUME /var/spool/apt-mirror

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
CMD entrypoint.sh
