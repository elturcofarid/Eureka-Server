FROM openjdk:14.0-jdk-slim
EXPOSE 8761
#COPY $path /
ADD ./target/Eureka-Server-0.0.1-SNAPSHOT.jar  servicio-eureka.jar 
ENTRYPOINT ["java", "-jar", "/servicio-eureka.jar"]
