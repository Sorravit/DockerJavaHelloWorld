FROM openjdk:11

ADD build/libs/DockerJavaHelloWorld-1.0-SNAPSHOT.jar HelloWorld.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "HelloWorld.jar"]