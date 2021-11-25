#! /usr/bin/bash

read -p 'Enter the Github personal access code: ' access_token

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

echo 'Decrypting OpenCage api key.'
sleep 2
openssl enc -d -aes-256-cbc -in backend-location/src/main/resources/api-key/OpenCageAPIKey.txt.enc -pass pass:$access_token > backend-location/src/main/resources/api-key/OpenCageAPIKey.txt
echo
echo 'Decrypting Strava secret.'
sleep 2
openssl enc -d -aes-256-cbc -in backend-strava/src/main/resources/api-key/StravaSecret.txt.enc -pass pass:$access_token > backend-strava/src/main/resources/api-key/StravaSecret.txt
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
