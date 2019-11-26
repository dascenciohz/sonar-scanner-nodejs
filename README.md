# NODEJS - SONARQUBE CLI SCANNER

The sonar-scanner is the scanner to use when there is no specific scanner for NodeJS.

NodeJS Default Version: 10
NodeJS Version Support: 8, 10, 11, 12, 13

## Build a docker image

```
docker build --build-arg NODEJS_VERSION=11 -t dascencio/sonar-scanner-nodejs:4.2 .
```

## Run a docker container

```
docker run --rm -e SONARQUBE_URL=http://mysonarqube.com dascencio/sonar-scanner-nodejs:4.2 bash

sonar-scanner -D [arguments]
```

# References

* [Nodejs Binary Distributions](https://github.com/nodesource/distributions/blob/master/README.md)
* [Sonar Scanner CLI](https://github.com/dascenciohz/sonar-scanner)
* [Sonarqube Site](https://www.sonarqube.org/)
* [Sonarqube Docs](https://docs.sonarqube.org/latest/)
