terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

provider "docker" {}

# Use the existing Nginx image
resource "docker_container" "nginx_container" {
  name  = "my-nginx-container"
  image = "1360533896b3"  # Use the image ID for Nginx
  ports {
    internal = 80
    external = 8080
  }
}

# Use the existing Node.js app image
resource "docker_container" "node_container" {
  name  = "my-node-container"
  image = "66d53851aade"  # Use the image ID for Node.js app
  ports {
    internal = 3000
    external = 3000
  }
}
