#!/bin/bash

kubectl apply -f clusterissuer.yaml
kubectl create namespace kustomize
kubectl apply -f config.yaml -n kustomize
kustomize build KUSTOMIZE
kubectl apply -k KUSTOMIZE -n kustomize
kubectl get all -n kustomize
