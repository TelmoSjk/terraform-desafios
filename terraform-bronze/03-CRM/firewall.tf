# Criação do Firewall para a VM Front End
resource "digitalocean_firewall" "firewall_frontend" {
  name        = "firewall-role-frontend"
<<<<<<< HEAD
  droplet_ids = [digitalocean_droplet.vm_droplet_frontend.id]
=======
  droplet_ids = [digitalocean_droplet.vm_frontend.id]
>>>>>>> 71731fa (Updating projets terraform-bronze, adding 04-CRM-HA and Updating others directors)


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
<<<<<<< HEAD
    port_range       = "443"
=======
    port_range       = "80"
>>>>>>> 71731fa (Updating projets terraform-bronze, adding 04-CRM-HA and Updating others directors)
    source_addresses = ["239.13.117.114/32", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
<<<<<<< HEAD
    port_range       = "80"
=======
    port_range       = "443"
>>>>>>> 71731fa (Updating projets terraform-bronze, adding 04-CRM-HA and Updating others directors)
    source_addresses = ["239.13.117.114/32", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "22"
<<<<<<< HEAD
    destination_addresses = ["239.13.117.114/32", "::/0"]
=======
    destination_addresses = ["0.0.0.0/0", "::/0"]
>>>>>>> 71731fa (Updating projets terraform-bronze, adding 04-CRM-HA and Updating others directors)
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "53"
<<<<<<< HEAD
    destination_addresses = ["239.13.117.114/32", "::/0"]
=======
    destination_addresses = ["0.0.0.0/0", "::/0"]
>>>>>>> 71731fa (Updating projets terraform-bronze, adding 04-CRM-HA and Updating others directors)
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "80"
<<<<<<< HEAD
    destination_addresses = ["239.13.117.114/32", "::/0"]
=======
    destination_addresses = ["0.0.0.0/0", "::/0"]
>>>>>>> 71731fa (Updating projets terraform-bronze, adding 04-CRM-HA and Updating others directors)
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "443"
<<<<<<< HEAD
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
=======
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}

# Criação do Firewall para a VM Camada de Negocio
resource "digitalocean_firewall" "firewall_cn" {
  name        = "firewall-role-cn"
  droplet_ids = [digitalocean_droplet.vm_cn.id]

  inbound_rule {
    protocol   = "tcp"
    port_range = "443"
    #Esta rule foi criada para fazer o acesso somente pela VM do FrontEnd
    source_addresses = [digitalocean_droplet.vm_frontend.ipv4_address_private]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "80"
    #Esta rule foi criada para fazer o acesso somente pela VM do FrontEnd
    source_addresses = [digitalocean_droplet.vm_frontend.ipv4_address_private]
>>>>>>> 71731fa (Updating projets terraform-bronze, adding 04-CRM-HA and Updating others directors)
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
<<<<<<< HEAD
    protocol              = "tcp"
    port_range            = "80"
    #destination_droplet_ids = [digitalocean_droplet.vm_droplet_frontend.ipv4_address]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "443"
    #destination_droplet_ids = [digitalocean_droplet.vm_droplet_frontend.ipv4_address]
=======
    protocol   = "tcp"
    port_range = "80"
    #Esta rule foi criada para fazer o acesso somente pela VM do FrontEnd
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol   = "tcp"
    port_range = "443"
    #Esta rule foi criada para fazer o acesso somente pela VM do FrontEnd
    destination_addresses = ["0.0.0.0/0", "::/0"]
>>>>>>> 71731fa (Updating projets terraform-bronze, adding 04-CRM-HA and Updating others directors)
  }
  outbound_rule {
    protocol              = "tcp"
    port_range            = "53"
<<<<<<< HEAD
    destination_addresses = ["239.13.117.114/32", "::/0"]
=======
    destination_addresses = ["0.0.0.0/0", "::/0"]
>>>>>>> 71731fa (Updating projets terraform-bronze, adding 04-CRM-HA and Updating others directors)
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "22"
<<<<<<< HEAD
    destination_addresses = ["239.13.117.114/32", "::/0"]
  }

}
=======
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}
>>>>>>> 71731fa (Updating projets terraform-bronze, adding 04-CRM-HA and Updating others directors)
