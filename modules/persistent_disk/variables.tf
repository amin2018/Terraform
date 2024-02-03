variable "disk_name" {
    description = "The name of the disk"
    type        = string
}

variable "zone" {
    description = "The zone where the disk will be created"
    type        = string
}

variable "vm_name" {
    description = "The name of the VM to attach the disk to"
    type        = string
}

variable "project_id" {
    description = "The ID of the project where the VM is located"
    type        = string
}