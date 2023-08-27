
# Mount volumes
docker run --rm -v /home/kum/projects/codestar/docker-demo/lab/lab3/:/newapp -it lab3:1.0.0 /bin/sh

docker run --rm --memory=1g --cpus="2" -v /home/kum/projects/codestar/docker-demo/lab/lab3/:/newapp -it lab3:1.0.0 /bin/sh
