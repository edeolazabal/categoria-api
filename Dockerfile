#
# Build stage
#
FROM maven:3.6.3-jdk-11-slim AS build
COPY . .
RUN mvn clean package demoCloud:demoCloud -am -DskipTests -e -X

#
# Package stage
#
FROM openjdk:11
COPY --from=build /target/demoCloud-0.0.1-SNAPSHOT.jar demo.jar
# ENV PORT=8080
EXPOSE 8081
ENTRYPOINT ["java","-jar","/demoCloud.jar"]

