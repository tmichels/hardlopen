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

if [[ $1 != "pull" && $1 != "push" && $1 != "status" && $1 != "diff" && $1 != "fetch" ]]; then
    echo "Give a valid git argument to execute the git command (e.g. push, pull, status, diff). Nothing is executed."
    exit 1
fi

CYAN_COLOUR='\033[1;96m'
NO_COLOUR='\033[0m'

echo -e "########################################################################\n#"
echo -e "#  Execute \"git $1\" for ${CYAN_COLOUR}root project${NO_COLOUR}..."
echo -e "#\n########################################################################\n"
git $1

cd backend-runs
echo -e "\n\n########################################################################\n#"
echo -e "#  Execute \"git $1\" for ${CYAN_COLOUR}backend-runs${NO_COLOUR}..."
echo -e "#\n########################################################################\n"
git $1

cd ../tcx-to-json
echo -e "\n\n########################################################################\n#"
echo -e "#  Execute \"git $1\" for ${CYAN_COLOUR}tcx-to-json${NO_COLOUR}..."
echo -e "#\n########################################################################\n"
git $1

cd ../backend-strava
echo -e "\n\n########################################################################\n#"
echo -e "#  Execute \"git $1\" for ${CYAN_COLOUR}backend-strava${NO_COLOUR}..."
echo -e "#\n########################################################################\n"
git $1

cd ../frontend
echo -e "\n\n########################################################################\n#"
echo -e "#  Execute \"git $1\" for ${CYAN_COLOUR}frontend${NO_COLOUR}..."
echo -e "#\n########################################################################\n"
git $1

cd ../backend-location
echo -e "\n\n########################################################################\n#"
echo -e "#  Execute \"git $1\" for ${CYAN_COLOUR}backend-location${NO_COLOUR}..."
echo -e "#\n########################################################################\n"
git $1

cd ../backend-trace-maker
echo -e "\n\n########################################################################\n#"
echo -e "#  Execute \"git $1\" for ${CYAN_COLOUR}backend-trace-maker${NO_COLOUR}..."
echo -e "#\n########################################################################\n"
git $1
