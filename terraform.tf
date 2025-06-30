terraform {
  cloud {
    organization = "YordanOrg"

    workspaces {
      name = "iac-digitalocean"
    }
  }

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.DO_TOKEN
}

