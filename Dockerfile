FROM openjdk:11

ADD build/libs/DockerJavaHelloWorld-1.0-SNAPSHOT.jar HelloWorld.jar

ENTRYPOINT ["java", "-jar", "HelloWorld.jar"]
