#!/bin/bash
set -o errexit

kind create cluster

helm repo add fluxcd-community https://fluxcd-community.github.io/helm-charts

kubectl create namespace flux

helm install flux fluxcd-community/flux2 -n flux
helm install flux-sync fluxcd-community/flux2-sync -n flux -f ./flux-install/flux-sync-values.yaml
