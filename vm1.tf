module "vm1" {
  source          = "./modules/proxmox_vm"
  vm_name         = var.vm1_name
  vm_id           = var.vm1_id
  target_node     = var.vm1_target_node
  image_url       = var.vm1_image_url
  image_file_name = var.vm1_image_file_name
}