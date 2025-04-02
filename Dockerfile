FROM openjdk:17
ARG JAR_FILE=target/*.jar
# JAR file ko copy kar rahe hain
COPY target/demo-app.jar  /usr/app

# Working directory set kar rahe hain
WORKDIR /usr/app

EXPOSE 8000
# ENTRYPOINT
ENTRYPOINT ["java", "-jar", "/app.jar"]
