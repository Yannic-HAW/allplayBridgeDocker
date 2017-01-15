FROM ubuntu:16.04

MAINTAINER Yannic Wilkening

RUN apt-get update && apt-get install -y \
  default-jre \
  default-jdk \
  build-essential

COPY AllplayBridge.jar /usr
COPY liballjoyn_java.so /usr/lib/

WORKDIR /usr
CMD ["java", "-jar", "AllplayBridge.jar"]