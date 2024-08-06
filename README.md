# BrainCache

This repository contains a Dockerfile for setting up a Docker container running Nginx to serve the Clumsy Bird game, an open-source clone of the popular Flappy Bird game. The setup uses Debian 12 as the base image.

## Introduction

This project provides a Dockerized environment for the Clumsy Bird game. The Docker image pulls the source code from the [Clumsy Bird GitHub repository](https://github.com/ellisonleao/clumsy-bird), sets up an Nginx server, and serves the game on port 80.

## About the Repository

- **Base Image**: Debian 12
- **Web Server**: Nginx
- **Game**: Clumsy Bird (open-source Flappy Bird clone)

The Dockerfile performs the following steps:
1. Updates the package list and installs `curl`, `nginx`, and `zip`.
2. Configures Nginx to run in the foreground by adding `daemon off;` to the configuration.
3. Downloads the Clumsy Bird source code as a zip file from the GitHub repository.
4. Unzips the downloaded file and serves the content using Nginx.
5. Exposes port 80 for accessing the web server.

## Usage

### Building the Docker Image

To build the Docker image, navigate to the directory containing the Dockerfile and run:

```sh
docker build -t clumsy-bird-game .
