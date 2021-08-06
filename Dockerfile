# https://spring.io/guides/gs/spring-boot-docker/
#FROM 172.16.58.154:31104/library/jdk8-arm:latest
FROM 172.30.43.89:30000/library/java:8
VOLUME /tmp
# ARG jar_file
ARG http_port=8080

# Copy jar from current directory
COPY target/gs-rest-service-0.1.0.jar app.jar

ENTRYPOINT ["java","-jar","app.jar"]

EXPOSE ${http_port}
