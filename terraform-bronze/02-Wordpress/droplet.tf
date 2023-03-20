resource "digitalocean_droplet" "vm_droplet" {
  image    = var.image
  name     = "vm-wordpress"
  region   = var.region
  size     = var.size_droplet
  ssh_keys = [data.digitalocean_ssh_key.ssh_key.id]
  vpc_uuid = digitalocean_vpc.vpc_wordpress.id
}


