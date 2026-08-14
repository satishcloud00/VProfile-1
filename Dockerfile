FROM tomcat:9.0-jdk8-temurin

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/vprofile.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
