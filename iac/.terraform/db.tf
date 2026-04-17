resource "docker_image" "postgres" {
  name = "postgres:15"
}

resource "docker_container" "db" {
  name  = "bd01"
  image = docker_image.postgres.image_id

  ports {
    internal = 5432
    external = 4003
  }

  env = [
    "POSTGRES_USER=admin",
    "POSTGRES_PASSWORD=admin123",
    "POSTGRES_DB=appdb"
  ]
}