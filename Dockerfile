FROM performa/shaker:1.2.0

LABEL maintainer="dev@mirantis.com" MAINTENANCE_VERSION=2019-02-08

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt upgrade -yq && \
    DEBIAN_FRONTEND=noninteractive apt install -yq sudo \
    qemu-utils kpartx squashfs-tools

COPY bin /usr/local/bin/
COPY scenarios /opt/shaker/scenarios

ENTRYPOINT ["entrypoint.sh"]
