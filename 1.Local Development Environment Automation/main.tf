terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

provider "docker" {}

resource "docker_network" "dev_network" {
  name = "dev_network"
}

resource "docker_container" "node_container" {
  name  = "nodejs_dev"
  image = "node:latest"
  networks_advanced {
    name = docker_network.dev_network.name
  }

  # Keep the container running
  command = ["tail", "-f", "/dev/null"]
}

resource "docker_container" "python_container" {
  name  = "python_dev"
  image = "python:latest"
  networks_advanced {
    name = docker_network.dev_network.name
  }

  # Keep the container running
  command = ["tail", "-f", "/dev/null"]
}

resource "docker_container" "mysql_container" {
  name  = "mysql_dev"
  image = "mysql:latest"

  env = [
    "MYSQL_ROOT_PASSWORD=root",
    "MYSQL_DATABASE=devdb"
  ]

  networks_advanced {
    name = docker_network.dev_network.name
  }
}

