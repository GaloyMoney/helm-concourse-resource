FROM alpine

RUN apk update && \
  apk add bash curl jq openssl

RUN curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash

RUN mkdir -p /opt/concourse
COPY ./concourse/* /opt/resource/

CMD ["helm --help"]
