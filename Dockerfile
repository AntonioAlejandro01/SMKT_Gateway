FROM openjdk:11

WORKDIR /opt/server

COPY ./target/smkt-gateway-1.0.0.jar ./app.jar

EXPOSE 8090

CMD [ "java", "-jar","./app.jar" ]
