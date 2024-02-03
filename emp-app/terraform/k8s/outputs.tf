# output the manifest content of the created resource.
output "nginx_deployment_content" {
  value = kubernetes_manifest.nginx_deployment.manifest
}

output "nginx_service_content" {
  value = kubernetes_manifest.nginx_service.manifest
}