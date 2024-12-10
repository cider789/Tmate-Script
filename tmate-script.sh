#!/bin/bash

# Update package list and install tmux
sudo apt update
sudo apt install tmux -y
sudo apt install tmate -y
tmux new -d -s 0

tmux send-keys -t 0 'tmate -F' C-m

# Attach to the tmux session
tmux attach -t 0
