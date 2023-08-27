# Run an image

```
docker run -p 80:80 docker/getting-started

docker ps


# List images
docker images

# Remove a container
# docker stop <container-name>
# docker rm <container-name>
# Ex:
docker stop strange_sanderson
docker rm strange_sanderson

# Delete all containers
docker stop $(docker ps -q)
docker rm $(docker ps -aq)

# Remove image
docker rmi <image_repo:tag>
Ex:
docker rmi docker/getting-started:latest



```

