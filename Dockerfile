FROM openjdk:11

WORKDIR /opt/server

COPY ./target/smkt-gateway-0.0.1.jar ./app.jar

EXPOSE 8090

CMD [ "java", "-jar","./app.jar" ]
