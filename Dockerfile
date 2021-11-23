FROM openjdk:8-jdk-alpine
ENV APP_HOME=/usr/app/
WORKDIR $APP_HOME
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]