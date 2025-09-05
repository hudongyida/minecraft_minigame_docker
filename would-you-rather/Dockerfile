FROM openjdk:8-jre-slim
LABEL maintainer="hudong"
COPY server /server
WORKDIR /server
CMD ["java", "-Xms1G", "-Xmx2G", "-XX:MaxMetaspaceSize=1G", "-jar", "paper-1.16.5-794.jar", "--nogui"]
