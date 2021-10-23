resource "docker_container" "pi_hole" {
  name  = var.pi_hole_container_name
  image = docker_image.pi_hole_image.latest

  ports {
    internal = 53
    external = var.dns_port
    ip       = var.dns_interface_bind
    protocol = "tcp"
  }

  ports {
    internal = 53
    external = var.dns_port
    ip       = var.dns_interface_bind
    protocol = "udp"
  }

  ports {
    internal = 67
    external = var.dhcp_port
    ip       = var.dhcp_interface_bind
    protocol = "udp"
  }

  ports {
    internal = 80
    external = var.http_port
    ip       = var.http_interface_bind
  }

  ports {
    internal = 443
    external = var.https_port
    ip       = var.https_interface_bind
  }

  volumes {
    container_path = "/etc/pihole/"
    host_path      = "${docker_volume.pi_hole_volume.mountpoint}/pihole"
    read_only      = false
  }

  volumes {
    container_path = "/etc/dnsmasq.d/"
    host_path      = "${docker_volume.pi_hole_volume.mountpoint}/dnsmasq.d"
    read_only      = false
  }

  env = concat(
    [
      "TZ=${var.local_timezone}",
      "WEBPASSWORD=${var.web_password}",
      "ServerIp=${var.server_ip}"
    ],
    var.optional_variables,
    var.advanced_variables
  )
}
