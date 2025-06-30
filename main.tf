resource "digitalocean_ssh_key" "my_key" {
  name       = "my-key"
  public_key = var.ssh_pub_key
}

resource "digitalocean_droplet" "droplet" {
  image   = "ubuntu-24-04-x64"
  name    = "iac-project"
  region  = "fra1"
  size    = "s-1vcpu-1gb"
  backups = false
  ssh_keys = [digitalocean_ssh_key.my_key.id]  # Link the uploaded key

  monitoring        = true
}