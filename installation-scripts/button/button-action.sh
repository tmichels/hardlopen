#! /bin/bash

open_browser () {
        sleep 10s
        xdg-open http://localhost:4200 2>/dev/null
}


docker network prune -f
docker ps | grep -q backend-runs
app_is_up=$?
echo App status $app_is_up

if [ $app_is_up -eq 1 ]; then
	sh /home/thomas/projecten/hardlopen/installation-scripts/build_docker_images.sh
	open_browser &
	docker compose -f /home/thomas/projecten/hardlopen/docker-compose.yml up --force-recreate
else
	docker compose -f /home/thomas/projecten/hardlopen/docker-compose.yml down
fi
