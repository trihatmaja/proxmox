# VM 1
vm1_name            = "kube-controlplane-0"
vm1_id              = 120
vm1_target_node     = "proxmox2"
vm1_image_url       = "https://cloud-images.ubuntu.com/noble/current/noble-server-cloudimg-amd64.img"
vm1_image_file_name = "noble-server-cloudimg-amd64.img"
vm1_tags            = ["terraform", "kube", "controlplane"]
vm1_cores           = 4
vm1_memory          = 4096
vm1_disk_size       = 50

# VM 2
vm2_name            = "kube-worker-0"
vm2_id              = 121
vm2_target_node     = "proxmox2"
vm2_image_url       = "https://cloud-images.ubuntu.com/noble/current/noble-server-cloudimg-amd64.img"
vm2_image_file_name = "noble-server-cloudimg-amd64.img"
vm2_tags            = ["terraform", "kube", "worker"]
vm2_cores           = 4
vm2_memory          = 4096
vm2_disk_size       = 50