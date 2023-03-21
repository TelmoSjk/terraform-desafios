output "droplet_ip_frontend" {
<<<<<<< HEAD
  value = digitalocean_droplet.vm_droplet_frontend.ipv4_address
}

output "droplet_ip_cn" {
  value = digitalocean_droplet.vm_droplet_cn.ipv4_address
}

output "droplet_ip_frontend_private" {
  value = digitalocean_droplet.vm_droplet_frontend.ipv4_address_private
=======
  value = digitalocean_droplet.vm_frontend.ipv4_address
}

output "droplet_ip_cn" {
  value = digitalocean_droplet.vm_cn.ipv4_address
}

output "droplet_ip_frontend_private" {
  value = digitalocean_droplet.vm_frontend.ipv4_address_private
>>>>>>> 71731fa (Updating projets terraform-bronze, adding 04-CRM-HA and Updating others directors)
}


output "droplet_ip_cn_private" {
<<<<<<< HEAD
  value = digitalocean_droplet.vm_droplet_cn.ipv4_address_private
}

output "droplet_frontend_name" {
  value = digitalocean_droplet.vm_droplet_frontend.name
}

output "droplet_cn_name" {
  value = digitalocean_droplet.vm_droplet_cn.name
=======
  value = digitalocean_droplet.vm_cn.ipv4_address_private
}

output "droplet_frontend_name" {
  value = digitalocean_droplet.vm_frontend.name
}

output "droplet_cn_name" {
  value = digitalocean_droplet.vm_cn.name
>>>>>>> 71731fa (Updating projets terraform-bronze, adding 04-CRM-HA and Updating others directors)
}

output "db_name" {
  value = digitalocean_database_cluster.postgres-crm.name
}
