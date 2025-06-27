# Day 1: Dockerfile for Basic Flask App

## 🧠 Objective
Containerize a simple Flask app using a clean and efficient Dockerfile.

## 🛠️ Tech Stack
- Python 3.9
- Flask
- Docker

## 🚀 How to Run
```bash
docker build -t flask-hello-app .
docker run -d -p 5000:5000 flask-hello-app
