output "droplet_ip_frontend" {
  value = digitalocean_droplet.vm_droplet_frontend.ipv4_address
}

output "droplet_ip_cn" {
  value = digitalocean_droplet.vm_droplet_cn.ipv4_address
}

output "droplet_ip_frontend_private" {
  value = digitalocean_droplet.vm_droplet_frontend.ipv4_address_private
}


output "droplet_ip_cn_private" {
  value = digitalocean_droplet.vm_droplet_cn.ipv4_address_private
}

output "droplet_frontend_name" {
  value = digitalocean_droplet.vm_droplet_frontend.name
}

output "droplet_cn_name" {
  value = digitalocean_droplet.vm_droplet_cn.name
}

output "db_name" {
  value = digitalocean_database_cluster.postgres-crm.name
}
