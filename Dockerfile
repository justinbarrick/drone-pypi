FROM bmv437/flynn-cli:alpine

COPY run.sh /run.sh

ENTRYPOINT ["/run.sh"]
