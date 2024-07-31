FROM tomcat:8
LABEL DocKub=today
ENV NEXUS_URL=http://ec2-18-144-125-155.us-west-1.compute.amazonaws.com:8081/repository/maven-releases/in/javahome/myweb/0.0.5/myweb-0.0.5.war
RUN apt-get update && apt-get install -y wget
RUN wget -O /usr/local/tomcat/webapps/myweb.war ${NEXUS_URL}
EXPOSE 8080
ENTRYPOINT ["catalina.sh", "run"]
