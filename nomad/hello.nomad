job "devops-hello" {
  datacenters = ["dc1"]
  type = "service"

  group "hello" {
    count = 1

    task "hello-task" {
      driver = "docker"

      config {
        image = "devops-hello:latest"
        force_pull = false
      }

      resources {
        cpu    = 100
        memory = 64
      }
    }
  }
}
