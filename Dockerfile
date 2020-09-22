FROM openjdk:11

WORKDIR /opt/server

COPY ./target/gateway-0.0.1.jar ./app.jar

EXPOSE 8090

CMD [ "java", "-jar","./app.jar" ]
