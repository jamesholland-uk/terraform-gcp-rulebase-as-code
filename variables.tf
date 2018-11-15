// PROJECT Variables

variable "region" {
  default = "europe-west2"
}

variable "region_zone" {
  default = "europe-west2-a"
}

variable "project_name" {
  description = "terraform-rulebase-as-code"
  default     = "terraform-rulebase-as-code"
}

//variable "credentials_file_path" {
//  description = "Path to the JSON file used to describe your account credentials"
//  default     = "../gcp_compute_key_svc_terraform-rulebase-as-code.json"
//}

variable "credentials_environment_variable" {
  description = "Environment variable containing your account credentials"
  default     = ""
}

variable "zone" {
  default = "europe-west2-a"
}

variable "zone_2" {
  default = "europe-west2-b"
}

variable "zone_3" {
  default = "europe-west2-c"
}

variable "public_key" {
  default = "admin:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDDf15iBESKgt5FQcZurkP9y9NVTq+Ty4PZnomKBb4f/dZPFcTOd3/mpjcXIKHXCxD5Mw6PXYc/xpdMldjbTcl+yf2fcFeJNkMV1xKl6CR4yu1ZD+p7J6enHwZScxS7PVSs8WuADNsv+oSZYiyDkJhKaYLmF3PT0LSqYEHDgH2ov5l67ihoex9pHJ3/rElkpo0GZxFYeQ95vkfmczvVrpwAbO0MgpeJOClshdOASUrrT8F7IE3KsbIriz/Y7c46G2zk+rqvMs4ZaPDXDNwIXizonXMKTd3+ofuDz/9XezOAIQthi9vzQktmp+/hcbOwnKA/0BegCtd7337LTsS5zb2V"
}

// FIREWALL Variables
variable "firewall_name" {
  default = "firewall"
}

variable "zone_fw" {
  type    = "list"
  default = ["europe-west2-a"]
}

variable "image_fw" {
  # default = "Your_VM_Series_Image"
  
  # /Cloud Launcher API Calls to images/
  default = "https://www.googleapis.com/compute/v1/projects/paloaltonetworksgcp-public/global/images/vmseries-byol-810"
  # default = "https://www.googleapis.com/compute/v1/projects/paloaltonetworksgcp-public/global/images/vmseries-bundle2-810"
  # default = "https://www.googleapis.com/compute/v1/projects/paloaltonetworksgcp-public/global/images/vmseries-bundle1-810"

}

variable "machine_type_fw" {
  default = "n1-standard-4"
}

variable "machine_cpu_fw" {
  default = "Intel Skylake"
}

variable "bootstrap_bucket_fw" {
  default = "tf-rules-as-code-bucket"
}

variable "interface_0_name" {
  default = "management"
}

variable "interface_1_name" {
  default = "untrust"
}

variable "interface_2_name" {
  default = "trust"
}

variable "interface_3_name" {
  default = "gke"
}

variable "scopes_fw" {
  default = ["https://www.googleapis.com/auth/cloud.useraccounts.readonly",
    "https://www.googleapis.com/auth/devstorage.read_only",
    "https://www.googleapis.com/auth/logging.write",
    "https://www.googleapis.com/auth/monitoring.write",
  ]
}

// GKE CLUSTER Vaiables

variable "cluster_name" {
  description = "Google Container Cluster name to use for the cluster"
  default     = "gkecluster"
}
