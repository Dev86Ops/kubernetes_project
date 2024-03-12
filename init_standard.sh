#!/bin/bash

kubectl apply -f clusterissuer.yaml
kubectl create namespace standard
kubectl apply -f config.yaml -n standard
kubectl apply -f YAML-STANDARD/. -n standard
kubectl get all -n standard