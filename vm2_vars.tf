variable "vm2_name" {}
variable "vm2_id" {}
variable "vm2_target_node" {}
variable "vm2_image_url" {}
variable "vm2_image_file_name" {}
variable "vm2_tags" {
  type = list(string)
}
variable "vm2_cores" {}
variable "vm2_memory" {}
variable "vm2_disk_size" {}