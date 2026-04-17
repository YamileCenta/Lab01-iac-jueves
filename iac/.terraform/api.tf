resource "docker_container" "backend" {
  name  = "api01"
  image = docker_image.api.image_id

  ports {
    internal = 3000
    external = 4002
  }
}