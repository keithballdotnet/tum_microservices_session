
# Copy dockerfile to build location as dockerfile paths are relative to build
cp src/tum/partvi/hello/Dockerfile ./bin/partvi/hello

cp src/tum/partvi/world/Dockerfile ./bin/partvi/world

# Switch to docker inside minikube
eval $(minikube docker-env)

# eval $(minikube docker-env -u)  

# Build with tag tum/hello
docker build -t tum/hello:latest ./bin/partvi/hello

# Build with tag tum/world
docker build -t tum/world:latest ./bin/partvi/world

# verify it is there
docker images

# to use local docker daemon run...
# eval $(minikube docker-env -u)  