data "docker_registry_image" "pi_hole" {
  name = var.pi_hole_image_name
}

resource "docker_image" "pi_hole_image" {
  name          = data.docker_registry_image.pi_hole.name
  pull_triggers = [data.docker_registry_image.pi_hole.sha256_digest]
  keep_locally  = true
}
