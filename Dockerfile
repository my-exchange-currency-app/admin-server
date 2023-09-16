FROM openjdk:8-jdk-alpine
LABEL maintainer="ahmedbaz1024"
WORKDIR /usr/local/bin/
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} admin-server.jar
EXPOSE 9090
CMD ["java","-Dspring.profiles.active=dev","-jar","admin-server.jar"]
