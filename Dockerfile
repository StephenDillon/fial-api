# Use the official OpenJDK base image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the jar file from your host to your current location (i.e., /app in the container)
COPY build/libs/fial-api-0.0.1-SNAPSHOT.jar fial-api-0.0.1-SNAPSHOT.jar

# Set the command to run your application using the java command
CMD ["java", "-jar", "fial-api-0.0.1-SNAPSHOT.jar"]
