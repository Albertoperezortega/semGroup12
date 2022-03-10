# Pulling the latest version of openjdk image
FROM openjdk:latest
# Create a directory /tmp and any subdirectories leading to it
RUN mkdir -p /tmp
# Copying the .jar file from the local machine to the /tmp directory in the docker container
COPY ./target/seMethods-0.1.0.3-jar-with-dependencies.jar /tmp
# Stating where the docker should execute programs from the container
WORKDIR /tmp
# Telling the docker to execute the .jar that was copied earlier
ENTRYPOINT ["java", "-jar", "seMethods-0.1.0.3-jar-with-dependencies.jar"]
