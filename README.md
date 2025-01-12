```
PS E:\wisdom\terraform\1> terraform init
Initializing the backend...
Initializing provider plugins...
- Reusing previous version of kreuzwerker/docker from the dependency lock file
- Using previously-installed kreuzwerker/docker v3.0.2

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
PS E:\wisdom\terraform\1> terraform apply
docker_network.dev_network: Refreshing state... [id=2cbed3b775753199488efce26560abff336d116f0c4c9db57aa05bbc7e39189d]
docker_container.mysql_container: Refreshing state... [id=8ee1fb098d9ac7197f5e19f83cb1c250fb1a6abbfc78c3e795d400e40b91b18b]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # docker_container.mysql_container will be created
  + resource "docker_container" "mysql_container" {
      + attach                                      = false
      + bridge                                      = (known after apply)
      + command                                     = (known after apply)
      + container_logs                              = (known after apply)
      + container_read_refresh_timeout_milliseconds = 15000
      + entrypoint                                  = (known after apply)
      + env                                         = [
          + "MYSQL_DATABASE=devdb",
          + "MYSQL_ROOT_PASSWORD=root",
        ]
      + exit_code                                   = (known after apply)
      + hostname                                    = (known after apply)
      + id                                          = (known after apply)
      + image                                       = "mysql:latest"
      + init                                        = (known after apply)
      + ipc_mode                                    = (known after apply)
      + log_driver                                  = (known after apply)
      + logs                                        = false
      + must_run                                    = true
      + name                                        = "mysql_dev"
      + network_data                                = (known after apply)
      + read_only                                   = false
      + remove_volumes                              = true
      + restart                                     = "no"
      + rm                                          = false
      + runtime                                     = (known after apply)
      + security_opts                               = (known after apply)
      + shm_size                                    = (known after apply)
      + start                                       = true
      + stdin_open                                  = false
      + stop_signal                                 = (known after apply)
      + stop_timeout                                = (known after apply)
      + tty                                         = false
      + wait                                        = false
      + wait_timeout                                = 60

      + healthcheck (known after apply)

      + labels (known after apply)

      + networks_advanced {
          + aliases      = []
          + name         = "dev_network"
            # (2 unchanged attributes hidden)
        }
    }

  # docker_container.node_container will be created
  + resource "docker_container" "node_container" {
      + attach                                      = false
      + bridge                                      = (known after apply)
      + command                                     = [
          + "tail",
          + "-f",
          + "/dev/null",
        ]
      + container_logs                              = (known after apply)
      + container_read_refresh_timeout_milliseconds = 15000
      + entrypoint                                  = (known after apply)
      + env                                         = (known after apply)
      + exit_code                                   = (known after apply)
      + hostname                                    = (known after apply)
      + id                                          = (known after apply)
      + image                                       = "node:latest"
      + init                                        = (known after apply)
      + ipc_mode                                    = (known after apply)
      + log_driver                                  = (known after apply)
      + logs                                        = false
      + must_run                                    = true
      + name                                        = "nodejs_dev"
      + network_data                                = (known after apply)
      + read_only                                   = false
      + remove_volumes                              = true
      + restart                                     = "no"
      + rm                                          = false
      + runtime                                     = (known after apply)
      + security_opts                               = (known after apply)
      + shm_size                                    = (known after apply)
      + start                                       = true
      + stdin_open                                  = false
      + stop_signal                                 = (known after apply)
      + stop_timeout                                = (known after apply)
      + tty                                         = false
      + wait                                        = false
      + wait_timeout                                = 60

      + healthcheck (known after apply)

      + labels (known after apply)

      + networks_advanced {
          + aliases      = []
          + name         = "dev_network"
            # (2 unchanged attributes hidden)
        }
    }

  # docker_container.python_container will be created
  + resource "docker_container" "python_container" {
      + attach                                      = false
      + bridge                                      = (known after apply)
      + command                                     = [
          + "tail",
          + "-f",
          + "/dev/null",
        ]
      + container_logs                              = (known after apply)
      + container_read_refresh_timeout_milliseconds = 15000
      + entrypoint                                  = (known after apply)
      + env                                         = (known after apply)
      + exit_code                                   = (known after apply)
      + hostname                                    = (known after apply)
      + id                                          = (known after apply)
      + image                                       = "python:latest"
      + init                                        = (known after apply)
      + ipc_mode                                    = (known after apply)
      + log_driver                                  = (known after apply)
      + logs                                        = false
      + must_run                                    = true
      + name                                        = "python_dev"
      + network_data                                = (known after apply)
      + read_only                                   = false
      + remove_volumes                              = true
      + restart                                     = "no"
      + rm                                          = false
      + runtime                                     = (known after apply)
      + security_opts                               = (known after apply)
      + shm_size                                    = (known after apply)
      + start                                       = true
      + stdin_open                                  = false
      + stop_signal                                 = (known after apply)
      + stop_timeout                                = (known after apply)
      + tty                                         = false
      + wait                                        = false
      + wait_timeout                                = 60

      + healthcheck (known after apply)

      + labels (known after apply)

      + networks_advanced {
          + aliases      = []
          + name         = "dev_network"
            # (2 unchanged attributes hidden)
        }
    }

Plan: 3 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

docker_container.node_container: Creating...
docker_container.python_container: Creating...
docker_container.mysql_container: Creating...
docker_container.node_container: Still creating... [10s elapsed]
docker_container.mysql_container: Still creating... [10s elapsed]
docker_container.python_container: Still creating... [10s elapsed]
docker_container.node_container: Still creating... [20s elapsed]
docker_container.mysql_container: Still creating... [20s elapsed]
docker_container.python_container: Still creating... [20s elapsed]
docker_container.node_container: Still creating... [30s elapsed]
docker_container.mysql_container: Still creating... [30s elapsed]
docker_container.python_container: Still creating... [30s elapsed]
docker_container.node_container: Still creating... [40s elapsed]
docker_container.mysql_container: Still creating... [40s elapsed]
docker_container.python_container: Still creating... [40s elapsed]
docker_container.node_container: Still creating... [50s elapsed]
docker_container.mysql_container: Still creating... [50s elapsed]
docker_container.python_container: Still creating... [50s elapsed]
docker_container.node_container: Still creating... [1m0s elapsed]
docker_container.mysql_container: Still creating... [1m0s elapsed]
docker_container.python_container: Still creating... [1m0s elapsed]
docker_container.node_container: Still creating... [1m10s elapsed]
docker_container.mysql_container: Still creating... [1m10s elapsed]
docker_container.python_container: Still creating... [1m10s elapsed]
docker_container.mysql_container: Still creating... [1m20s elapsed]
docker_container.node_container: Still creating... [1m20s elapsed]
docker_container.python_container: Still creating... [1m20s elapsed]
docker_container.python_container: Still creating... [1m30s elapsed]
docker_container.node_container: Still creating... [1m30s elapsed]
docker_container.mysql_container: Still creating... [1m30s elapsed]
docker_container.python_container: Still creating... [1m40s elapsed]
docker_container.node_container: Still creating... [1m40s elapsed]
docker_container.mysql_container: Still creating... [1m40s elapsed]
docker_container.node_container: Still creating... [1m50s elapsed]
docker_container.mysql_container: Still creating... [1m50s elapsed]
docker_container.python_container: Still creating... [1m50s elapsed]
docker_container.mysql_container: Still creating... [2m0s elapsed]
docker_container.python_container: Still creating... [2m0s elapsed]
docker_container.node_container: Still creating... [2m0s elapsed]
docker_container.mysql_container: Still creating... [2m10s elapsed]
docker_container.python_container: Still creating... [2m10s elapsed]
docker_container.node_container: Still creating... [2m10s elapsed]
docker_container.mysql_container: Still creating... [2m20s elapsed]
docker_container.python_container: Still creating... [2m20s elapsed]
docker_container.node_container: Still creating... [2m20s elapsed]
docker_container.mysql_container: Still creating... [2m30s elapsed]
docker_container.python_container: Still creating... [2m30s elapsed]
docker_container.node_container: Still creating... [2m30s elapsed]
docker_container.mysql_container: Still creating... [2m40s elapsed]
docker_container.python_container: Still creating... [2m40s elapsed]
docker_container.node_container: Still creating... [2m40s elapsed]
docker_container.mysql_container: Creation complete after 2m42s [id=3a7684a2f4500305bf3d8d40e89b430e3b85d85a70d3166cb496797f040081ae]
docker_container.python_container: Still creating... [2m50s elapsed]
docker_container.node_container: Still creating... [2m50s elapsed]
docker_container.python_container: Still creating... [3m0s elapsed]
docker_container.node_container: Still creating... [3m0s elapsed]
docker_container.python_container: Still creating... [3m10s elapsed]
docker_container.node_container: Still creating... [3m10s elapsed]
docker_container.python_container: Still creating... [3m20s elapsed]
docker_container.node_container: Still creating... [3m20s elapsed]
docker_container.python_container: Creation complete after 3m29s [id=fc3c6f0bea6e939dc13304ff105cd2674a46deaec442285db77d6a0a170ff833]
docker_container.node_container: Still creating... [3m30s elapsed]
docker_container.node_container: Creation complete after 3m32s [id=83edb4fc4bd4955eab861aceca878ac1e76d55ef6d12c6fb3f6544e58525ad1c]
Apply complete! Resources: 3 added, 0 changed, 0 destroyed.
```


