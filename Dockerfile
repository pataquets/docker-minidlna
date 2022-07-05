FROM pataquets/ubuntu:focal

ARG DEBIAN_FRONTEND=noninteractive
RUN \
  apt-get update && \
  apt-get install -y minidlna && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/

ENTRYPOINT [ "minidlnad" ]
CMD [ "-h" ]
