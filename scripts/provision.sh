#!/usr/bin/env bash

exec 2>&1

which curl &>/dev/null || {
  sudo apt-get update
  sudo apt-get install -y curl
}

which nginx &>/dev/null || {
  sudo apt-get update
  sudo apt-get install -y nginx
}

# stop nginx service
service nginx stop

# start nginx service
service nginx start
