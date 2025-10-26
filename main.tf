terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

# Step 1: Pull the Docker image
resource "docker_image" "nginx_image" {
  name = "nginx:latest"
}

# Step 2: Create and run a container
resource "docker_container" "nginx_container" {
  image = docker_image.nginx_image.image_id
  name  = "terraform-nginx"
  ports {
    internal = 80
    external = 8081
  }
}
