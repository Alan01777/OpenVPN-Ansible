output "droplet_ip_addresses" {
  value = digitalocean_droplet.vpn.*.ipv4_address
}

output "droplet_ids" {
  value = [for droplet in digitalocean_droplet.vpn : droplet.id]
}


output "droplet_names" {
  value = [for droplet in digitalocean_droplet.vpn : droplet.name]
}