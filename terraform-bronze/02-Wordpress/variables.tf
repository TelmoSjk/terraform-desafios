variable "image" {
  type        = string
  default     = "ubuntu-22-04-x64"
  description = "Imagem da VM Droplet na Digital Ocean"
}

variable "size_droplet" {
  type        = string
  default     = "s-1vcpu-2gb"
  description = "Modelo Size da VM Droplet na Digital Ocean"
}

variable "size_mysql" {
  type        = string
  default     = "db-s-1vcpu-1gb"
  description = "Modelo Size do cluster DB mysql na Digital Ocean"
}

variable "engine" {
  type        = string
  default     = "mysql"
  description = "Engine do cluster DB mysql na Digital Ocean"
}

variable "region" {
  type        = string
  default     = "nyc1"
  description = "Regiao de uso na Digital Ocean"
}

variable "do_token" {
}
