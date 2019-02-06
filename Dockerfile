# used JDK11 because on jdk-8 I get SUREFIRE-1588. Debian Docker images are a bit dead to me :(
FROM maven:3.6.0-jdk-11
LABEL maintainer="Baptiste Mathus <batmat@batmat.net>"

RUN mkdir /project
VOLUME /project/work
ADD . /project

WORKDIR /project
CMD ["mvn", "--show-version", "clean", "package", "exec:java"]
