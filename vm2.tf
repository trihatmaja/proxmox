module "vm2" {
  source          = "./modules/proxmox_vm"
  vm_name         = var.vm2_name
  vm_id           = var.vm2_id
  target_node     = var.vm2_target_node
  image_url       = var.vm2_image_url
  image_file_name = var.vm2_image_file_name
  vm_tags         = var.vm2_tags
  vm_username     = var.vm_username
  vm_password     = var.vm_password
  vm_cores        = var.vm2_cores
  vm_memory       = var.vm2_memory
  vm_disk_size    = var.vm2_disk_size
  vm_keys         = var.vm_keys
}
