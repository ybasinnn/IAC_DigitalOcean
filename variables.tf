variable "ssh_pub_key" {
  description = "SSH public key string"
  type        = string
  sensitive   = false
}

variable "DO_TOKEN" {
  type        = string
  description = "DigitalOcean API token"
  sensitive   = true
}