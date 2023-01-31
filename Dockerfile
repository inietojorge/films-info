FROM bellsoft/liberica-openjdk-alpine:1.8.0
ENV MYSQL_HOST=sql_server_hidden
ENV SPRING_PROFILES_ACTIVE=mysql
WORKDIR /app
COPY target/films-info-0.0.1-SNAPSHOT.jar .
ENTRYPOINT ["java", "-jar", "films-info-0.0.1-SNAPSHOT.jar"]