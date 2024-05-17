kubectl apply -f mariadb-deployment.yml
kubectl apply -f faketwitter-fpm-deployment.yml
kubectl apply -f faketwitter-nginx-deployment.yml

kubectl apply -f mariadb-service.yml
kubectl apply -f faketwitter-fpm-service.yml
kubectl apply -f faketwitter-nginx-service.yml

kubectl apply -f fake-twitter-nginx-nodeport.yml




kubectl delete deployment fake-twitter-fpm-deployment
kubectl delete deployment fake-twitter-nginx-deployment
kubectl delete deployment mariadb-deployment


kubectl delete pods --all

# kubectl get pods
# docker-db-mariadb-image:v1
# docker-app-fake-twitter-fpm-image:v1
# docker-app-fake-twitter-nginx-image:v1


#  Necessary Commands

kubectl get pods
kubectl delete pods --all
kubectl get deployments
# fake-twitter-fpm-deployment     1/1     1            1           71m
# fake-twitter-nginx-deployment   0/1     1            0           71m
# mariadb-deployment              1/1     1            1           71m
kubectl delete deployment fake-twitter-fpm-deployment fake-twitter-nginx-deployment mariadb-deployment

kubectl get service
# fake-twitter-fpm-service     ClusterIP   10.98.117.233   <none>        9000/TCP   3d2h
# fake-twitter-nginx-service   ClusterIP   10.101.232.70   <none>        80/TCP     3d2h
# kubernetes                   ClusterIP   10.96.0.1       <none>        443/TCP    3d2h
# mariadb-service              ClusterIP   10.109.53.253   <none>        3306/TCP   3d2h
kubectl delete service fake-twitter-fpm-service fake-twitter-nginx-service mariadb-service



# Kubernetes Dashboard

kubectl create serviceaccount zawad
# serviceaccount/zawad created
kubectl create token zawad
# eyJhbGciOiJSUzI1NiIsImtpZCI6ImY2bHYwWTl6X3VVdjVlWlRNdUtfeFNqVko1UTU0c2NIOE9rNlptWUxKaDAifQ.eyJhdWQiOlsiaHR0cHM6Ly9rdWJlcm5ldGVzLmRlZmF1bHQuc3ZjLmNsdXN0ZXIubG9jYWwiXSwiZXhwIjoxNzE1MjUyNjgyLCJpYXQiOjE3MTUyNDkwODIsImlzcyI6Imh0dHBzOi8va3ViZXJuZXRlcy5kZWZhdWx0LnN2Yy5jbHVzdGVyLmxvY2FsIiwia3ViZXJuZXRlcy5pbyI6eyJuYW1lc3BhY2UiOiJkZWZhdWx0Iiwic2VydmljZWFjY291bnQiOnsibmFtZSI6Inphd2FkIiwidWlkIjoiYzZiY2Q1ZTEtMjczOC00ZGVkLTk4NTYtZDhhZjY5NDVlODE4In19LCJuYmYiOjE3MTUyNDkwODIsInN1YiI6InN5c3RlbTpzZXJ2aWNlYWNjb3VudDpkZWZhdWx0Onphd2FkIn0.Vrm4KuJgXXbGHIvMXhukWcHaQXfUHZhqKD0yBEnnmd0nUisP3l7cSk_fEtFASEcAfE6H75oAt_M_Af_ytLa1bTi_boiKyvtFf7e5O7q2CGI5cUN4k62y1G0fpAsFpSkh_N4doyRBG7rqw0kM8IkmlBjzv0yEsuth3rnPlNAot3bXn8ZiXCtR0DXRqS7OAui1fyWSCaFWz7smZR-_xZf0aNzZsVPnV8ghv0NMocRyX6Aiu2pFLZ9XjExDlxt5YvzBTWpSzYPf8zBi8sdjzp1Z2_rgkPgQaqoDWI6TGMM2_fpKwxiPOGCES3awaSpLz5XWiCgLOTJMuRkiEORVmRe7RA

# eyJhbGciOiJSUzI1NiIsImtpZCI6ImY2bHYwWTl6X3VVdjVlWlRNdUtfeFNqVko1UTU0c2NIOE9rNlptWUxKaDAifQ.eyJhdWQiOlsiaHR0cHM6Ly9rdWJlcm5ldGVzLmRlZmF1bHQuc3ZjLmNsdXN0ZXIubG9jYWwiXSwiZXhwIjoxNzE1NDk5MTUzLCJpYXQiOjE3MTU0OTU1NTMsImlzcyI6Imh0dHBzOi8va3ViZXJuZXRlcy5kZWZhdWx0LnN2Yy5jbHVzdGVyLmxvY2FsIiwia3ViZXJuZXRlcy5pbyI6eyJuYW1lc3BhY2UiOiJkZWZhdWx0Iiwic2VydmljZWFjY291bnQiOnsibmFtZSI6Inphd2FkIiwidWlkIjoiYzZiY2Q1ZTEtMjczOC00ZGVkLTk4NTYtZDhhZjY5NDVlODE4In19LCJuYmYiOjE3MTU0OTU1NTMsInN1YiI6InN5c3RlbTpzZXJ2aWNlYWNjb3VudDpkZWZhdWx0Onphd2FkIn0.cmZaDcurKFNwBpPBAu4JW9o7ieEilSp_RI61LylaeWAXZRMwfUvtUScqbjL1524v0jqX9U4T59FNoo1FDd7kCBxewy5w6aZsCU5AeljExo2z9QZMXYPp6JOqQkPxAaGlD4g3RpMzjGwcluseiwhBsBh8_5DGcqK1F2AML4lqOJeBkaz4ZY6EVr0hI6KyN97ao25hHwNVBmbixFXYI9fbaECxPZVCV-5zP1hfOqVzhMCJnCPO1v3g8h4qK3o9XljxoS2fUfSAXEkvM2Fsj0CuG6LL4Hnq7yyPPXBMIHD_7g8OY4asAv_VOrkMBvocGVYJUDutP0B8Ez3-AGlbeD8RSQ


kubectl exec -it fake-twitter-nginx-deployment-665ddc97-rmb5r
kubectl exec -it fake-twitter-nginx-deployment-665ddc97-tfzd8


kubectl delete -n default --now deployment fake-twitter-nginx-deployment
kubectl delete -n default --now service fake-twitter-nginx-service
kubectl delete -n default --now pod fake-twitter-nginx-deployment-665ddc97-m4dfc
kubectl delete -n kubernetes-dashboard --now service kubernetes-dashboard-kong-proxy-nodeport


kubectl port-forward service/fake-twitter-fpm-service 9000:9000
kubectl port-forward service/fake-twitter-nginx-service 8080:8080
kubectl port-forward service/mariadb-service 3306:3306
kubectl -n kubernetes-dashboard port-forward svc/kubernetes-dashboard-kong-proxy 8443:443
kubectl port-forward svc/kubernetes-dashboard-kong-proxy 8443:443 -n kubernetes-dashboard

kubectl create token zawad

kubectl exec -it mariadb-deployment-54f5594b8-6mncj -- /bin/bash



kubectl delete pod mariadb-deployment-8b6455785-l68q8 --force --grace-period=0
kubectl delete pod mariadb-deployment-8b6455785-8z8pv --force --grace-period=0
