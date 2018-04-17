# rebuild service for linux

mkdir -p ./bin/partii/hello

env GOOS=linux go build -o ./bin/partii/hello/hello "tum/partii/hello" 

# Check it build

ls -la ./bin/partii/hello