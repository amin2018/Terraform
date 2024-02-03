resource "google_container_cluster" "gke_cluster" {
  name     = var.gke_cluster_name
  location = var.gke_cluster_zone
  deletion_protection = false

  initial_node_count = 1

  resource_labels = {
    app = "test"
  }

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/sqlservice.admin",
      
    ]
  }
}