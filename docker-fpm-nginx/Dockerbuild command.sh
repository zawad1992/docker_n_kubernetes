docker build -t docker-app-fpm-nginx-image:v1 .

docker run -p 8085:80 -d docker-app-fpm-nginx-image:v1
