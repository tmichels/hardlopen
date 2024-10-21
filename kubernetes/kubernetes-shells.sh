#! /bin/bash

tmux new-session -s kubernetes \;    split-window -v \;    send-keys 'k9s' C-m \;    split-window -v \;    send-keys 'watch docker ps' C-m \; select-pane -t 0 \;    send-keys 'sh /home/thomas/projecten/hardlopen/kubernetes/start-node.sh' C-m
