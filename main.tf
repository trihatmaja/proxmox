terraform {
  backend "local" {
    path = "/terraform/state/proxmox.tfstate"
  }
}

provider "proxmox" {
  pm_api_url      = "https://proxmox.bogor.trihatmaja.lan/api2/json"
  pm_user         = var.pm_user
  pm_password     = var.pm_password
  pm_tls_insecure = true
}