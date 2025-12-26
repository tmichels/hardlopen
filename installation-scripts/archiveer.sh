#!/bin/bash

find /home/thomas/TomTomWatch/working \( -iname "*.ttbin" -o -name "*.gpx" -o -iname "*tcx" \) -type f

echo

read -p "Enter om bovenstaande bestanden te verplaatsen naar /home/thomas/Dropbox/bestanden/Hardlopen/Hardloopdata/"
find /home/thomas/TomTomWatch/working \( -iname "*.ttbin" -o -name "*.gpx" -o -iname "*tcx" \) -type f -exec mv {} /home/thomas/Dropbox/bestanden/Hardlopen/Hardloopdata/ \;
