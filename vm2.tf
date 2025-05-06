module "vm2" {
  source         = "./modules/proxmox_vm"
   providers = {
    proxmox = proxmox
  }
  
  vm_name        = var.vm2_name
  vm_id          = var.vm2_id
  target_node    = var.vm2_target_node
  iso_storage    = var.vm2_iso_storage
  iso_path       = var.vm2_iso_path
}