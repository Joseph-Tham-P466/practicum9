FROM eclipse-temurin:17
WORKDIR /home
COPY ./target/gateway-service-0.0.1-SNAPSHOT.jar gateway-service.jar
ENTRYPOINT ["java", "-jar", "prime-service.jar"]