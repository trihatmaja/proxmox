module "vm1" {
  source          = "./modules/proxmox_vm"
  vm_name         = var.vm4_name
  vm_id           = var.vm4_id
  target_node     = var.vm4_target_node
  image_url       = var.vm4_image_url
  image_file_name = var.vm4_image_file_name
  vm_tags         = var.vm4_tags
  vm_username     = var.vm_username
  vm_password     = var.vm_password
  vm_cores        = var.vm4_cores
  vm_memory       = var.vm4_memory
  vm_disk_size    = var.vm4_disk_size
}
