resource "digitalocean_firewall" "firewall" {
  name = "firewall-role-wordpress"
  droplet_ids = [digitalocean_droplet.vm_droplet.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["138.94.126.52/32", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "53"
    source_addresses = ["138.94.126.52/32", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "443"
    source_addresses = ["138.94.126.52/32", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "80"
    source_addresses = ["138.94.126.52/32", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "22"
    destination_addresses = ["138.94.126.52/32", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "53"
    destination_addresses = ["138.94.126.52/32", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "80"
    destination_addresses = ["138.94.126.52/32", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "443"
    destination_addresses = ["138.94.126.52/32", "::/0"]
  }
}