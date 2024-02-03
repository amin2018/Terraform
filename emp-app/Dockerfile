FROM anapsix/alpine-java

ARG MYSQL_HOST
ARG MYSQL_USER
ARG name

ENV MYSQL_HOST $MYSQL_HOST
ENV MYSQL_USER $MYSQL_USER
ENV MYSQL_PWD $MYSQL_PWD

COPY target/springboot-0.0.1-SNAPSHOT.jar /home/emp_mng_system_app.jar

EXPOSE 8080

CMD ["java","-jar","/home/emp_mng_system_app.jar"]
