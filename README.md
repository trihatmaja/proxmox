# 🚀 Proxmox VM Provisioning via Terraform

Proyek ini memungkinkan provisioning VM ke Proxmox secara modular menggunakan Terraform, dijalankan melalui GitHub Actions dengan self-hosted runner.

---

## 📦 Struktur Proyek

.
├── proxmox
│   ├── vm1.tf
│   │   ├── variables
│   │   │   └── vm1.tf
|   |   ├──terraform.tfvars   
    └── modules
        └── proxmox_vm # reusable

---

## ➕ Menambahkan VM Baru

### 1. Tambahkan file `vmX.tf`

Contoh `vm3.tf`:
```hcl
module "vm3" {
  source         = "./modules/proxmox_vm"
  vm_name        = var.vm3_name
  vm_id          = var.vm3_id
  target_node    = var.vm3_target_node
  iso_storage    = var.vm3_iso_storage
  iso_path       = var.vm3_iso_path
}
```

### 2. Tambahkan variabel di `variables/vm3.tf`

```hcl
variable "vm3_name" {}
variable "vm3_id" {}
variable "vm3_target_node" {}
variable "vm3_iso_storage" {}
variable "vm3_iso_path" {}
```

### 3. Tambahkan nilai variabel di `terraform.tfvars`

```hcl
vm3_name         = "vm-ubuntu-03"
vm3_id           = 102
vm3_target_node  = "proxmox2"
vm3_iso_storage  = "synology-new"
vm3_iso_path     = "synology-new:iso/ubuntu-24.04.1-live-server-amd64.iso"
```

### 4. Jalankan Terraform
#### A. Manual:
```
~ terraform init
~ terraform plan
~ terraform apply
```

#### B. CI/CD GitHub Actions:
1. Push perubahan ke repo
2. Lihat hasil terraform plan di tab Actions
3. Jalankan terraform-apply.yml secara manual

## ⚠️ Tips
- Jangan mendefinisikan default variabel di root jika sudah ada di module.
- File state berada di /mnt/terraform-state/ (via Docker volume).
- Jangan commit file .tfstate, sudah di .gitignore.

## 🧩 Menyesuaikan Default (opsional)
Jika ingin override jumlah CPU, RAM, disk:

```hcl
module "vm3" {
  ...
  vm_cores     = 4
  vm_memory    = 4096
  vm_disk_size = "50G"
}
```

## 📎 Referensi
[https://github.com/Telmate/terraform-provider-proxmox]Terraform Provider Proxmox

---