# Criação do Firewall para a VM Front End
resource "digitalocean_firewall" "firewall_frontend" {
  name        = "firewall-role-frontend"
  droplet_ids = [digitalocean_droplet.vm_droplet_frontend.id]


  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["239.13.117.114/32", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "53"
    source_addresses = ["239.13.117.114/32", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "443"
    source_addresses = ["239.13.117.114/32", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "80"
    source_addresses = ["239.13.117.114/32", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "22"
    destination_addresses = ["239.13.117.114/32", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "53"
    destination_addresses = ["239.13.117.114/32", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "80"
    destination_addresses = ["239.13.117.114/32", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "443"
    destination_addresses = ["239.13.117.114/32", "::/0"]
  }
}


# Criação do Firewall para a VM Camada de Negocio
resource "digitalocean_firewall" "firewall_cn" {
  name        = "firewall-role-cn"
  droplet_ids = [digitalocean_droplet.vm_droplet_cn.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "443"
    #source_addresses = ["239.13.117.114/32", "::/0"]
    #source_droplet_ids = [digitalocean_droplet.vm_droplet_frontend.ipv4_address]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "80"
    #source_droplet_ids = [digitalocean_droplet.vm_droplet_frontend.ipv4_address]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "53"
    source_addresses = ["239.13.117.114/32", "::/0"]

  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["239.13.117.114/32", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "80"
    #destination_droplet_ids = [digitalocean_droplet.vm_droplet_frontend.ipv4_address]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "443"
    #destination_droplet_ids = [digitalocean_droplet.vm_droplet_frontend.ipv4_address]
  }
  outbound_rule {
    protocol              = "tcp"
    port_range            = "53"
    destination_addresses = ["239.13.117.114/32", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "22"
    destination_addresses = ["239.13.117.114/32", "::/0"]
  }

}