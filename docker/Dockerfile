FROM openjdk:8-jdk-alpine
RUN apk add git
RUN apk add procps
ADD spring-boot-maven spring-boot-maven
WORKDIR spring-boot-maven
RUN ./mvnw dependency:resolve dependency:resolve-plugins
WORKDIR /
