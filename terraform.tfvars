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

# VM 3
vm3_name            = "kube-controlplane-1"
vm3_id              = 122
vm3_target_node     = "proxmox"
vm3_image_url       = "https://cloud-images.ubuntu.com/noble/current/noble-server-cloudimg-amd64.img"
vm3_image_file_name = "noble-server-cloudimg-amd64.img"
vm3_tags            = ["terraform", "kube", "controlplane"]
vm3_cores           = 4
vm3_memory          = 4096
vm3_disk_size       = 50

# VM 4
vm4_name            = "kube-worker-1"
vm4_id              = 123
vm4_target_node     = "proxmox"
vm4_image_url       = "https://cloud-images.ubuntu.com/noble/current/noble-server-cloudimg-amd64.img"
vm4_image_file_name = "noble-server-cloudimg-amd64.img"
vm4_tags            = ["terraform", "kube", "worker"]
vm4_cores           = 4
vm4_memory          = 4096
vm4_disk_size       = 50