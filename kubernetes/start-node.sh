#!/bin/bash

registry=192.168.178.17:5000

docker container run -d -p 5000:5000 -e REGISTRY_STORAGE_FILESYSTEM_ROOTDIRECTORY='/data' -v '/home/thomas/projecten/hardlopen/kubernetes/registry-docker-images:/data' registry
minikube start --insecure-registry="$registry"
minikube cp ../sample_runs/run-20190709T200709.tcx  /home/docker/sample-runs/run-20190709T200709.tcx

docker tag backend-runs         $registry/backend-runs
docker tag backend-tcxreader    $registry/backend-tcxreader
docker tag backend-strava       $registry/backend-strava
docker tag backend-location     $registry/backend-location
docker tag backend-trace-maker  $registry/backend-trace-maker
docker tag frontend             $registry/frontend

docker push $registry/backend-runs
docker push $registry/backend-tcxreader
docker push $registry/backend-strava
docker push $registry/backend-location
docker push $registry/backend-trace-maker
docker push $registry/frontend