```
PS E:\wisdom\terraform\2> terraform init
Initializing the backend...
Initializing provider plugins...
- Reusing previous version of kreuzwerker/docker from the dependency lock file
- Using previously-installed kreuzwerker/docker v3.0.2

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
PS E:\wisdom\terraform\2> terraform apply
docker_image.prometheus: Refreshing state... [id=sha256:6559acbd5d770b15bb3c954629ce190ac3cbbdb2b7f1c30f0385c4e05104e218prom/prometheus:latest]
docker_image.grafana: Refreshing state... [id=sha256:d8ea37798ccc41061a62ab080f2676dda6bf7815558499f901bdb0f533a456fbgrafana/grafana:latest]
docker_container.grafana: Refreshing state... [id=321eae631a563cd5bb91118bb9ac8050a086cde30e6555c621fff40389c03917]
docker_container.prometheus: Refreshing state... [id=d436e469771172945a658e65ab69d2054d1b3ab969ea61374b76e9b19237edc7]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # docker_container.grafana will be created
  + resource "docker_container" "grafana" {
      + attach                                      = false
      + bridge                                      = (known after apply)
      + command                                     = (known after apply)
      + container_logs                              = (known after apply)
      + container_read_refresh_timeout_milliseconds = 15000
      + entrypoint                                  = (known after apply)
      + env                                         = (known after apply)
      + exit_code                                   = (known after apply)
      + hostname                                    = (known after apply)
      + id                                          = (known after apply)
      + image                                       = "grafana/grafana:latest"
      + init                                        = (known after apply)
      + ipc_mode                                    = (known after apply)
      + log_driver                                  = (known after apply)
      + logs                                        = false
      + must_run                                    = true
      + name                                        = "grafana"
      + network_data                                = (known after apply)
      + read_only                                   = false
      + remove_volumes                              = true
      + restart                                     = "no"
      + rm                                          = false
      + runtime                                     = (known after apply)
      + security_opts                               = (known after apply)
      + shm_size                                    = (known after apply)
      + start                                       = true
      + stdin_open                                  = false
      + stop_signal                                 = (known after apply)
      + stop_timeout                                = (known after apply)
      + tty                                         = false
      + wait                                        = false
      + wait_timeout                                = 60

      + healthcheck (known after apply)

      + labels (known after apply)

      + ports {
          + external = 3000
          + internal = 3000
          + ip       = "0.0.0.0"
          + protocol = "tcp"
        }
    }

  # docker_container.prometheus will be created
  + resource "docker_container" "prometheus" {
      + attach                                      = false
      + bridge                                      = (known after apply)
      + command                                     = (known after apply)
      + container_logs                              = (known after apply)
      + container_read_refresh_timeout_milliseconds = 15000
      + entrypoint                                  = (known after apply)
      + env                                         = (known after apply)
      + exit_code                                   = (known after apply)
      + hostname                                    = (known after apply)
      + id                                          = (known after apply)
      + image                                       = "prom/prometheus:latest"
      + init                                        = (known after apply)
      + ipc_mode                                    = (known after apply)
      + log_driver                                  = (known after apply)
      + logs                                        = false
      + must_run                                    = true
      + name                                        = "prometheus"
      + network_data                                = (known after apply)
      + read_only                                   = false
      + remove_volumes                              = true
      + restart                                     = "no"
      + rm                                          = false
      + runtime                                     = (known after apply)
      + security_opts                               = (known after apply)
      + shm_size                                    = (known after apply)
      + start                                       = true
      + stdin_open                                  = false
      + stop_signal                                 = (known after apply)
      + stop_timeout                                = (known after apply)
      + tty                                         = false
      + wait                                        = false
      + wait_timeout                                = 60

      + healthcheck (known after apply)

      + labels (known after apply)

      + ports {
          + external = 9090
          + internal = 9090
          + ip       = "0.0.0.0"
          + protocol = "tcp"
        }

      + volumes {
          + container_path = "/etc/prometheus/prometheus.yml"
          + host_path      = "E:\\wisdom\\monitoring\\prometheus.yml"
            # (2 unchanged attributes hidden)
        }
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

docker_container.grafana: Creating...
docker_container.prometheus: Creating...
docker_container.prometheus: Creation complete after 5s [id=c2fe4eec82d4aa34bf0383558062ac302f22289674df67a5fb806ec562642e99]
docker_container.grafana: Creation complete after 5s [id=0ce83e5dfefd231ab97363d79cf050a01229b8642ba674df3a3f9d0dcaa45a83]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
```
![image](https://github.com/user-attachments/assets/1245134c-aa9e-4e69-b482-6db52f1acc97)
![image](https://github.com/user-attachments/assets/8f4ab96d-80d2-4064-8961-5c0367d06d17)


```
PS E:\wisdom\terraform\3> terraform init
Initializing the backend...
Initializing provider plugins...
- Reusing previous version of kreuzwerker/docker from the dependency lock file
- Using previously-installed kreuzwerker/docker v3.0.2

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
PS E:\wisdom\terraform\3> terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # docker_container.jenkins will be created
  + resource "docker_container" "jenkins" {
      + attach                                      = false
      + bridge                                      = (known after apply)
      + command                                     = (known after apply)
      + container_logs                              = (known after apply)
      + container_read_refresh_timeout_milliseconds = 15000
      + entrypoint                                  = (known after apply)
      + env                                         = (known after apply)
      + exit_code                                   = (known after apply)
      + hostname                                    = (known after apply)
      + id                                          = (known after apply)
      + image                                       = "jenkins/jenkins:lts"
      + init                                        = (known after apply)
      + ipc_mode                                    = (known after apply)
      + log_driver                                  = (known after apply)
      + logs                                        = false
      + must_run                                    = true
      + name                                        = "jenkins"
      + network_data                                = (known after apply)
      + read_only                                   = false
      + remove_volumes                              = true
      + restart                                     = "no"
      + rm                                          = false
      + runtime                                     = (known after apply)
      + security_opts                               = (known after apply)
      + shm_size                                    = (known after apply)
      + start                                       = true
      + stdin_open                                  = false
      + stop_signal                                 = (known after apply)
      + stop_timeout                                = (known after apply)
      + tty                                         = false
      + wait                                        = false
      + wait_timeout                                = 60

      + healthcheck (known after apply)

      + labels (known after apply)

      + ports {
          + external = 8080
          + internal = 8080
          + ip       = "0.0.0.0"
          + protocol = "tcp"
        }

      + volumes {
          + container_path = "/var/jenkins_home"
          + host_path      = "E:/wisdom/terraform/3/jenkins_home"
            # (2 unchanged attributes hidden)
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

docker_container.jenkins: Creating...
docker_container.jenkins: Still creating... [10s elapsed]
docker_container.jenkins: Still creating... [20s elapsed]
docker_container.jenkins: Still creating... [30s elapsed]
docker_container.jenkins: Still creating... [40s elapsed]
docker_container.jenkins: Still creating... [50s elapsed]
docker_container.jenkins: Still creating... [1m0s elapsed]
docker_container.jenkins: Still creating... [1m10s elapsed]
docker_container.jenkins: Still creating... [1m20s elapsed]
docker_container.jenkins: Still creating... [1m30s elapsed]
docker_container.jenkins: Still creating... [1m40s elapsed]
docker_container.jenkins: Still creating... [1m50s elapsed]
docker_container.jenkins: Still creating... [2m0s elapsed]
docker_container.jenkins: Creation complete after 2m4s [id=5437fa021b50691ca80c40d36cc3a1a8373362adaa9584aecc4e3f1fdee91c1d]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
PS E:\wisdom\terraform\3> docker ps
CONTAINER ID   IMAGE                 COMMAND                  CREATED              STATUS              PORTS
                   NAMES
5437fa021b50   jenkins/jenterraform destroybin/tini -- /u…"   About a minute ago   Up About a minute   0.0.0.0:8080->8080/tcp, 50000/tcp   jenkins
```

![image](https://github.com/user-attachments/assets/39628381-ba39-468f-b879-b6ac510f537c)

```
PS E:\wisdom\terraform\4> terraform init
Initializing the backend...
Initializing provider plugins...
- Reusing previous version of hashicorp/kubernetes from the dependency lock file
- Reusing previous version of kreuzwerker/docker from the dependency lock file
- Using previously-installed hashicorp/kubernetes v2.35.1
- Using previously-installed kreuzwerker/docker v3.0.2

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
PS E:\wisdom\terraform\4> terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # kubernetes_deployment.nginx will be created
  + resource "kubernetes_deployment" "nginx" {
      + id               = (known after apply)
      + wait_for_rollout = true

      + metadata {
          + generation       = (known after apply)
          + name             = "nginx"
          + namespace        = "local-app"
          + resource_version = (known after apply)
          + uid              = (known after apply)
        }

      + spec {
          + min_ready_seconds         = 0
          + paused                    = false
          + progress_deadline_seconds = 600
          + replicas                  = "1"
          + revision_history_limit    = 10

          + selector {
              + match_labels = {
                  + "app" = "nginx"
                }
            }

          + strategy (known after apply)

          + template {
              + metadata {
                  + generation       = (known after apply)
                  + labels           = {
                      + "app" = "nginx"
                    }
                  + name             = (known after apply)
                  + resource_version = (known after apply)
                  + uid              = (known after apply)
                }
              + spec {
                  + automount_service_account_token  = true
                  + dns_policy                       = "ClusterFirst"
                  + enable_service_links             = true
                  + host_ipc                         = false
                  + host_network                     = false
                  + host_pid                         = false
                  + hostname                         = (known after apply)
                  + node_name                        = (known after apply)
                  + restart_policy                   = "Always"
                  + scheduler_name                   = (known after apply)
                  + service_account_name             = (known after apply)
                  + share_process_namespace          = false
                  + termination_grace_period_seconds = 30

                  + container {
                      + image                      = "nginx:latest"
                      + image_pull_policy          = (known after apply)
                      + name                       = "nginx"
                      + stdin                      = false
                      + stdin_once                 = false
                      + termination_message_path   = "/dev/termination-log"
                      + termination_message_policy = (known after apply)
                      + tty                        = false

                      + port {
                          + container_port = 80
                          + protocol       = "TCP"
                        }

                      + resources (known after apply)
                    }

                  + image_pull_secrets (known after apply)

                  + readiness_gate (known after apply)
                }
            }
        }
    }

  # kubernetes_namespace.local_app will be created
  + resource "kubernetes_namespace" "local_app" {
      + id                               = (known after apply)
      + wait_for_default_service_account = false

      + metadata {
          + generation       = (known after apply)
          + name             = "local-app"
          + resource_version = (known after apply)
          + uid              = (known after apply)
        }
    }

  # kubernetes_service.nginx_service will be created
  + resource "kubernetes_service" "nginx_service" {
      + id                     = (known after apply)
      + status                 = (known after apply)
      + wait_for_load_balancer = true

      + metadata {
          + generation       = (known after apply)
          + name             = "nginx-service"
          + namespace        = "local-app"
          + resource_version = (known after apply)
          + uid              = (known after apply)
        }

      + spec {
          + allocate_load_balancer_node_ports = true
          + cluster_ip                        = (known after apply)
          + cluster_ips                       = (known after apply)
          + external_traffic_policy           = (known after apply)
          + health_check_node_port            = (known after apply)
          + internal_traffic_policy           = (known after apply)
          + ip_families                       = (known after apply)
          + ip_family_policy                  = (known after apply)
          + publish_not_ready_addresses       = false
          + selector                          = {
              + "app" = "nginx"
            }
          + session_affinity                  = "None"
          + type                              = "LoadBalancer"

          + port {
              + node_port   = (known after apply)
              + port        = 8080
              + protocol    = "TCP"
              + target_port = "80"
            }

          + session_affinity_config (known after apply)
        }
    }

Plan: 3 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

kubernetes_namespace.local_app: Creating...
kubernetes_namespace.local_app: Creation complete after 1s [id=local-app]
kubernetes_service.nginx_service: Creating...
kubernetes_deployment.nginx: Creating...
kubernetes_service.nginx_service: Creation complete after 0s [id=local-app/nginx-service]
kubernetes_deployment.nginx: Still creating... [10s elapsed]
kubernetes_deployment.nginx: Creation complete after 15s [id=local-app/nginx]

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.

PS E:\wisdom\terraform\4> kubectl get pods -n local-app
NAME                     READY   STATUS    RESTARTS   AGE
nginx-79cbb6b976-dzfjf   1/1     Running   0          109s
```

![image](https://github.com/user-attachments/assets/f30b882d-4cc2-44aa-af63-6edea2c0f9c7)

```
PS E:\wisdom\terraform> terraform init
Initializing the backend...
Initializing provider plugins...
- Reusing previous version of kreuzwerker/docker from the dependency lock file
- Using previously-installed kreuzwerker/docker v3.0.2

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
PS E:\wisdom\terraform> terraform plan
docker_container.node_container: Refreshing state... [id=ac7e1fda3ce13d965fe79e310364aa1ea9f1843cccdd33914821f76f353dfbb3]
docker_container.nginx_container: Refreshing state... [id=5416af39b4fd9195516bc718206fe2d5dc14863aaa8d2ed6d91e3f089dccea12]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # docker_container.nginx_container will be created
  + resource "docker_container" "nginx_container" {
      + attach                                      = false
      + bridge                                      = (known after apply)
      + command                                     = (known after apply)
      + container_logs                              = (known after apply)
      + container_read_refresh_timeout_milliseconds = 15000
      + entrypoint                                  = (known after apply)
      + env                                         = (known after apply)
      + exit_code                                   = (known after apply)
      + hostname                                    = (known after apply)
      + id                                          = (known after apply)
      + image                                       = "1360533896b3"
      + init                                        = (known after apply)
      + ipc_mode                                    = (known after apply)
      + log_driver                                  = (known after apply)
      + logs                                        = false
      + must_run                                    = true
      + name                                        = "my-nginx-container"
      + network_data                                = (known after apply)
      + read_only                                   = false
      + remove_volumes                              = true
      + restart                                     = "no"
      + rm                                          = false
      + runtime                                     = (known after apply)
      + security_opts                               = (known after apply)
      + shm_size                                    = (known after apply)
      + start                                       = true
      + stdin_open                                  = false
      + stop_signal                                 = (known after apply)
      + stop_timeout                                = (known after apply)
      + tty                                         = false
      + wait                                        = false
      + wait_timeout                                = 60

      + healthcheck (known after apply)

      + labels (known after apply)

      + ports {
          + external = 8080
          + internal = 80
          + ip       = "0.0.0.0"
          + protocol = "tcp"
        }
    }

  # docker_container.node_container will be created
  + resource "docker_container" "node_container" {
      + attach                                      = false
      + bridge                                      = (known after apply)
      + command                                     = (known after apply)
      + container_logs                              = (known after apply)
      + container_read_refresh_timeout_milliseconds = 15000
      + entrypoint                                  = (known after apply)
      + env                                         = (known after apply)
      + exit_code                                   = (known after apply)
      + hostname                                    = (known after apply)
      + id                                          = (known after apply)
      + image                                       = "66d53851aade"
      + init                                        = (known after apply)
      + ipc_mode                                    = (known after apply)
      + log_driver                                  = (known after apply)
      + logs                                        = false
      + must_run                                    = true
      + name                                        = "my-node-container"
      + network_data                                = (known after apply)
      + read_only                                   = false
      + remove_volumes                              = true
      + restart                                     = "no"
      + rm                                          = false
      + runtime                                     = (known after apply)
      + security_opts                               = (known after apply)
      + shm_size                                    = (known after apply)
      + start                                       = true
      + stdin_open                                  = false
      + stop_signal                                 = (known after apply)
      + stop_timeout                                = (known after apply)
      + tty                                         = false
      + wait                                        = false
      + wait_timeout                                = 60

      + healthcheck (known after apply)

      + labels (known after apply)

      + ports {
          + external = 3000
          + internal = 3000
          + ip       = "0.0.0.0"
          + protocol = "tcp"
        }
    }

Plan: 2 to add, 0 to change, 0 to destroy.

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if
you run "terraform apply" now.
PS E:\wisdom\terraform> terraform apply
docker_container.node_container: Refreshing state... [id=ac7e1fda3ce13d965fe79e310364aa1ea9f1843cccdd33914821f76f353dfbb3]
docker_container.nginx_container: Refreshing state... [id=5416af39b4fd9195516bc718206fe2d5dc14863aaa8d2ed6d91e3f089dccea12]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # docker_container.nginx_container will be created
  + resource "docker_container" "nginx_container" {
      + attach                                      = false
      + bridge                                      = (known after apply)
      + command                                     = (known after apply)
      + container_logs                              = (known after apply)
      + container_read_refresh_timeout_milliseconds = 15000
      + entrypoint                                  = (known after apply)
      + env                                         = (known after apply)
      + exit_code                                   = (known after apply)
      + hostname                                    = (known after apply)
      + id                                          = (known after apply)
      + image                                       = "1360533896b3"
      + init                                        = (known after apply)
      + ipc_mode                                    = (known after apply)
      + log_driver                                  = (known after apply)
      + logs                                        = false
      + must_run                                    = true
      + name                                        = "my-nginx-container"
      + network_data                                = (known after apply)
      + read_only                                   = false
      + remove_volumes                              = true
      + restart                                     = "no"
      + rm                                          = false
      + runtime                                     = (known after apply)
      + security_opts                               = (known after apply)
      + shm_size                                    = (known after apply)
      + start                                       = true
      + stdin_open                                  = false
      + stop_signal                                 = (known after apply)
      + stop_timeout                                = (known after apply)
      + tty                                         = false
      + wait                                        = false
      + wait_timeout                                = 60

      + healthcheck (known after apply)

      + labels (known after apply)

      + ports {
          + external = 8080
          + internal = 80
          + ip       = "0.0.0.0"
          + protocol = "tcp"
        }
    }

  # docker_container.node_container will be created
  + resource "docker_container" "node_container" {
      + attach                                      = false
      + bridge                                      = (known after apply)
      + command                                     = (known after apply)
      + container_logs                              = (known after apply)
      + container_read_refresh_timeout_milliseconds = 15000
      + entrypoint                                  = (known after apply)
      + env                                         = (known after apply)
      + exit_code                                   = (known after apply)
      + hostname                                    = (known after apply)
      + id                                          = (known after apply)
      + image                                       = "66d53851aade"
      + init                                        = (known after apply)
      + ipc_mode                                    = (known after apply)
      + log_driver                                  = (known after apply)
      + logs                                        = false
      + must_run                                    = true
      + name                                        = "my-node-container"
      + network_data                                = (known after apply)
      + read_only                                   = false
      + remove_volumes                              = true
      + restart                                     = "no"
      + rm                                          = false
      + runtime                                     = (known after apply)
      + security_opts                               = (known after apply)
      + shm_size                                    = (known after apply)
      + start                                       = true
      + stdin_open                                  = false
      + stop_signal                                 = (known after apply)
      + stop_timeout                                = (known after apply)
      + tty                                         = false
      + wait                                        = false
      + wait_timeout                                = 60

      + healthcheck (known after apply)

      + labels (known after apply)

      + ports {
          + external = 3000
          + internal = 3000
          + ip       = "0.0.0.0"
          + protocol = "tcp"
        }
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

docker_container.node_container: Creating...
docker_container.nginx_container: Creating...
docker_container.node_container: Creation complete after 3s [id=06b2491170772c1077e8cfbed468db0b932df50770f6bb26cedda61f6c8a18ba]
docker_container.nginx_container: Creation complete after 3s [id=4501a94460065f7602f3b307e141fe9c082dfa6a6765db245f8727ffd70a098e]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
PS E:\wisdom\terraform> docker ps
CONTAINER ID   IMAGE          COMMAND                  CREATED         STATUS         PORTS                    NAMES
06b249117077   66d53851aade   "docker-entrypoint.s…"   8 seconds ago   Up 6 seconds   0.0.0.0:3000->3000/tcp   my-node-container
4501a9446006   1360533896b3   "/docker-entrypoint.…"   8 seconds ago   Up 6 seconds   0.0.0.0:8080->80/tcp     my-nginx-container
```

![image](https://github.com/user-attachments/assets/f30b882d-4cc2-44aa-af63-6edea2c0f9c7)
![image](https://github.com/user-attachments/assets/4ab9f94c-58ae-4a07-a70a-85fee2f21acc)
