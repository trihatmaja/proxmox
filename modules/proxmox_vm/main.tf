terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
    }
  }
}

resource "proxmox_virtual_environment_vm" "vm" {
  name      = var.vm_name
  vm_id     = var.vm_id
  node_name = var.target_node
  description = "Managed by Terraform"
  tags = var.vm_tags

  initialization {
    user_account {
      username = var.vm_username
      password = var.vm_password
    }

    ip_config {
      ipv4 {
        address = "dhcp"
      }
    }
  }

  cpu {
    cores = var.vm_cores
  }

  memory {
    dedicated = var.vm_memory
  }

  disk {
    interface    = "scsi0"
    datastore_id = var.vm_storage
    size         = var.vm_disk_size
    file_format  = "qcow2"
  }

  network_device {
    bridge = var.vm_bridge
    model  = "virtio"
  }

  operating_system {
    type = "l26"
  }

  boot_order = ["cdrom", "disk"]

  agent {
    enabled = false
  }

  started = true
}

resource "proxmox_virtual_environment_download_file" "cloud_image" {
  content_type = "iso"
  datastore_id = "ssd-proxmox"
  node_name    = var.target_node
  url          = var.image_url
  file_name    = var.image_file_name
}
