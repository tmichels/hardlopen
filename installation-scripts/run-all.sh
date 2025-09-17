#!/bin/bash

cd backend-location
java -jar target/backend-location-1.jar &

cd ../backend-runs
java -jar target/backend-runs-1.jar &

cd ../backend-strava
java -jar target/backend-strava-1.jar &

cd ../backend-trace-maker
java -jar target/backend-trace-maker-1.jar &

cd ../frontend
npm start &

cd ../tcx-to-json
java -jar target/tcx-to-json.jar &
