docker run --name nginx \
  -v "$(pwd)"/conf:/etc/nginx/conf.d:ro \
  -v "$(pwd)"/html:/usr/share/nginx/html \
  -v "$(pwd)"/log:/var/log/nginx \
  -v /CA:/etc/nginx/CA:ro \
  -p 80:80 \
  -p 443:443 \
  -p 8444:8444 \
  -d nginx
