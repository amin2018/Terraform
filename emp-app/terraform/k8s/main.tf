# Create Kubernetes resource Nginx Deployment with the manifest
resource "kubernetes_manifest" "nginx_deployment" {
  manifest = local.nginx_deployment
}

# Create Kubernetes resource Nginx Service with the manifest
resource "kubernetes_manifest" "nginx_service" {
  manifest = local.nginx_service
}
