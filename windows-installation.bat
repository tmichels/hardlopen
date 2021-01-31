git clone https://github.com/tmichels/hardlopen-install.git
ren hardlopen-install hardlopen
cd /d hardlopen
git clone https://github.com/tmichels/backend-runs.git
git clone https://github.com/tmichels/backend-location.git
git clone https://github.com/tmichels/frontend.git

docker build -t backend-runs ./backend-runs
docker build -t backend-location ./backend-location
docker build -t frontend ./frontend

docker-compose up
start "" http://localhost:4200

pause