resource "docker_network" "pi_hole_network" {
  name = var.pi_hole_network_name
}
