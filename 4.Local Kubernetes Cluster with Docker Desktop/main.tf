terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

# Create a namespace
resource "kubernetes_namespace" "local_app" {
  metadata {
    name = "local-app"
  }
}

# Create a deployment
resource "kubernetes_deployment" "nginx" {
  metadata {
    name      = "nginx"
    namespace = kubernetes_namespace.local_app.metadata[0].name
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "nginx"
      }
    }

    template {
      metadata {
        labels = {
          app = "nginx"
        }
      }

      spec {
        container {
          name  = "nginx"
          image = "nginx:latest"

          port {
            container_port = 80
          }
        }
      }
    }
  }
}

# Expose the deployment using a service
resource "kubernetes_service" "nginx_service" {
  metadata {
    name      = "nginx-service"
    namespace = kubernetes_namespace.local_app.metadata[0].name
  }

  spec {
    selector = {
      app = "nginx"
    }

    port {
      port        = 8080
      target_port = 80
    }

    type = "LoadBalancer"
  }
}
