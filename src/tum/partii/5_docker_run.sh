
# run our container
docker run -d -p 8080:8080 --name hello tum/hello

# is it running?
docker ps

# lets kill it
docker kill hello
docker rm hello