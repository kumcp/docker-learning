
# Build image

docker build -t lab4:1.0.0 .

# Run Container
docker run -td lab4:1.0.0

# Check network
docker ps
docker network ls
docker network inspect bridge

# Create number 2 container in network
docker run --name ctn-2  -td lab4:1.0.0

# Check network
docker network inspect bridge


###### LAB 2
# Create 3 image with different text


# FROM nginx:alpine
# RUN echo "Lab 4 (ctn1) inside nginx" > /usr/share/nginx/html/index.html 

docker build -t lab4:1.0.1 .

# FROM nginx:alpine
# RUN echo "Lab 4 (ctn2) inside nginx" > /usr/share/nginx/html/index.html 

docker build -t lab4:1.0.2 .

# FROM nginx:alpine
# RUN echo "Lab 4 (ctn3) inside nginx" > /usr/share/nginx/html/index.html 

docker build -t lab4:1.0.3 .

# Create 2 network

docker network ls
docker network create lab4.2-nw1
docker network create lab4.2-nw2

# Run container 1 in network 1

docker run --name ctn-2.1 --network lab4.2-nw1 -td lab4:1.0.1

# Run container 2 in network 1
docker run --name ctn-2.2 --network lab4.2-nw1 -td lab4:1.0.2

# Run container 3 in network 2
docker run --name ctn-2.3 --network lab4.2-nw2 -td lab4:1.0.3


# Check IP

docker network inspect lab4.2-nw1
docker network inspect lab4.2-nw2

# Execute insidee docker container
docker exec -it ctn-2.1 /bin/sh

# curl <IP-ctn-can-connect>