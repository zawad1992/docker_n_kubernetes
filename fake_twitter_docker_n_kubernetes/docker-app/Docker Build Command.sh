docker build -t docker-db-mariadb-image:v1 .
docker build -t docker-app-fake-twitter-fpm-image:v1 .
docker build -t docker-app-fake-twitter-nginx-image:v1 .

# kubectl get pods

# kubectl logs fake-twitter-fpm-deployment-58d67bdc5d-4dl4j 
# kubectl logs fake-twitter-nginx-deployment-6fd67b7cd4-lvbcq