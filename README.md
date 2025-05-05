# DevOps-Project
[![Dev_Build_Test](https://github.kyndryl.net/Platfrom-Engineering-at-Scale/Team-15/actions/workflows/build-test.yml/badge.svg)](https://github.kyndryl.net/Platfrom-Engineering-at-Scale/Team-15//actions/workflows/build-test.yml)
[![Dev_Build_Test](https://github.kyndryl.net/Platfrom-Engineering-at-Scale/Team-15/actions/workflows/deploy.yml/badge.svg)](https://github.kyndryl.net/Platfrom-Engineering-at-Scale/Team-15//actions/workflows/deploy.yml)
[![Prod_Helm_Release](https://github.kyndryl.net/Platfrom-Engineering-at-Scale/Team-15/actions/workflows/helm-release.yml/badge.svg)](https://github.kyndryl.net/Platfrom-Engineering-at-Scale/Team-15//actions/workflows/helm-release.yml)

[![sonarqube](https://img.shields.io/badge/SonarQube-Failed-red?style=for-the-badge&logo=sonarqube)](#)
[![HTML](https://img.shields.io/badge/HTML5-orange?style=for-the-badge&logo=html5&logoColor=white)](https://github.kyndryl.net/Platfrom-Engineering-at-Scale/Team-15/search?l=html)
[![CSS](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)](https://github.kyndryl.net/Platfrom-Engineering-at-Scale/Team-15/search?l=css)
[![DOCKER](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)](https://github.kyndryl.net/Platfrom-Engineering-at-Scale/Team-15/search?l=dockerfile)
[![Python](https://img.shields.io/badge/Python-grey?style=for-the-badge&logo=python&logoColor=white)](#)
[![Helm](https://img.shields.io/badge/Helm-0F1689?style=for-the-badge&logo=kubernetes&logoColor=white)](#)
---

# Team15 Hackathon Webpage

This repository contains the code for the *Hackathon Team 15* webpage. It showcases team members and their roles, using a clean, responsive design powered by HTML and CSS. The page is containerized using Docker and can be deployed on a virtual machine or Kubernetes.

## Table of Contents

- [Team15 Hackathon Webpage](#team15-hackathon-webpage)
  - [Table of Contents](#table-of-contents)
  - [Project Overview](#project-overview)
  - [Features](#features)
  - [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)
    - [Running Locally](#running-locally)
  - [Remote Deployment](#remote-deployment)
    - [Steps to Configure Deployment](#steps-to-configure-deployment)
  - [File Structure](#file-structure)
  - [Contributing](#contributing)
    - [Guidelines](#guidelines)
  - [License](#license)

## Project Overview

The *Team15 Hackathon Webpage* serves as a presentation page for the team's members and their roles. It is designed with responsiveness and compatibility in mind, ensuring it looks great across devices. The page can be easily deployed using Docker for seamless integration and deployment.

## Features

- Responsive design with a modern layout.
- Team member profiles with images, roles, and contact information.
- Containerized for easy deployment using Docker.
- Automated deployment pipeline using GitHub Actions.

## Getting Started

Follow the instructions below to set up and run the project locally.

### Prerequisites

Ensure you have the following installed on your system:

- [Docker](https://www.docker.com/)
- [Git](https://git-scm.com/)

### Installation

1. Clone this repository:

   bash
   git clone https:/github.kyndryl.net/Platfrom-Engineering-at-Scale/Team-15.git
   cd team15-hackathon
   

2. Build the Docker image locally

   bash
   docker build -t team-15-webapp .
   

### Running Locally

Run the container to serve the webpage:

bash
docker run -d --name team-15-webapp -p 8080:80 team-15-webapp


Access the webpage in your browser at http://localhost:8080.

## Remote Deployment

The repository includes a GitHub Actions pipeline (.github/workflows/deploy.yml) to automate deployment. The pipeline:

1. Copies the code to a target virtual machine (VM).
2. Builds and runs the Docker container on the VM.

### Steps to Configure Deployment

1. Add the following GitHub Secrets to your repository:
   - DOCKER_USERNAME: Dockerhub ID.
   - DOCKER_PASSWORD: Dockerhub password.
   - VM_SSH_KEY: Private SSH key for access.

2. Push your changes to a feature branch and create a Pull Request. Approve the Pull Request and merge your changes to the main branch to trigger the deployment workflow. The github actions workflow expects you to have an optional release tag.

## File Structure

tree
Team-15/
├── .github/
│   └── workflows/            # GitHub Actions workflows
│       └── build-test.yml    # Build & Test pipeline
│       └── deploy.yml        # Deployment pipeline
│       └── helm-release.yml  # Helm Deployment pipeline
|── .githignore               # Git ignore file
|── helm-chart/               # Helm directory   
|   └── Charts.yaml           # Helm Charts file
|   └── values.yaml           # Helm values file
|   └── templates/            # Helm template directory
│       └── deployment.yml
│       └── secret.yml
│       └── service.yml
├── app.py                    # Python app file
├── Dockerfile                # Docker configuration
├── favicon.ico               # Favicon file
├── index.html                # Main HTML file
├── LICENSE.md                # License documentation
├── README.md                 # Project documentation
├── sonar-project.properties  # SonarQube property file
├── styles.css                # CSS styles


## Contributing

Contributions are welcome! Please fork the repository and submit a pull request for any improvements or bug fixes.

### Guidelines

- Follow the existing code style.
- Provide clear commit messages.
- Ensure your changes are tested before submission.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE.md) file for more details.
