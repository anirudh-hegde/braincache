# BrainCache

This repository contains a Dockerfile for setting up a Docker container running Nginx to serve the Clumsy Bird game, an open-source clone of the popular Flappy Bird game. The setup uses Debian 12 as the base image.
This repository contains a Dockerfile for setting up a Docker container running Nginx to serve the Clumsy Bird game, an open-source clone of the popular Flappy Bird game. The setup uses Debian 12 as the base image and deploed the Clumsy Bird game using Nginx on Google Cloud Run. Google Cloud Run allows you to run containerized applications in a fully managed environment, handling scaling, security, and maintenance for you.

## Demo

https://github.com/user-attachments/assets/6906a3fe-83c9-4f19-b29b-73c396a9a407

## Introduction

This project provides a Dockerized environment for the Clumsy Bird game. The Docker image pulls the source code from the [Clumsy Bird GitHub repository](https://github.com/ellisonleao/clumsy-bird), sets up an Nginx server, and serves the game on port 80.

## About the Repository
The Dockerfile included in this repository performs the following steps:

1. **Base Image**: Starts with the `debian:12` base image.
2. **Package Installation**: Installs `curl`, `nginx`, and `zip`.
3. **Nginx Configuration**: Configures Nginx to run in the foreground by adding `daemon off;` to the Nginx configuration file.
4. **Download Clumsy Bird**: Uses `curl` to download the Clumsy Bird game as a zip file.
5. **Extract and Deploy**: Unzips the downloaded file, moves its contents to the web root directory, and cleans up unnecessary files.
6. **Expose Port**: Exposes port 80 for HTTP traffic.
7. **Start Nginx**: Runs Nginx with the specified configuration.

The Dockerfile performs the following steps:
1. Updates the package list and installs `curl`, `nginx`, and `zip`.
2. Configures Nginx to run in the foreground by adding `daemon off;` to the configuration.
3. Downloads the Clumsy Bird source code as a zip file from the GitHub repository.
4. Unzips the downloaded file and serves the content using Nginx.
5. Exposes port 80 for accessing the web server.

### Steps for Deployment

1. **Containerize the Application**:
   The application is containerized using a Dockerfile, which sets up the environment to serve the Clumsy Bird game with Nginx.

2. **Build the Docker Image**:
   The Docker image is built locally or through Google Cloud Build, which is then pushed to Google Container Registry (GCR).

3. **Deploy to Google Cloud Run**:
   The Docker image is deployed to Google Cloud Run

## Usage
### Key Features

- **Scalability**: Google Cloud Run automatically scales the application up or down based on traffic, ensuring optimal resource utilization.
- **Managed Infrastructure**: No need to manage servers; Google Cloud Run handles the infrastructure, allowing you to focus on application development.
- **Security**: Traffic to the application is encrypted using HTTPS. Google Cloud Run manages TLS certificates automatically.

### Accessing the Application

Once deployed, the application is accessible via a unique URL provided by Google Cloud Run. You can access the Clumsy Bird game through this URL, which is available to all users unless restricted.

### Building the Docker Image

To build the Docker image, navigate to the directory containing the Dockerfile and run:

```sh
docker pull anirudh06/clumsy-bird-game:latest
docker build -t anirudh06/clumsy-bird-game .
