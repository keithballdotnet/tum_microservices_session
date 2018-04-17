
# Copy dockerfile to build location as dockerfile paths are relative to build
cp src/tum/partiv/hello/Dockerfile ./bin/partiv/hello

# Switch to docker inside minikube
eval $(minikube docker-env)

# eval $(minikube docker-env -u)  

# Build with tag tum/hello
docker build -t tum/hello:latest ./bin/partiv/hello


# verify it is there
docker images

# to use local docker daemon run...
# eval $(minikube docker-env -u)  