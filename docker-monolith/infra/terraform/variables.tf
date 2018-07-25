variable project {
  description = "Project ID"
}

variable region {
  description = "Region"
  default     = "europe-west4"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable disk_image {
  description = "Disk image"
}

variable private_key_path {
  description = "Path to the public key used for ssh access"
}

variable zone {
  description = "Region"
  default     = "europe-west4-b"
}

variable "count" {
  description = "Number of instance"
  default     = 1
}
