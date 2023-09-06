

docker build -t lab3:1.0.0 -f Dockerfile .

# Open port 82 for testing
docker run -p 82:80  lab3:1.0.0

docker run -p 82:80 -v vol1:/usr/share/nginx/html/ lab3:1.0.0

# Mount a file from host to container
docker run --name ctn-3.4 -v /home/kum/projects/codestar/docker-demo/lab/practice4/nginx-config.conf:/etc/nginx/conf.d/default.conf  -t lab4:1.0.3

# Mount from a volume to container
docker run -p 82:80 -v c004803578c849ffde8ede0bea2b011521aace098c7e7f840566d6200a6938cc:/usr/share/nginx/html/ lab3:2.0.0


# Mount a dir
docker run -p 82:80 -v /home/kum/projects/codestar/docker-demo/lab/practice2/mount-point:/usr/share/nginx/html/:ro  lab3:1.0.0


# Mount relative path + Add read only prefix
docker run -p 82:80 -v ./mount-point:/usr/share/nginx/html/:ro  lab3:1.0.0

