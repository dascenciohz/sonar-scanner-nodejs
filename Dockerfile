FROM debian:stretch-slim

LABEL maintainer="Daniel Ascencio <daniel.ascencio.hz@gmail.com>"

ENV SONARQUBE_URL="http://localhost:9000"

ARG NODEJS_VERSION=10
ARG NODEJS_URL="https://deb.nodesource.com/setup_${NODEJS_VERSION}.x"
ARG SONARQUBE_SCANNER_VERSION="4.2.0.1873-linux"
ARG SONARQUBE_SCANNER_URL="https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SONARQUBE_SCANNER_VERSION}.zip"

# install essential packages
RUN apt-get update \
    && apt-get -y install curl unzip \
    && apt-get -y autoremove

# install nodejs and npm
RUN curl -sL ${NODEJS_URL} | bash - \
    && apt-get install -y nodejs build-essential \
    && apt-get -y autoremove

# install sonar-scanner
RUN curl --insecure -o sonarqube-scanner.zip -L ${SONARQUBE_SCANNER_URL} \
    && unzip sonarqube-scanner.zip \
    && mv sonar-scanner-${SONARQUBE_SCANNER_VERSION} /usr/lib/sonar-scanner \
    && ln -s /usr/lib/sonar-scanner/bin/sonar-scanner /usr/local/bin/sonar-scanner \
    && rm -f sonarqube-scanner.zip