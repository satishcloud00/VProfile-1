## Prerequisites
- JDK 1.8 or later
- Maven 3 or later
- MySQL 5.6 or later

## Technologies 
- Spring MVC
- Spring Security
- Spring Data JPA
- Maven
- JSP
- MySQL
## Database
Here,we used Mysql DB 
MSQL DB Installation Steps for Linux ubuntu 14.04:
- $ sudo apt-get update
- $ sudo apt-get install mysql-server

Then look for the file :
- /src/main/resources/accountsdb
- accountsdb.sql file is a mysql dump file.we have to import this dump to mysql db server
- > mysql -u <user_name> -p accounts < accountsdb.sql

## SonarQube

This project uses the SonarScanner for Maven. Do not use the old Jenkins
`Execute SonarQube Scanner` properties from older tutorials.

Build, test, and analyze from Jenkins with:

```sh
mvn -B clean verify sonar:sonar   -Dsonar.projectKey=vprofile   -Dsonar.host.url=http://SONARQUBE_HOST:9000   -Dsonar.token="$SONAR_TOKEN"
```

The Maven build produces the compiled classes in `target/classes` and the
JaCoCo XML report in `target/site/jacoco/jacoco.xml`, so SonarQube can discover
the required paths automatically.

For a Jenkins installation, store the SonarQube token as a Jenkins Secret Text
credential and inject it as `SONAR_TOKEN`; do not put the token in `pom.xml`,
Git, or this README.


