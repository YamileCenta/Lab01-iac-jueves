resource "docker_container" "frontend" {
  name  = "web01"
  image = docker_image.web.image_id

  ports {
    internal = 80
    external = 4001
  }
}