FROM openjdk:8-jdk-alpine
EXPOSE 8080
ARG JAR_FILE=target/demo-0.0.1.jar
RUN mvn clean package
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]