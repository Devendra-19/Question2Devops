FROM maven:3.8.1-openjdk-11-slim

WORKDIR /usr/src/app

COPY pom.xml .

COPY src ./src

RUN mvn clean test

RUN mkdir -p /usr/src/app/target/surefire-reports
WORKDIR /usr/src/app/target/surefire-reports


CMD ["mvn","test"]
