FROM ghcr.io/arroyosystems/arroyo:latest

WORKDIR /
COPY startup.sh .
RUN chmod +x /startup.sh

ENTRYPOINT ["/startup.sh"]