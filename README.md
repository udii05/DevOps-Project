# 🎨 ColorFlux – DevOps Deployment Demo Project

[![HTML](https://img.shields.io/badge/HTML5-orange?style=for-the-badge&logo=html5&logoColor=white)](https://github.kyndryl.net/Platfrom-Engineering-at-Scale/Team-15/search?l=html)
[![CSS](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)](https://github.kyndryl.net/Platfrom-Engineering-at-Scale/Team-15/search?l=css)
[![DOCKER](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)](https://github.kyndryl.net/Platfrom-Engineering-at-Scale/Team-15/search?l=dockerfile)
[![Python](https://img.shields.io/badge/Python-grey?style=for-the-badge&logo=python&logoColor=white)](#)
[![Helm](https://img.shields.io/badge/Helm-0F1689?style=for-the-badge&logo=kubernetes&logoColor=white)](#)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)](#)

---

## 📌 Overview

**ColorFlux** is a simple static web app designed to demonstrate a complete **DevOps workflow** using:

- Docker  
- Kubernetes  
- Helm  
- Minikube  
- Blue–Red deployment model  

The project contains **two environments**:

- 🔵 **Blue Version** — Blue-themed UI  
- 🔴 **Red Version** — Red-themed UI  

Both versions run inside Kubernetes using Helm, and users can access both through NodePort services.

---

## ⭐ Features
- Blue & Red version deployments  
- Dockerized static frontend  
- Kubernetes Deployments + Services  
- Helm chart for easy version management  
- Works fully on Minikube  

---

# 🚀 Getting Started

## 1️⃣ Prerequisites

Make sure the following are installed:

- **Docker Desktop**  
- **Kubernetes (via Minikube)**  
- **Helm**  
- **Git**

---

# 2️⃣ Clone the Repository

```bash
git clone https://github.com/udii05/DevOps-Project.git
cd DevOps-Project
```

---

# 3️⃣ Running Locally With Docker
🔹 Blue Deployment (local)
```bash
cd "blue deployment"
docker build -t colorflux-blue .
docker run -p 8080:80 colorflux-blue
```
Open in browser:

👉 http://localhost:8080

🔹 Red Deployment (local)
```bash
cd "red deployment"
docker build -t colorflux-red .
docker run -p 8081:80 colorflux-red
```
Open in browser:

👉 http://localhost:8081

---

# 4️⃣ Running Both Environments
Step 1 - Start Minikube
```bash
minikube start
```

Step 2 - Build and Push Docker images
- 🔵 Blue Image
```bash
cd "blue deployment"
docker build --no-cache -t colorflux-blue .
docker tag colorflux-blue udii05/colorflux-blue:latest
docker push udii05/colorflux-blue:latest
```
- 🔴 Red Image
```bash
cd "red deployment"
docker build --no-cache -t colorflux-red .
docker tag colorflux-red udii05/colorflux-red:latest
docker push udii05/colorflux-red:latest
```

Step 3 — Deploy using Helm
```bash
helm upgrade --install colorflux ./helm-chart
```

Step 4 — Force new pods to ensure latest images pull
```bash
kubectl delete pod -l version=blue
kubectl delete pod -l version=red
```

Step 5 — Access the Live Webpages
- 🔵 BLUE UI:
```bash
minikube service app-svc-np-blue
```
- 🔴 RED UI:
```bash
minikube service app-svc-np-red
```
Both pages open automatically in your browser.

---

## 📁 Project Structure
```tree
DevOps-Project-main/
├── blue deployment/
│   ├── Dockerfile
│   ├── index-blue.html
│   ├── style-blue.css
│
├── red deployment/
│   ├── Dockerfile
│   ├── index-red.html
│   ├── style-red.css
│
├── helm-chart/
│   ├── Chart.yaml
│   ├── values.yaml
│   └── templates/
│       ├── deployment-blue.yaml
│       ├── deployment-red.yaml
│       ├── service.yaml
│       ├── service-np.yaml
│
└── README.md
```

### **⭐ Support**
If you liked this project, please star the repo — it really motivates me.
- and follow for more updates!
---

Udita Chakraborty
<p align="left"> <a href="https://github.com/udii05"> <img src="https://img.shields.io/badge/GitHub-udii05-black?style=flat-square&logo=github"> </a> <a href="https://www.linkedin.com/in/udita-chakraborty-b890982a2/"> <img src="https://img.shields.io/badge/LinkedIn-Udita%20Chakraborty-blue?style=flat-square&logo=linkedin"> </a> <a href="https://www.instagram.com/u_dii05"> <img src="https://img.shields.io/badge/Instagram-@u_dii05-e84393?style=flat-square&logo=instagram"> </a> </p>

Asmita Chakraborty
<p align="left"> <a href="https://github.com/asmitachakrab"> <img src="https://img.shields.io/badge/GitHub-asmitachakrab-black?style=flat-square&logo=github"> </a> <a href="https://www.linkedin.com/in/asmita-chakraborty-4b19132a1/"> <img src="https://img.shields.io/badge/LinkedIn-Asmita%20Chakraborty-blue?style=flat-square&logo=linkedin"> </a> <a href="https://www.instagram.com/__asmita.c"> <img src="https://img.shields.io/badge/Instagram-@__asmita.c-e84393?style=flat-square&logo=instagram"> </a> </p>
