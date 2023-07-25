#
# Build stage
#
FROM maven:3.6.3-jdk-11-openj9 AS build
COPY . .
RUN mvn clean package -DskipTests

#
# Package stage
#
FROM openjdk:11-alpine
COPY --from=build /target/demoCloud-0.0.1-SNAPSHOT.jar demo.jar
# ENV PORT=8080
EXPOSE 8081
ENTRYPOINT ["java","-jar","demo.jar"]

