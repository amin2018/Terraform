locals {
  nginx_deployment = yamldecode(file("manifests/nginx-deployment.yaml"))
  nginx_service    = yamldecode(file("manifests/nginx-service.yaml"))
}