FROM openjdk:21
LABEL maintainer="hudong"
COPY server /server
WORKDIR /server
CMD ["java", "-Xms1G", "-Xmx2G", "-XX:MaxDirectMemorySize=3G", "-jar", "paper-1.21.4-232.jar", "--nogui"]
