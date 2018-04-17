# Build our bin

mkdir -p ./bin/partvi/hello

env GOOS=linux go build -o ./bin/partvi/hello/hello "tum/partvi/hello" 

mkdir -p ./bin/partvi/world

env GOOS=linux go build -o ./bin/partvi/world/world "tum/partvi/world" 
