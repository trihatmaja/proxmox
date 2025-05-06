module "vm1" {
  source          = "./modules/proxmox_vm"
  vm_name         = var.vm1_name
  vm_id           = var.vm1_id
  target_node     = var.vm1_target_node
  image_url       = var.vm1_image_url
  image_file_name = var.vm1_image_file_name
  vm_tags         = var.vm1_tags
  vm_username     = var.vm_username
  vm_password     = var.vm_password
  vm_cores        = var.vm1_cores
  vm_memory       = var.vm1_memory
  vm_disk_size    = var.vm1_disk_size
}
