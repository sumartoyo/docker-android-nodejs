FROM runmymind/docker-android-sdk:latest

ENV NODEJS_VERSION=6.14.2 \
    PATH=$PATH:/opt/node/bin

WORKDIR "/opt/node"

RUN curl -sL https://nodejs.org/dist/v${NODEJS_VERSION}/node-v${NODEJS_VERSION}-linux-x64.tar.gz | tar xz --strip-components=1 && \
    npm install -g npm
