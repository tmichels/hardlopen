#! /bin/bash

open_browser () {
        sleep 10s
        xdg-open http://localhost:4200 2>/dev/null
}


podman network prune -f
podman ps | grep -q backend-runs
app_is_up=$?
echo App status $app_is_up

if [ $app_is_up -eq 1 ]; then
	sh /home/thomas/projecten/hardlopen/installation-scripts/build_podman_images.sh
	open_browser &
	podman compose -f /home/thomas/projecten/hardlopen/podman-compose.yml up --force-recreate
else
	podman compose -f /home/thomas/projecten/hardlopen/podman-compose.yml down
fi
