FROM openjdk:8-jdk-alpine

MAINTAINER Yannic Wilkening

RUN apk add --update alpine-sdk

COPY AllplayBridge.jar /usr
COPY liballjoyn_java.so ./usr/lib/

RUN chmod 777 ./usr/lib/liballjoyn_java.so

WORKDIR /usr
CMD ["java", "-jar", "AllplayBridge.jar"]