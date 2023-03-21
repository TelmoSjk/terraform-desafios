resource "digitalocean_database_cluster" "postgres-crm" {
  name       = "postgres-cluster-crm"
  engine     = var.engine
  version    = "11"
  size       = var.size_db
  region     = var.region
  node_count = 1
}

resource "digitalocean_database_firewall" "database-firewall" {
  cluster_id = digitalocean_database_cluster.postgres-crm.id

  rule {
    type  = "droplet"
<<<<<<< HEAD
    value = digitalocean_droplet.vm_droplet_cn.id
=======
    value = digitalocean_droplet.vm_cn.id
>>>>>>> 71731fa (Updating projets terraform-bronze, adding 04-CRM-HA and Updating others directors)
  }
}
