FROM amazoncorretto:17
MAINTAINER EDO
COPY target/demoCloud-0.0.1-SNAPSHOT.jar demo-cloud.jar
ENTRYPOINT ["java","-jar", "/demo-cloud.jar"]
