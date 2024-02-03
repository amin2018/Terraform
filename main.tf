# This file contains the main Terraform configuration for the project

// Module to create a Cloud SQL instance
# module "cloud_sql" {
#   source = "./modules/cloud_sql"

#   database_name    = var.database_name
#   db_user_name     = var.db_user_name
#   db_user_password = var.db_user_password
# }

// Module to create a Google Kubernetes Engine (GKE) cluster
module "gke" {
  source           = "./modules/gke"
  project_id       = var.project_id
  gke_cluster_name = var.gke_cluster_name
  gke_cluster_zone = var.gke_cluster_zone
}


// Module to create a Kubernetes Deployment
module "k8s_deployment" {
  source = "./modules/k8s_deployment"

  deployment_name           = var.deployment_name
  replicas                  = var.replicas
  image_name                = var.image_name
  image_tag                 = var.image_tag
  container_name            = var.container_name
  container_port            = var.container_port
  app_label                 = var.app_label
  cloud_sql_connection_name = var.cloud_sql_connection_name
  db_user_name              = var.db_user_name
  db_user_password          = var.db_user_password
  database_name             = var.database_name

  depends_on = [
    # module.cloud_sql,
    module.gke
  ]
}

# // Module to create a Virtual Machine (VM)
# module "vm" {
#   source  = "./modules/vm"
#   vm_name = var.vm_name
#   zone    = var.zone
# }

// Module to create a Persistent Disk
# module "persistent_disk" {
#   source     = "./modules/persistent_disk"
#   disk_name  = var.disk_name
#   zone       = var.zone
#   vm_name    = var.vm_name
#   project_id = var.project_id
# }

