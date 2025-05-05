resource "proxmox_vm_qemu" "vm" {
  name        = var.vm_name
  target_node = var.target_node
  vmid        = var.vm_id

  desc        = "Provisioned from module"
  onboot      = true
  cores       = var.vm_cores
  sockets     = 1
  memory      = var.vm_memory
  scsihw      = "virtio-scsi-pci"
  boot        = "order=cdrom;ide2;scsi0"

  disk {
    slot     = 0
    size     = var.vm_disk_size
    type     = "scsi"
    storage  = var.vm_storage
    format   = "qcow2"
  }

  cdrom {
    file     = var.iso_path
    storage  = var.iso_storage
  }

  network {
    model  = "virtio"
    bridge = var.vm_bridge
  }

  os_type   = "l26"
  bootdisk = "scsi0"
  agent    = 0

  lifecycle {
    ignore_changes = [network]
  }
}
