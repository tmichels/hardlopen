#!/bin/bash

# Zorg ervoor dat de docker daemon http ipv https toestaat door het volgende toe te voegen aan /etc/docker/daemon.json:
#    {
#      "insecure-registries": [
#         "192.168.178.18:5000"
#      ]
#    }
# Zie https://stackoverflow.com/questions/49674004/docker-repository-server-gave-http-response-to-https-client/49675214#49675214
# Herstart docker met:
#     sudo systemctl restart docker
docker container run -d -p 5000:5000 -e REGISTRY_STORAGE_FILESYSTEM_ROOTDIRECTORY='/data' -v '/home/thomas/projecten/hardlopen/kubernetes/registry-docker-images:/data' registry

local_ip=`hostname -I | awk {'print $1'}`
registry=$local_ip:5000
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
