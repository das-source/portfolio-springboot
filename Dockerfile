# Use Java 8 base image
FROM openjdk:8-jdk-alpine

# Set working directory
WORKDIR /app

# Copy WAR file into container
COPY target/portfolio-0.0.1-SNAPSHOT.war app.war

# Expose the port your app uses (default 8080)
EXPOSE 8080

# Start Spring Boot WAR
CMD ["java", "-jar", "app.war"]

