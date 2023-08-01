FROM    ubuntu
MAINTAINER Medha
WORKDIR    /app
LABEL       proj_name=b6-java
RUN       apt-get update && \ apt-get install -y openjdk-11-jdk
COPY      target/my-app-1.0-SNAPSHOT.jar .
CMD       [ "java" , "jar", "my-app-1.0-SNAPSHOT.jar" ]
