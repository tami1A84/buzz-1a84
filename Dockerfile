FROM ghcr.io/block/buzz:main

USER root
RUN mkdir -p /srv/buzz/web/.well-known
COPY nostr.json /srv/buzz/web/.well-known/nostr.json
RUN chown -R buzz:buzz /srv/buzz/web/.well-known

USER buzz:buzz
