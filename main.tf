terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = ">= 0.44.0"
    }
  }

  backend "local" {
    path = "/terraform/state/proxmox.tfstate"
  }
}

provider "proxmox" {
  endpoint  = "https://proxmox.bogor.trihatmaja.lan"
  username  = var.pm_user
  password  = var.pm_password
  insecure  = true

  ssh {
    agent = false
  }
}