<<<<<<< HEAD
resource "digitalocean_droplet" "vm_droplet_frontend" {
=======
resource "digitalocean_droplet" "vm_frontend" {
>>>>>>> 71731fa (Updating projets terraform-bronze, adding 04-CRM-HA and Updating others directors)
  image    = var.image
  name     = "vm-frontend"
  region   = var.region
  size     = var.size_droplet
  ssh_keys = [data.digitalocean_ssh_key.ssh_key.id]
  vpc_uuid = digitalocean_vpc.vpc_crm.id
}

<<<<<<< HEAD
resource "digitalocean_droplet" "vm_droplet_cn" {
  image    = var.image
  name     = "vm-cn"
  region   = var.region
  size     = var.size_droplet
  ssh_keys = [data.digitalocean_ssh_key.ssh_key.id]
  vpc_uuid = digitalocean_vpc.vpc_crm.id
}



=======
resource "digitalocean_droplet" "vm_cn" {
  image  = var.image
  name   = "vm-cn"
  region = var.region
  size   = var.size_droplet
  ssh_keys = [data.digitalocean_ssh_key.ssh_key.id]
  vpc_uuid = digitalocean_vpc.vpc_crm.id
}
>>>>>>> 71731fa (Updating projets terraform-bronze, adding 04-CRM-HA and Updating others directors)
