docker login

docker build -t app mini-course-kubernetes-for-js

docker tag app williamkoller/mini-course-kubernetes-for-js

# -----

minikube start
minikube dashboard

kubectl get nodes
kubectl describe nodes

kubectl create -f postgres-sts.json

kubectl get statufulset
kubectl get pod
kubectl logs postgres-0

kubectl describe sts postgres
kubectl describe pod postgres-0

kubectl create -f postgres-svc.json

kubectl get svc
kubectl describe service postgres-svc

kubectl create -f api-development.json
kubectl get deploy
kubectl describe deploy api-heroes
kubectl get pod
kubectl describe pod api-heroes-d796bbc6f-x2bll
kubectl get pod -w
kubectl logs api-heroes-d796bbc6f-x2bll
kubectl logs -f api-heroes-d796bbc6f-x2bll

# update file
kubectl apply -f api-development.json

kubectl create -f api-svc.json 

kubectl get svc
kubectl describe svc api-heroes-svc

minikube service api-heroes-svc --url

kubectl delete -f .
kubectl create -f .

# delete cluster
minikube delete