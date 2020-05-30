FROM  frolvlad/alpine-java:jdk8-slim
EXPOSE 8080
RUN mkdir app/
ADD . /app/

WORKDIR /app/
RUN ./gradlew build
ENTRYPOINT ["java", "-jar", "/app/build/libs/gephi-grpc-0.1.0.jar"]
