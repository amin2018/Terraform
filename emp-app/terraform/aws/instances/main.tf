provider "aws" {
  region = "us-east-1"
}

module "ec2_instance_master" {
  source = "../modules/ec2"

  instance_name  = "k8s-master"
  ami_id         = "ami-0c7217cdde317cfec"
  instance_type  = "t2.medium"
  key_name       = "test-kp-windows"
  subnet_ids     = ["subnet-05eed130de28bd58e"]
  instance_count = 1
  sg_name        = "k8s_master"

  inbound_from_port  = ["0"]
  inbound_to_port    = ["0"]
  inbound_protocol   = ["-1"]
  inbound_cidr       = ["0.0.0.0/0"]
  outbound_from_port = ["0"]
  outbound_to_port   = ["0"]
  outbound_protocol  = ["-1"]
  outbound_cidr      = ["0.0.0.0/0"]
}

module "ec2_instance_worker" {
  source = "../modules/ec2"

  instance_name  = "k8s-node"
  ami_id         = "ami-0c7217cdde317cfec"
  instance_type  = "t2.micro"
  key_name       = "test-kp-windows"
  subnet_ids     = ["subnet-05eed130de28bd58e"]
  instance_count = 1
  sg_name        = "k8s_worker"

  inbound_from_port  = ["0"]
  inbound_to_port    = ["0"]
  inbound_protocol   = ["-1"]
  inbound_cidr       = ["0.0.0.0/0"]
  outbound_from_port = ["0"]
  outbound_to_port   = ["0"]
  outbound_protocol  = ["-1"]
  outbound_cidr      = ["0.0.0.0/0"]
}

# module "ec2_instance_db" {
#   source = "../modules/ec2"

#   instance_name  = "mysql-db"
#   ami_id         = "ami-0c7217cdde317cfec"
#   instance_type  = "t2.micro"
#   key_name       = "test-kp-windows"
#   subnet_ids     = ["subnet-05eed130de28bd58e"]
#   instance_count = 1
#   sg_name        = "mysql-db"

#   inbound_from_port  = ["0"]
#   inbound_to_port    = ["0"]
#   inbound_protocol   = ["-1"]
#   inbound_cidr       = ["0.0.0.0/0"]
#   outbound_from_port = ["0"]
#   outbound_to_port   = ["0"]
#   outbound_protocol  = ["-1"]
#   outbound_cidr      = ["0.0.0.0/0"]
# }