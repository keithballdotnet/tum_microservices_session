# Build our bin

mkdir -p ./bin/partiv/hello

env GOOS=linux go build -o ./bin/partiv/hello/hello "tum/partiv/hello" 
