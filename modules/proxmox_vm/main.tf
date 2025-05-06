terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
    }
  }
}

resource "proxmox_vm_qemu" "vm" {
  name        = var.vm_name
  vm_id       = var.vm_id
  node_name   = var.target_node
  desc        = "Provisioned via Terraform"

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

  cdrom {
    enabled      = true
    file_id      = var.iso_path
    datastore_id = var.iso_storage
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
