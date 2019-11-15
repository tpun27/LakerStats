# Laker Stats

A [Spring Boot](https://spring.io/projects/spring-boot) Web App with [JSP](https://en.wikipedia.org/wiki/JavaServer_Pages). It displays basketball statistics from the NBA Lakers.

### Importing The Project
Clone the repository. Import the project into IntelliJ using [Maven](https://maven.apache.org/) and the [pom.xml](https://maven.apache.org/guides/introduction/introduction-to-the-pom.html).

### Running The Project:

```
cd <TO_YOUR_PROJECT_DIR>
```

```
mvn clean package spring-boot:repackage
```

```
java -jar target/<YOUR_PROJECT_CREATED_JAR>
```

### Project Links ###
* http://localhost:8080/roster
* http://localhost:8080/player/<ID> (e.g. http://localhost:8080/player/23)
