variable "ssh_pub_key_path" {
  description = "Path to ssh key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "DO_TOKEN" {
  type        = string
  description = "DigitalOcean API token"
  sensitive   = true
}