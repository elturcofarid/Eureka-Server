FROM openjdk:14.0-jdk-slim
EXPOSE 8761
#ADD ./target/spring-boot-eureka-0.0.1-SNAPSHOT.jar servicio-eureka.jar 
COPY $path /
ENTRYPOINT ["java", "-jar", "/servicio-eureka.jar"]