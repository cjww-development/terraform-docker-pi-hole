output "pi_hole_container_hostname" {
  value       = docker_container.pi_hole.hostname
  description = "The hostname assigned to the container after deploy"
}

output "pi_hole_container_networks" {
  value       = docker_container.pi_hole.networks
  description = "The networks associated with the deployed container"
}

output "pi_hole_container_ip" {
  value       = docker_container.pi_hole.ip_address
  description = "The ip address of the deployed container"
}

output "pi_hole_container_entrypoint" {
  value       = docker_container.pi_hole.entrypoint
  description = "List of the entrypoints for the deployed container"
}

output "pi_hole_container_id" {
  value       = docker_container.pi_hole.id
  description = "The id of the deployed container"
}
