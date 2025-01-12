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
![image](https://github.com/user-attachments/assets/f30b882d-4cc2-44aa-af63-6edea2c0f9c7)
![image](https://github.com/user-attachments/assets/4ab9f94c-58ae-4a07-a70a-85fee2f21acc)
![image](https://github.com/user-attachments/assets/39628381-ba39-468f-b879-b6ac510f537c)

