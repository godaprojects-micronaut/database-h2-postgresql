FROM openjdk:14-alpine
COPY target/database-h2-postgresql-*.jar database-h2-postgresql.jar
EXPOSE 8080
CMD ["java", "-Dcom.sun.management.jmxremote", "-Xmx128m", "-jar", "database-h2-postgresql.jar"]