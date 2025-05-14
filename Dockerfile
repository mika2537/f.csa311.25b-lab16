FROM eclipse-temurin:21

# Create directories
RUN mkdir -p /opt/app /opt/front-end/build

# Copy backend jar
COPY back-end/target/back-end-1.0-SNAPSHOT-jar-with-dependencies.jar /opt/app/app.jar

# Copy frontend static files
COPY front-end/build /opt/front-end/build

# Set working directory
WORKDIR /opt/app

EXPOSE 8080

# Run backend
CMD ["java", "-jar", "app.jar"]