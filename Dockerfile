FROM openjdk:8-jdk-alpine

RUN mkdir -p /opt/build
ADD ./ /opt/build
WORKDIR /opt/build

RUN ./gradlew build --no-daemon \
    && cp ./build/libs/aws-workshop-demo.jar app.jar

VOLUME /tmp
EXPOSE 8080