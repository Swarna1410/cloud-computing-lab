
PORT=8080
echo "building docker image..."
docker build -t myapp:latest .
echo "stopping old containers..."
docker stop myapp || true
docker rm myapp || true
echo "running new container on port $PORT..."
docker run -d --name myapp -p $PORT:8080 myapp:latest
echo "App deployed!"
echo "use killercoda traffic tab Port $PORT"

