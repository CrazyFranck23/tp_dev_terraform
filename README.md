# Flask Terraform Docker Deployment

A Terraform project that automates the deployment of a simple Flask application in a Docker container using the Kreuzwerker Docker provider.

## Overview

This project demonstrates Infrastructure as Code (IaC) practices by using Terraform to:
- Build a Docker image from a Dockerfile
- Create and run a Docker container with configurable ports
- Expose a Flask web application on your local machine

## Project Structure

- **`app.py`** - Simple Flask application with a single `/` route returning "Hello, World!"
- **`Dockerfile`** - Docker image definition based on Python 3.9-slim
- **`main.tf`** - Terraform configuration for Docker image and container resources
- **`variables.tf`** - Input variables with sensible defaults
- **`outputs.tf`** - Output values for container details
- **`.terraform.lock.hcl`** - Terraform dependency lock file
- **`terraform.tfstate`** - Terraform state file (automatically managed)

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- [Docker](https://www.docker.com/products/docker-desktop) installed and running
- Docker daemon accessible to Terraform

## Usage

### Initialize Terraform

```sh
terraform init
```

### Review the Deployment Plan

```sh
terraform plan
```

### Deploy the Application

```sh
terraform apply
```

### Access the Application

After deployment, the Flask app will be accessible at `http://localhost:5000` (or the configured external port).

### View Deployment Details

```sh
terraform output
```

### Destroy the Deployment

```sh
terraform destroy
```

## Configuration

Customize the deployment by modifying variables in **variables.tf** or by providing values at runtime:

```sh
terraform apply -var="external_port=8080" -var="image_tag=v1.0"
```

### Available Variables

- **image_name** - Docker image name (default: `flask-terraform`)
- **image_tag** - Docker image tag (default: `latest`)
- **container_name** - Container name (default: `flask-tp-terraform`)
- **internal_port** - Port inside container (default: `5000`)
- **external_port** - Port exposed on host machine (default: `5000`)

## Outputs

The deployment provides the following outputs:
- **container_ip** - IP address of the running container
- **container_port** - External port on the host machine
- **image_id** - ID of the built Docker image