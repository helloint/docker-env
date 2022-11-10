# nginx
## Features
Support: HTTPS (cert requires), SPA, CORS  
Ports: 8081/8444  

## Instruction
The template contains 2 apps:
1. Inline `app`  
   It is under `html` dir. Nginx by default serves `html` dir.
   You can build your app and drop into the `html`.  

2. Externalized `nbaalt`
   Nginx will by default load any conf files under `/etc/nginx/conf.d`, you just need to add your custom conf in that folder.  
   The template `nginx.nba.conf` will serve your app under `/usr/share/nginx/apps/`, 
   you just need use docker volume to map your app from build folder to it.
```
# nginx.conf
   -v /Users/helloint/workspace/nbaalt/build:/usr/share/nginx/apps/nbaalt:ro \
```
