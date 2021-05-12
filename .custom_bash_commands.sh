#!/bin/bash

function vimrc() {
  nvim ~/.vimrc
}

function tmuxconf() {
  nvim ~/.tmux.conf
}

function project() {
  cd ~/Documents/projects/$1
}

function ide() {
  cd ~/Documents/projects/$1
  tmux has-session -t $1 2>/dev/null

  if [ $? != 0 ]; then
    # Set up your session
    tmux new-session -s $1 -d
    tmux split-window -v -p 30 \;
    tmux split-window -h -p 50 \;
  fi

  # Attach to created session
  #tmux attach-session -t $session

  tmux -2 attach-session -t $1
}

function tmuxsplit() {
  tmux split-window -v -p 30
  tmux split-window -h -p 50
}
