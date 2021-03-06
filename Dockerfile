FROM maven:3.3.9-jdk-8-onbuild

RUN mvn assembly:single

# yet another hardcode, but perhaps with pom.xml tweak we could
# install it to a known location under known name (e.g. /usr/src/app/lib/ChatService.jar
ENTRYPOINT ["java", "-jar", "/usr/src/app/target/ChatBroadcastSSE-1.0-jar-with-dependencies.jar"]
