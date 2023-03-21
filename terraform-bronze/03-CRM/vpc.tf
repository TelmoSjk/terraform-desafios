resource "digitalocean_vpc" "vpc_crm" {
  name     = "vpc-crm"
  region   = var.region
  ip_range = "10.0.0.0/24"
<<<<<<< HEAD
}
=======
}
>>>>>>> 71731fa (Updating projets terraform-bronze, adding 04-CRM-HA and Updating others directors)
