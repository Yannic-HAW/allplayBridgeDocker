FROM openjdk:8-jdk-alpine

MAINTAINER Yannic Wilkening

RUN apk add --update alpine-sdk

COPY AllplayBridge.jar /usr
COPY liballjoyn_java.so /usr/lib
WORKDIR /usr
CMD ["java", "-jar", "AllplayBridge.jar"]