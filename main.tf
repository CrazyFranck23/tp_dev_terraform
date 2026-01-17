terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# Image Docker construite à partir du Dockerfile
resource "docker_image" "flask_app" {
  name = "${var.image_name}:${var.image_tag}"

  build {
    context    = path.module   # dossier courant
    dockerfile = "Dockerfile"
  }
}

# Conteneur Docker
resource "docker_container" "flask_container" {
  name  = var.container_name
  image = docker_image.flask_app.image_id

  ports {
    internal = var.internal_port  # port dans le conteneur
    external = var.external_port  # port exposé sur ta machine
  }
}
