provider "aws" {
  region = "us-east-1"
}

variable "sg_name" {
  type    = string
  default = "k8s-sg"
}

variable "instance_name" {
  type    = string
  default = "test-instance"
}

variable "ami_id" {
  type    = string
  default = "ami-0735c191cf914754d"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type    = string
  default = "test-kp-windows"
}

variable "security_group_ids" {
  type    = list(string)
  default = ["sg-01ce819e8d65269f0"]
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "subnet_ids" {
  type    = list(string)
  default = ["subnet-058a7514ba8adbb07", "subnet-0dbcd1ac168414927", "subnet-032f5077729435858"]
}

variable "inbound_from_port" {
  type    = list(string)
  default = ["0"]
}

variable "inbound_to_port" {
  type    = list(string)
  default = ["0"]
}

variable "inbound_protocol" {
  type    = list(string)
  default = ["-1"]
}

variable "inbound_cidr" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "outbound_from_port" {
  type    = list(string)
  default = ["0"]
}

variable "outbound_to_port" {
  type    = list(string)
  default = ["0"]
}

variable "outbound_protocol" {
  type    = list(string)
  default = ["-1"]
}

variable "outbound_cidr" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

