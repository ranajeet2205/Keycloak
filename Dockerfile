FROM maven:3.6.3-jdk-8 AS build
RUN mvn clean package
COPY /target/Keycloak-0.0.1-SNAPSHOT.jar /app/app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app/app.jar"]