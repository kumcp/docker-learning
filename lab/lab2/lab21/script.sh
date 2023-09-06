docker build -t lab:2.1.0 -f Dockerfile.multistage .

docker images

# Run container
docker run -p 81:80 -d lab:2.1.0

# check inside container
docker exec -it hungry_jackson /bin/bash


docker build -t lab:2.2.1 --target dev-runner  .