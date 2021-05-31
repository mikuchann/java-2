# https://spring.io/guides/gs/spring-boot-docker/
#FROM 172.16.58.154:31104/library/jdk8-arm:latest
FROM 172.16.16.11:30000/library/jdk8:latest
VOLUME /tmp
# ARG jar_file
ARG http_port=8080

# Copy jar from current directory
COPY target/gs-rest-service-0.1.0.jar app.jar

ENTRYPOINT ["java","-jar","app.jar"]

EXPOSE ${http_port}
