#!/bin/bash

kubectl apply -f clusterissuer.yaml
kubectl create namespace helm
kubectl apply -f config.yaml -n helm
export KUBECONFIG=/etc/rancher/k3s/k3s.yaml
sudo helm install helm-chart ./HELM --values=./HELM/values.yaml -n helm --debug --kubeconfig /etc/rancher/k3s/k3s.yaml
kubectl get all -n helm
