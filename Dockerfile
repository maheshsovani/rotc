FROM openjdk:alpine

ADD metadata-service.jar /opt/metadata-service.jar
ENTRYPOINT [ "java", "-jar", "/opt/metadata-service.jar"]