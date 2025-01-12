terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

provider "docker" {}

# Deploy Jenkins Container
resource "docker_container" "jenkins" {
  name  = "jenkins"
  image = "jenkins/jenkins:lts"

  ports {
    internal = 8080
    external = 8080
  }

  # Persist Jenkins data
  volumes {
    host_path      = "E:/wisdom/terraform/3/jenkins_home"
    container_path = "/var/jenkins_home"
  }
}
