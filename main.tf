terraform {
  backend "local" {
    path = "./state/terraform.tfstate"
  }
}


module "droplets" {
  source = "./modules/droplets"

  digitalocean_token = var.digitalocean_token
  region             = var.region
  droplet_size       = var.droplet_size
  droplet_image      = var.droplet_image
  ssh_key_id         = var.ssh_key_id
}