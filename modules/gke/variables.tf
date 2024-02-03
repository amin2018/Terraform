variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "gke_cluster_name" {
  description = "Name of the GKE cluster."
  type        = string
}

variable "gke_cluster_zone" {
  description = "The GCP zone where the GKE cluster will be created."
  type        = string
}

