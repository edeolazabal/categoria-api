#
# Build stage
#
FROM maven:3.6.3-jdk-11-slim AS build
COPY . .
RUN mvn clean package demoCloud:demoCloud  -DskipTests

#
# Package stage
#
FROM openjdk:11
COPY --from=build /target/demoCloud-0.0.1-SNAPSHOT.jar demoCloud.jar
# ENV PORT=8080
EXPOSE 8081
ENTRYPOINT ["java","-jar","/demoCloud.jar"]

#FROM eclipse-temurin:17-jdk-alpine
#VOLUME /tmp
#COPY target/*.jar demoCloud.jar
#ENTRYPOINT ["java","-jar","/demoCloud.jar"]
#EXPOSE 8081
