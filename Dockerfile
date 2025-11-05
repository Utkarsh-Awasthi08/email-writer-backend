# Step 1: Use lightweight JVM image
FROM eclipse-temurin:21-jdk-alpine

# Set application directory
WORKDIR /app

# Copy built jar into docker image
COPY target/email-writer-0.0.1-SNAPSHOT.jar app.jar

# Expose Spring Boot default port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]