#!/bin/bash

find "/home/thomas/TomTomWatch/working" -name '*.ttbin' -type f -exec bash -c '
  ttbin="$1"
  echo "$ttbin"
  bestandsnaam="$(python3 /home/thomas/ttbin2tcx/src/convert.py "$ttbin" | grep -oP "running-\d+")"
  mv -n "$ttbin" "/home/thomas/TomTomWatch/working/ttbin/$bestandsnaam.ttbin"
' _ {} "$WORKING_DIR" "$CONVERT_SCRIPT" \;
