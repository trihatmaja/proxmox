module "vm3" {
  source          = "./modules/proxmox_vm"
  vm_name         = var.vm3_name
  vm_id           = var.vm3_id
  target_node     = var.vm3_target_node
  image_url       = var.vm3_image_url
  image_file_name = var.vm3_image_file_name
  vm_tags         = var.vm3_tags
  vm_username     = var.vm_username
  vm_password     = var.vm_password
  vm_cores        = var.vm3_cores
  vm_memory       = var.vm3_memory
  vm_disk_size    = var.vm3_disk_size
}
