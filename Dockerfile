
# VERSION !
# FROM openjdk:8-jdk-alpine
# MAINTAINER baeldung.com
# COPY build/libs/grails-docker-0.1.war grails-docker-0.1.war
# ENTRYPOINT ["java","-jar","-Xdebug -Xrunjdwp:server=y,transport=dt_socket,suspend=n","/grails-docker-0.1.war"]

# VERSION 2
#FROM openjdk:8-jdk-alpine
##RUN addgroup -S spring && adduser -S spring -G spring
##USER spring:spring
#ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} app.war
#ENTRYPOINT ["java","-jar","/app.war"]

# version 3
##FROM openjdk:8-jdk-alpine
##RUN addgroup -S spring && adduser -S spring -G spring
##USER spring:spring
##ARG DEPENDENCY=build/dependency
##COPY ${DEPENDENCY}/WEB-INF/lib /app/lib
##COPY ${DEPENDENCY}/META-INF /app/META-INF
##COPY ${DEPENDENCY}/WEB-INF/classes /app
##ENTRYPOINT ["java","-cp","app:app/lib/*","grails.docker.Application"]

# version 4
##FROM openjdk:8-jdk-alpine
###RUN addgroup -S spring && adduser -S spring -G spring
###USER spring:spring
##
###ARG DEPENDENCY=build/dependency
###RUN mkdir -p ${DEPENDENCY}
###RUN (cd ${DEPENDENCY}; jar -xf ../libs/*.war)
##
###RUN mkdir -p ${DEPENDENCY} && (cd ${DEPENDENCY}; jar -xf ../libs/*.war)
##
##ARG DEPENDENCY=build/dependency
##RUN mkdir -p  ${DEPENDENCY}
##
##RUN addgroup -S spring && adduser -S spring -G spring
##RUN chown spring ${DEPENDENCY}
##USER spring:spring
##
##COPY ${DEPENDENCY}/WEB-INF/lib /app/lib
##COPY ${DEPENDENCY}/META-INF /app/META-INF
##COPY ${DEPENDENCY}/WEB-INF/classes /app
##ENTRYPOINT ["java","-cp","app:app/lib/*","grails.docker.Application"]

# version 5
FROM openjdk:8-jdk-alpine
#RUN addgroup -S spring && adduser -S spring -G spring
#USER spring:spring
ARG JAR_FILE=build/lib/*.war
COPY ${JAR_FILE} app.war
ENTRYPOINT ["java","-Dgrails.env=dev","-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8000","-jar","/app.war"]