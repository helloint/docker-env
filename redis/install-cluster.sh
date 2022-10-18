# Note: This image hardcoded port 7000~7005 inside. If your mac's port 7000 has been occupied,
# try this https://utf9k.net/questions/macos-port-5000-monterey/. If it doesn't work, try start-cluster2.sh
docker run --name redis-cluster \
  -p 7000-7005:7000-7005 \
  -d tommy351/redis-cluster:3.2
