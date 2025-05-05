variable "vm_name" {}
variable "target_node" {}
variable "vm_id" {}
variable "iso_storage" {}
variable "iso_path" {}

# Optional defaults
variable "vm_cores"     { default = 2 }
variable "vm_memory"    { default = 2048 }
variable "vm_disk_size" { default = "32G" }
variable "vm_storage"   { default = "ssd-proxmox" }
variable "vm_bridge"    { default = "vmbr0" }
