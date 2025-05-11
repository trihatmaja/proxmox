variable "vm_name" {}
variable "target_node" {}
variable "vm_id" {}
variable "image_url" {}
variable "image_file_name" {}
variable "vm_tags" {
  type    = list(string)
  default = []
}
variable "vm_username" {}
variable "vm_password" {}
variable "vm_keys" {}

# Optional defaults
variable "vm_cores"     { default = 2 }
variable "vm_memory"    { default = 2048 }
variable "vm_disk_size" { default = 32 }
variable "vm_storage"   { default = "ssd-proxmox" }
variable "vm_bridge"    { default = "vmbr0" }
variable "vm_started"   { default = true }
