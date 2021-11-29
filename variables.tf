variable "docker_host" {
  type        = string
  description = "The host where docker resides"
}

variable "pi_hole_volume_name" {
  type        = string
  description = "The name of the docker volume to be used by the Pi Hole container"
}

variable "pi_hole_network_name" {
  type        = string
  description = "The name of the docker network that the Pi Hole container will be connected to"
}

variable "pi_hole_image_name" {
  type        = string
  description = "The name of the Pi Hole docker image that should be pulled"
}

variable "pi_hole_container_name" {
  type        = string
  description = "The name of the Pi Hole container to be created"
}

variable "dns_port" {
  type        = number
  description = "The host port number the internal port 53 (DNS) will map to"
  default     = 53
}

variable "dns_interface_bind" {
  type        = string
  description = "The network interface that the dns port will bind to"
  default     = "0.0.0.0"
}

variable "dhcp_port" {
  type        = number
  description = "The host port number the internal port 67 (DHCP) will map to"
  default     = 67
}

variable "dhcp_interface_bind" {
  type        = string
  description = "The network interface that the dhcp port will bind to"
  default     = "0.0.0.0"
}

variable "http_port" {
  type        = number
  description = "The host port number the internal port 80 (http) will map to"
  default     = 80
}

variable "http_interface_bind" {
  type        = string
  description = "The network interface that the http port will bind to"
  default     = "0.0.0.0"
}

variable "https_port" {
  type        = number
  description = "The host port number the internal port 443 (https) will map to"
  default     = 443
}

variable "https_interface_bind" {
  type        = string
  description = "The network interface that the https port will bind to"
  default     = "0.0.0.0"
}

variable "local_timezone" {
  type        = string
  description = "Your timezone to make sure logs rotate at local midnight instead of at UTC midnight"
}

variable "web_password" {
  type        = string
  description = "Admin password. Run docker logs pihole  grep random to find your random pass. To update this variable you need to destroy the current container and redeploy"
  sensitive   = true
}

variable "server_ip" {
  type        = string
  description = "Set to your server's LAN IP, used by web block modes and lighttpd bind address"
  default     = "0.0.0.0"
}

variable "optional_variables" {
  type        = list(string)
  description = "Any optional variables described here https://github.com/pi-hole/docker-pi-hole/#optional-variables"
}

variable "advanced_variables" {
  type        = list(string)
  description = "Any advanced variables described here https://github.com/pi-hole/docker-pi-hole/#advanced-variables"
}

variable "restart_policy" {
  type        = string
  description = "The restart policy for the container. Must be one of 'no', 'on-failure', 'always', 'unless-stopped'. Defaults to no."
  validation {
    condition = contains(
    [
      "no",
      "on-failure",
      "always",
      "unless-stopped"
    ],
    var.restart_policy
    )
    error_message = "The provided value did not match a valid value."
  }
}
