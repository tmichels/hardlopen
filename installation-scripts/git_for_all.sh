#! /usr/bin/env bash

function confirm_is_in_right_directory() {
  ls=$(ls)
  if [[ $ls != *"installation-scripts"* ]]; then
      echo "Pull script not executed, you are not in the root directory of the project."
      echo "Go to root (\"hardlopen\") and execute:"
      echo -e "\n\t ./installation-scripts/git_pull_all.sh\n"
      exit 1
  fi
}
confirm_is_in_right_directory;

if [[ $1 != "pull" && $1 != "push" && $1 != "status" && $1 != "diff" ]]; then
    echo "Give a valid git argument to execute the git command (e.g. push, pull, status, diff). Nothing is executed."
    exit 1
fi

echo "$1ing root project..."
git $1

cd backend-runs
echo -e "\n------------\nExecute \"git $1\" for backend-runs..."
git $1

cd ../backend-tcxreader
echo -e "\n------------\nExecute \"git $1\" for backend-tcxreader..."
git $1

cd ../backend-strava
echo -e "\n------------\nExecute \"git $1\" for backend-strava..."
git $1

cd ../frontend
echo -e "\n------------\nExecute \"git $1\" for frontend..."
git $1

cd ../backend-location
echo -e "\n------------\nExecute \"git $1\" for backend-location..."
git $1

cd ../backend-trace-maker
echo -e "\n------------\nExecute \"git $1\" for backend-trace-maker..."
git $1
