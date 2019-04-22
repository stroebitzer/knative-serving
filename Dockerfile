FROM openjdk:11.0.2-jdk-stretch

WORKDIR /srv/knative-serving

COPY build/libs/knative-serving.jar /srv/knative-serve/knative-serving.jar

ENTRYPOINT [ "java", "-jar", "knative-serving.jar" ]
