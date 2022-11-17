FROM openjdk:11
EXPOSE 8088
#ARG JAR_FILE=target/springboot-docker-0.0.1-SNAPSHOT.jar
#ADD ${JAR_FILE} springboot-docker-demo.jar
ADD target/springboot-docker-demo.jar springboot-docker-demo.jar
ENTRYPOINT ["java", "-jar", "/springboot-docker-demo.jar"]