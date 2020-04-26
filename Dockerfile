FROM tomcat:8
# Take the jar and copy to webapps of tomcat
COPY target/vedikas-0.0.1-SNAPSHOT*.jar /usr/local/tomcat/webapps/vedikas-0.0.1-SNAPSHOT.jar
