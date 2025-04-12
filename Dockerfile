
FROM ghcr.io/arroyosystems/arroyo:latest

WORKDIR /
COPY startup.sh .

ENTRYPOINT ["/startup.sh"]