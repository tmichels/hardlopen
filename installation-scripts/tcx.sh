#!/bin/bash

ttbins=$(find /home/thomas/TomTomWatch/working/ -regex .*.ttbin -type f)
echo $ttbins
for ttbin in $ttbins; do
  bestandsnaam=$(python3 /home/thomas/ttbin2tcx/src/convert.py $ttbin | grep -oP 'running-\d+')
  mv $ttbin /home/thomas/TomTomWatch/working/ttbin/$bestandsnaam.ttbin
done
