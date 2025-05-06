# 🚀 Proxmox VM Provisioning via Terraform

Proyek ini memungkinkan provisioning VM ke Proxmox secara modular menggunakan Terraform, dijalankan melalui GitHub Actions dengan self-hosted runner. Ini menggunakan konsep cloud image. Untuk url cloud image bisa didapatkan dari beberapa tempat

1. [Ubuntu](https://cloud-images.ubuntu.com/)
2. [Debian](https://cloud.debian.org/images/cloud/)
3. [Centos](https://cloud.centos.org/altarch/9-stream/x86_64/images/)

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
  image_filename    = var.vm3_image_filename
  image_url       = var.vm3_image_url
}
```

### 2. Tambahkan variabel di `variables/vm3.tf`

```hcl
variable "vm3_name" {}
variable "vm3_id" {}
variable "vm3_target_node" {}
variable "vm3_image_url" {}
variable "vm3_image_filename" {}
```

### 3. Tambahkan nilai variabel di `terraform.tfvars`

```hcl
vm3_name            = "vm-ubuntu-03"
vm3_id              = 102
vm3_target_node     = "proxmox2"
vm3_image_url       = "https://cloud-images.ubuntu.com/noble/current/noble-server-cloudimg-amd64.img"
vm3_image_filename  = "noble-server-cloudimg-amd64.img"
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
  vm_disk_size = 50
}
```

## 📎 Referensi

[Terraform Provider Proxmox](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/guides/cloud-image)