output "container_ip" {
  description = "Adresse IP du conteneur"
  value       = docker_container.flask_container.network_data[0].ip_address
}

output "container_port" {
  description = "Port externe exposé sur la machine hôte"
  value       = docker_container.flask_container.ports[0].external
}

output "image_id" {
  description = "ID de l'image Docker construite"
  value       = docker_image.flask_app.image_id
}
