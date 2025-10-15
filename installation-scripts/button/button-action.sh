#! /bin/bash

open_browser () {
        sleep 10s
        xdg-open http://localhost:4200 2>/dev/null
}


podman network prune -f
podman ps | grep -q backend-runs
app_is_up=$?
echo App status: $app_is_up
cd /home/thomas/projecten/hardlopen

if [ $app_is_up -eq 1 ]; then
	bash installation-scripts/build_podman_images.sh
	open_browser &
	podman compose up
else
	podman compose down
fi
