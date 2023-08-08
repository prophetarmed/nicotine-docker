# nicotine-docker

## Introduction

This is a Docker image that makes use of the `broadway` backend for GDK, allowing HTML5 access to GTK applications. An example docker-compose is in this repository - none of the volumes in that docker-compose are strictly *needed* so it's totally down to your discretion how to handle Nicotine's data.

## Known caveats

- The dialogue box on first boot is pretty much unusable. A workaround is to manually edit the config file after the first run, and then restart the Docker container.
