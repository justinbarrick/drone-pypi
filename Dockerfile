FROM bmv437/flynn-cli:alpine

RUN apk update && apk add bash
COPY run.sh /run.sh

ENTRYPOINT ["/run.sh"]
