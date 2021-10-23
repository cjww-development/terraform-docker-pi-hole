[![Apache-2.0 license](http://img.shields.io/badge/license-Apache-brightgreen.svg)](http://www.apache.org/licenses/LICENSE-2.0.html)

terraform-docker-pi-hole
========================

This repository deploys a PiHole setup to docker

## Docs
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0.9 |
| <a name="requirement_docker"></a> [docker](#requirement\_docker) | 2.15.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_docker"></a> [docker](#provider\_docker) | 2.15.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [docker_container.pi_hole](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/container) | resource |
| [docker_image.pi_hole_image](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/image) | resource |
| [docker_network.pi_hole_network](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/network) | resource |
| [docker_volume.pi_hole_volume](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/volume) | resource |
| [docker_registry_image.pi_hole](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/data-sources/registry_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_advanced_variables"></a> [advanced\_variables](#input\_advanced\_variables) | Any advanced variables described here https://github.com/pi-hole/docker-pi-hole/#advanced-variables | `list(string)` | n/a | yes |
| <a name="input_dhcp_interface_bind"></a> [dhcp\_interface\_bind](#input\_dhcp\_interface\_bind) | The network interface that the dhcp port will bind to | `string` | `"0.0.0.0"` | no |
| <a name="input_dhcp_port"></a> [dhcp\_port](#input\_dhcp\_port) | The host port number the internal port 67 (DHCP) will map to | `number` | `67` | no |
| <a name="input_dns_interface_bind"></a> [dns\_interface\_bind](#input\_dns\_interface\_bind) | The network interface that the dns port will bind to | `string` | `"0.0.0.0"` | no |
| <a name="input_dns_port"></a> [dns\_port](#input\_dns\_port) | The host port number the internal port 53 (DNS) will map to | `number` | `53` | no |
| <a name="input_docker_host"></a> [docker\_host](#input\_docker\_host) | The host where docker resides | `string` | n/a | yes |
| <a name="input_http_interface_bind"></a> [http\_interface\_bind](#input\_http\_interface\_bind) | The network interface that the http port will bind to | `string` | `"0.0.0.0"` | no |
| <a name="input_http_port"></a> [http\_port](#input\_http\_port) | The host port number the internal port 80 (http) will map to | `number` | `80` | no |
| <a name="input_https_interface_bind"></a> [https\_interface\_bind](#input\_https\_interface\_bind) | The network interface that the https port will bind to | `string` | `"0.0.0.0"` | no |
| <a name="input_https_port"></a> [https\_port](#input\_https\_port) | The host port number the internal port 443 (https) will map to | `number` | `443` | no |
| <a name="input_local_timezone"></a> [local\_timezone](#input\_local\_timezone) | Your timezone to make sure logs rotate at local midnight instead of at UTC midnight | `string` | n/a | yes |
| <a name="input_optional_variables"></a> [optional\_variables](#input\_optional\_variables) | Any optional variables described here https://github.com/pi-hole/docker-pi-hole/#optional-variables | `list(string)` | n/a | yes |
| <a name="input_pi_hole_container_name"></a> [pi\_hole\_container\_name](#input\_pi\_hole\_container\_name) | The name of the Pi Hole container to be created | `string` | n/a | yes |
| <a name="input_pi_hole_image_name"></a> [pi\_hole\_image\_name](#input\_pi\_hole\_image\_name) | The name of the Pi Hole docker image that should be pulled | `string` | n/a | yes |
| <a name="input_pi_hole_network_name"></a> [pi\_hole\_network\_name](#input\_pi\_hole\_network\_name) | The name of the docker network that the Pi Hole container will be connected to | `string` | n/a | yes |
| <a name="input_pi_hole_volume_name"></a> [pi\_hole\_volume\_name](#input\_pi\_hole\_volume\_name) | The name of the docker volume to be used by the Pi Hole container | `string` | n/a | yes |
| <a name="input_server_ip"></a> [server\_ip](#input\_server\_ip) | Set to your server's LAN IP, used by web block modes and lighttpd bind address | `string` | `"0.0.0.0"` | no |
| <a name="input_web_password"></a> [web\_password](#input\_web\_password) | Admin password. Run docker logs pihole  grep random to find your random pass. To update this variable you need to destroy the current container and redeploy | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pi_hole_container_entrypoint"></a> [pi\_hole\_container\_entrypoint](#output\_pi\_hole\_container\_entrypoint) | List of the entrypoints for the deployed container |
| <a name="output_pi_hole_container_hostname"></a> [pi\_hole\_container\_hostname](#output\_pi\_hole\_container\_hostname) | The hostname assigned to the container after deploy |
| <a name="output_pi_hole_container_id"></a> [pi\_hole\_container\_id](#output\_pi\_hole\_container\_id) | The id of the deployed container |
| <a name="output_pi_hole_container_ip"></a> [pi\_hole\_container\_ip](#output\_pi\_hole\_container\_ip) | The ip address of the deployed container |
| <a name="output_pi_hole_container_networks"></a> [pi\_hole\_container\_networks](#output\_pi\_hole\_container\_networks) | The networks associated with the deployed container |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

License
=======
This code is open sourced licensed under the Apache 2.0 License
