!# /usr/bin/bash

docker build -t backend-runs ./backend-runs
docker build -t backend-tcxreader ./backend-tcxreader
docker build -t backend-strava ./backend-strava
docker build -t backend-location ./backend-location
docker build -t frontend ./frontend