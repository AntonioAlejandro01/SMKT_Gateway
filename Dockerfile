FROM maven:3-openjdk-11 as Builder

WORKDIR /build

COPY pom.xml .

RUN mvn clean package -Dmaven.test.skip -Dmaven.main.skip -Dspring-boot.repackage.skip && rm -r target/

COPY src ./src

RUN mvn clean package  -Dmaven.test.skip

RUN mv ./target/smkt-gateway.jar /app.jar

FROM openjdk:11-jre-slim

WORKDIR /opt/server

COPY --from=Builder /app.jar ./app.jar

ENV PORT=8090
ENV EUREKA_URL=http://smkt-eureka:8761/eureka

EXPOSE ${PORT}

CMD java -jar app.jar --server.port="${PORT}" --eureka.client.service-url.defaultZone="${EUREKA_URL}"