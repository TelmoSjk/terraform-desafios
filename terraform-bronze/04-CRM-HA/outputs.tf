output "vm_ip_frontend1" {
  value = digitalocean_droplet.vm_frontend1.ipv4_address
}

output "vm_ip_frontend2" {
  value = digitalocean_droplet.vm_frontend2.ipv4_address
}

output "vm_ip_cn1" {
  value = digitalocean_droplet.vm_cn1.ipv4_address
}

output "vm_ip_cn2" {
  value = digitalocean_droplet.vm_cn2.ipv4_address
}

output "loadbalancer_ip_frontend" {
  value = digitalocean_loadbalancer.public.ip
}

output "db_name" {
  value = digitalocean_database_cluster.postgres-crm.name
}
