# nginx
## Features
Support: HTTPS (cert requires), SPA, CORS  
Ports: 8081/8444  

## Instruction
The template contains 2 apps:
1. Inline `app`  
   It is under `html` dir. Nginx by default serves `html` dir.  I just split the configuration to separated `nginx.html.conf`.
   You can build your app and drop into the `html`.

2. Externalized `nbaalt`  
```
# nginx.conf
   -v "$(pwd)"/conf/nginx.nba.conf:/etc/nginx/nginx.nba.conf:ro \
   -v /Users/helloint/workspace/nbaalt/build:/usr/share/nginx/apps/nbaalt:ro \
```
You can change the path in `nginx.nba.conf` to directly point to your workspace. Comment it out if you don't need.  
