# Tomcat
## Features
Support: HTTPS (cert requires), SPA, CORS  
Ports: 8082/8445  

## Instruction
The template contains 2 apps:
1. Inline `app`  
   It is under `webapps` dir. Tomcat by default serves `webapps` dir.  
   You can build your app and drop into the `webapps`.

3. Externalized `nbaalt`  
```
# install.sh
  -v /Users/helloint/workspace/nbaalt/build:/usr/local/tomcat/extapps/nbaalt:ro \
```
```
# conf/server.xml
<Context path="nbaalt" docBase="/usr/local/tomcat/apps/nbaalt" privileged="true" reloadable="false">
    <!--macOS to support soft link-->
    <Resources allowLinking="true"/>
</Context>
```
You can change the path in `conf/server.xml` to directly point to your workspace. Comment it out if you don't need.  
