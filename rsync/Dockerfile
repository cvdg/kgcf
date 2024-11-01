FROM debian:bookworm
LABEL org.opencontainers.image.authors="Cees van de Griend <cees.van.de.griend@griend.eu>"

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends rsync && \
  apt-get clean autoclean && \
  apt-get autoremove -y && \
  rm -rf /var/lib/apt/lists/*

EXPOSE 873

ADD ./rsync.conf /etc/rsync.conf

ADD ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
