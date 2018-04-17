
# Copy dockerfile to build location as dockerfile paths are relative to build
cp src/tum/partii/hello/Dockerfile ./bin/partii/hello

# Build with tag tum/hello
docker build -t tum/hello:latest ./bin/partii/hello