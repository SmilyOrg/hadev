# Docker-based Home Assistant development

This makes it easier to develop for Home Assistant on Windows systems that have Docker already installed.
Note that if you are using Docker Toolbox, you might have to put this repository somewhere in your Users
directory for volume mapping to work.

## Setup

1. Change the working directory to this repository.
2. Fork the Home Assistant GitHub repo if you haven't yet.
3. Run `git clone https://github.com/YOUR_GIT_USERNAME/home-assistant.git`.
4. Run `docker-compose build` to build the Docker image.

## Use

1. Run `docker-compose up -d` to run the image as a container in the background.
2. Open up either [localhost:8123](http://localhost:8123) if you are using Docker for Windows or [192.168.99.100:8123](http://192.168.99.100:8123) if you are using Docker Toolbox to load Home Assistant.
2. Add/change `configuration.yaml` and others to the `config` dir.
3. Change files in `home-assistant` and `docker-compose restart` to restart Home Assistant.