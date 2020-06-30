FROM openjdk:14.0-jdk-slim
EXPOSE 8761
COPY $path /
ENTRYPOINT ["java", "-jar", "/servicio-eureka.jar"]