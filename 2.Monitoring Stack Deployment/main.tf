terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

provider "docker" {}

# Prometheus Image
resource "docker_image" "prometheus" {
  name = "prom/prometheus:latest"
}

# Grafana Image
resource "docker_image" "grafana" {
  name = "grafana/grafana:latest"
}

# Prometheus Container
resource "docker_container" "prometheus" {
  name  = "prometheus"
  image = "prom/prometheus:latest"  # Correct format

  ports {
    internal = 9090
    external = 9090
  }

  volumes {
    host_path      = "E:\\wisdom\\monitoring\\prometheus.yml"
    container_path = "/etc/prometheus/prometheus.yml"
  }
}

# Grafana Container
resource "docker_container" "grafana" {
  name  = "grafana"
  image = "grafana/grafana:latest"  # Correct format

  ports {
    internal = 3000
    external = 3000
  }
}
