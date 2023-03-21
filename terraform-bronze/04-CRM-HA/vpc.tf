resource "digitalocean_vpc" "vpc_crm" {
  name     = "vpc-crm"
  region   = var.region
  ip_range = "10.1.0.0/24"
}
