FROM smallstep/step-cli:latest AS base
FROM traefik:latest
RUN apk add bash
COPY traefik-entrypoint.sh /wrapped-entrypoint.sh
RUN chmod 700 /wrapped-entrypoint.sh
ENTRYPOINT ["/wrapped-entrypoint.sh"]