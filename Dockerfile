#
# Build stage
#
FROM openjdk:11 AS build
COPY . .
RUN mvn clean package -DskipTests

#
# Package stage
#
FROM openjdk:11
COPY --from=build /target/demoCloud-0.0.1-SNAPSHOT.jar demo.jar
# ENV PORT=8080
EXPOSE 8081
ENTRYPOINT ["java","-jar","demo.jar"]

