#! /usr/bin/bash

read -p 'Please enter the Github personal access code that you received: ' access_token

echo
git clone https://$access_token@github.com/tmichels/backend-runs.git
echo
git clone https://$access_token@github.com/tmichels/backend-tcxreader.git
echo
git clone https://$access_token@github.com/tmichels/backend-strava.git
echo
git clone https://$access_token@github.com/tmichels/frontend.git
echo
git clone https://$access_token@github.com/tmichels/backend-location.git
echo


read -p 'Enter the OpenCage api key: ' open_cage_key
echo $open_cage_key > backend-location/src/main/resources/api-key/OpenCageAPIKey.txt
read -p 'Enter the Strava secret: ' strava_secret
echo $strava_secret > backend-strava/src/main/resources/api-key/StravaSecret.txt
echo

echo The repositories were successfully cloned. The structure is expected to be """
├── hardlopen
│   ├── backend-location
│   ├── backend-runs
│   ├── backend-strava
│   ├── backend-tcxreader
│   ├── docker-compose.yml
│   ├── frontend
│   ├── installation-scripts
│   ├── README.md
│   └── sample_runs
"""
echo Run \"./installation-scripts/build_docker_images.sh\" to build the docker images \(sudo may be required\).
echo After building the docker images, start the application by running \"docker-compose up\" \(sudo may be required\).
echo 
