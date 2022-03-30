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

if [[ $1 != "pull" && $1 != "push" ]]; then
    echo "Nothing pushed or pulled. Give push or pull as argument."
    exit 1
fi

echo "$1ing root project..."
git $1

cd backend-runs
echo -e "\n$1ing backend-runs..."
git $1

cd ../backend-tcxreader
echo -e "\n$1ing backend-tcxreader..."
git $1

cd ../backend-strava
echo -e "\n$1ing backend-strava..."
git $1

cd ../frontend
echo -e "\n$1ing frontend..."
git $1

cd ../backend-location
echo -e "\n$1ing backend-location..."
git $1

cd ../backend-trace-maker
echo -e "\n$1ing backend-trace-maker..."
git $1
