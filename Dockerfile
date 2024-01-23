# Stage 1: Build the application using Maven
FROM maven:3.8.4-openjdk-11-slim AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Use an official OpenJDK image as the base image
FROM openjdk:11-jre-slim
WORKDIR /app

# Copy the built JAR file from the build stage to the container
COPY --from=build /app/target/*.jar ./my-application.jar

# Set the command to run the application
CMD ["java", "-jar", "my-application.jar"]


# docker ps // show all images
# docker build -t spring-boot:1.0 . // build imagedocker
# docker run -d -p 80:8080 -t spring-boot:1.0 // run image
# docker stop [containerId] // stop image
# docker start [containerId] // start image
# docker rmi [imageName] -f
#docker system prune -a