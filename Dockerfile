# OpenJDK 17 base image
FROM openjdk:17

# Work directory set kar rahe hain
WORKDIR /usr/app

# JAR file ko copy kar rahe hain
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

# Port expose kar rahe hain
EXPOSE 8000

# ENTRYPOINT set kar rahe hain
ENTRYPOINT ["java", "-jar", "app.jar"]
