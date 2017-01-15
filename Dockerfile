FROM openjdk:8-jdk-alpine

MAINTAINER Yannic Wilkening

COPY AllplayBridge.jar /usr
COPY liballjoyn_java.so /usr/lib
WORKDIR /usr
CMD ["java", "-jar", "AllplayBridge.jar"]