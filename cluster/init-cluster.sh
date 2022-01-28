#!/bin/bash
set -o errexit

kind create cluster

helm repo add fluxcd-community https://fluxcd-community.github.io/helm-charts

kubectl create namespace flux

helm install  flux fluxcd-community/flux2 -n flux
