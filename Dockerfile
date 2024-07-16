FROM maven:3.8.1-openjdk-11-slim

WORKDIR /usr/src/app

COPY pom.xml .

COPY src ./src

RUN mvn clean test

CMD ["mvn","test"]
