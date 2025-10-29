# START BASIC CONFIG TO MINIKUBE

minikube delete

minikube start --driver=none
minikube addons enable metallb
kubectl -n metallb-system delete configmap config
kubectl apply -f pre-helm/metallb.yaml