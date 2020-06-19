# https://spring.io/guides/gs/spring-boot-docker/
FROM 10.119.254.200:32011/library/openjdk:8-jdk-alpine
VOLUME /tmp
# ARG jar_file
ARG http_port=8080

# Copy jar from current directory
COPY target/gs-rest-service-0.1.0.jar app.jar

ENTRYPOINT ["java","-jar","app.jar"]

EXPOSE ${http_port}
