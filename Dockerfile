# Container image that runs your code
FROM alpine:3.10

LABEL version="0.0.1"
LABEL repository="https://github.com/radzima-green-travel/credentials-scan-action"
LABEL homepage="https://github.com/radzima-green-travel/credentials-scan-action"
LABEL maintainer="Radzima green travel"

RUN apk add --update make
RUN apk add --update bash
RUN apk --no-cache add git
RUN git clone https://github.com/awslabs/git-secrets.git
WORKDIR git-secrets
RUN make install
WORKDIR /
RUN ls -la
RUN git secrets --register-aws

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
