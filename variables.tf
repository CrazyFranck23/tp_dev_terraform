variable "image_name" {
  description = "Nom de l'image Docker"
  type        = string
  default     = "flask-terraform"
}

variable "image_tag" {
  description = "Tag de l'image Docker"
  type        = string
  default     = "latest"
}

variable "container_name" {
  description = "Nom du conteneur Docker"
  type        = string
  default     = "flask-tp-terraform"
}

variable "internal_port" {
  description = "Port d'écoute à l'intérieur du conteneur"
  type        = number
  default     = 5000
}

variable "external_port" {
  description = "Port exposé sur la machine hôte"
  type        = number
  default     = 5000
}
