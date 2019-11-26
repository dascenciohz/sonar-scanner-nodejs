FROM dascencio/sonar-scanner-cli:4.2

LABEL maintainer="Daniel Ascencio <daniel.ascencio.hz@gmail.com>"

ARG NODEJS_VERSION=10

RUN curl -sL https://deb.nodesource.com/setup_${NODEJS_VERSION}.x | bash - \
    && apt-get install -y nodejs build-essential \
    && apt-get -y autoremove