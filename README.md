## Project: GitHub Actions CI/CD with Docker Image with Flask app

This repository demonstrates a Flask-based Python application that is containerized using Docker and automatically built and tested using GitHub Actions CI/CD pipelines.

The project is designed to showcase how to:

    Build a Docker image for a Python Flask app
    Run automated tests
    Implement CI/CD using GitHub Actions

📌 Project Overview

This project contains a simple Flask web application with unit tests.
The CI/CD pipeline automatically:

    Installs dependencies
    Runs tests
    Builds a Docker image

All automation is handled using GitHub Actions.
🛠️ Technologies Used

    Python
    Flask
    Docker
    GitHub Actions
    Pytest

📂 Project Structure basic
 add image 
⚙️ What This Project Does
✅ What Works

    Flask application runs successfully
    Unit tests validate application functionality
    Docker image builds without errors
    GitHub Actions pipeline executes automatically on code changes

🏗️ What Is Built

    A Dockerized Flask application
    A CI/CD pipeline using GitHub Actions
    Automated testing before Docker image build

🔄 CI/CD Pipeline Workflow

The GitHub Actions workflow performs the following steps:

    Checkout Code
    Set Up Python Environment
    Install Dependencies
    Run Unit Tests
    Build Docker Image

This ensures that only tested and working code is containerized.
🐳 Docker Setup
Dockerfile Responsibilities

    Uses a Python base image
    Copies application source code
    Installs required dependencies
    Exposes the Flask application

Build Docker Image
bash

docker build -t flask-ci-cd-app .

Run Docker Container
bash

docker run -p 5000:5000 flask-ci-cd-app

▶️ Running the Application Locally
1. Install Dependencies
bash

pip install -r requirements.txt

2. Run Flask App
bash

python app.py

3. Run Tests
bash

pytest

✅ Testing

    Tests are written using Pytest
    Located in test_app.py
    Automatically executed in the CI pipeline

🚀 Future Enhancements

    Push Docker image to Docker Hub or GitHub Container Registry
    Add CD pipeline for deployment
    Add environment-based configuration
    Improve test coverage
