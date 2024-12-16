resource "digitalocean_droplet" "vpn" {
  count  = 2
  name   = "vpn${count.index + 1}"
  region = var.region
  size   = var.droplet_size
  image  = var.droplet_image
  
  ssh_keys = [var.ssh_key_id]
}