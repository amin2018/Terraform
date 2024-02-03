// This block specifies the required providers for the Terraform configuration.
// In this case, it's the Google provider from HashiCorp with version 5.14.0.
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.14.0"
    }
  }
}

// This block configures the Google provider with the project ID, region, and zone from variables.
provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

// This data block fetches information about a Google Kubernetes Engine (GKE) cluster.
// The cluster's name and location are provided by variables.
// It depends on the 'gke' module.
data "google_container_cluster" "primary" {
  name     = var.gke_cluster_name
  location = var.gke_cluster_zone

  depends_on = [
    module.gke
  ]
}

// This data block fetches the default client configuration for Google Cloud.
data "google_client_config" "default" {}

// This resource block creates a null resource that depends on the 'gke' module.
// It's triggered when the GKE cluster endpoint changes.
resource "null_resource" "cluster" {
  triggers = {
    gke_cluster_endpoint = module.gke.gke_cluster_endpoint
  }

  depends_on = [
    module.gke
  ]
}

// This block configures the Kubernetes provider.
// It uses the GKE cluster endpoint, client certificate, client key, and CA certificate from the 'gke' module,
// and the access token from the default Google client configuration.
provider "kubernetes" {
  host                   = "https://${module.gke.gke_cluster_endpoint}"
  token                  = data.google_client_config.default.access_token
  client_certificate     = module.gke.gke_cluster_client_certificate
  client_key             = module.gke.gke_cluster_client_key
  cluster_ca_certificate = module.gke.gke_cluster_ca_certificate
}