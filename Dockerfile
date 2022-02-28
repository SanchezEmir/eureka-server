FROM adoptopenjdk/openjdk11:latest
VOLUME /tmp
ARG JAR_FILE=target/eureka-server-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} eureka-server.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh","-c","java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /eureka-server.jar" ]