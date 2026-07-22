job "hello-devops" {
  datacenters = ["dc1"]
  type = "service"

  group "app" {
    count = 1

    network {
      port "http" {
        static = 8080
      }
    }

    task "hello" {
      driver = "docker"

      config {
        image = "hello-devops:latest"
        ports = ["http"]
      }

      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}
