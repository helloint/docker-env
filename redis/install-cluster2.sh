# Note: This image support setting port. It doesn't natively support mac m1, but it still works, enough for development.
docker run --name redis-cluster \
  -p 31001-31006:31001-31006 \
  -e "IP=0.0.0.0" \
  -e "INITIAL_PORT=31001" \
  -d grokzen/redis-cluster:latest
