module "vm1" {
  source         = "./modules/proxmox_vm"
   providers = {
    proxmox = proxmox
  }

  vm_name        = var.vm1_name
  vm_id          = var.vm1_id
  target_node    = var.vm1_target_node
  iso_storage    = var.vm1_iso_storage
  iso_path       = var.vm1_iso_path
}
