FROM openjdk:8-jdk-alpine
MAINTAINER baeldung.com
COPY build/libs/grails-docker-0.1.war grails-docker-0.1.war
ENTRYPOINT ["java","-jar","/grails-docker-0.1.war"]