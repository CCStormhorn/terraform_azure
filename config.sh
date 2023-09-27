#!/bin/bash
sudo apt update -y || exit 1;

sudo apt-get install -y \
	ca-certificates \
	curl \
	gnupg \
	lsb-release || exit 1;

curl -fsSL https://get.docker.com -o get-docker.sh || exit 1;

sudo sh get-docker.sh

sudo apt-get install -y git-all

git clone https://github.com/lewagon/devsecops-guest-app && cd ./devsecops-guest-app && git checkout docker

sudo docker compose up
