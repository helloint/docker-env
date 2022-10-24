#https://hub.docker.com/_/tomcat
docker run --name tomcat \
  -v "$(pwd)"/webapps:/usr/local/tomcat/webapps \
  -v /CA:/usr/local/tomcat/CA:ro \
  -v "$(pwd)"/conf/server.xml:/usr/local/tomcat/conf/server.xml:ro \
  -v "$(pwd)"/conf/web.xml:/usr/local/tomcat/conf/web.xml:ro \
  -v /Users/helloint/workspace/nbaalt/build:/usr/local/tomcat/apps/nbaalt:ro \
  -p 8082:8080 \
  -p 8445:8443 \
  -d tomcat:8.5
