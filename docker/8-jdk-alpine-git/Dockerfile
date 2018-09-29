FROM openjdk:8-jdk-alpine
RUN apk add curl
RUN apk add git
RUN apk add procps
RUN apk add maven
ADD spring-boot-maven spring-boot-maven
WORKDIR spring-boot-maven
RUN ./mvnw dependency:resolve dependency:resolve-plugins
WORKDIR /
