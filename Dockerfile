FROM openjdk:11.0.2-jdk-stretch

WORKDIR /srv/knative-serve

COPY build/libs/knative-serve.jar /srv/knative-serve/knative-serve.jar

ENTRYPOINT [ "java", "-jar", "knative-serve.jar" ]
