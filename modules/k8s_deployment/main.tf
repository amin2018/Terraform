resource "kubernetes_deployment" "app" {
    metadata {
        name = var.deployment_name
    }

    spec {
        replicas = var.replicas

        selector {
            match_labels = {
                App = var.app_label
            }
        }

        template {
            metadata {
                labels = {
                    App = var.app_label
                }
            }

            spec {
                container {
                    image = "${var.image_name}:${var.image_tag}"
                    name  = var.container_name

                    port {
                        container_port = var.container_port
                    }

                    env {
                        name  = "CLOUD_SQL_CONNECTION_NAME"
                        value = var.cloud_sql_connection_name
                    }

                    env {
                        name  = "DB_USER"
                        value = var.db_user_name
                    }

                    env {
                        name  = "DB_PASSWORD"
                        value = var.db_user_password
                    }

                    env {
                        name  = "DB_NAME"
                        value = var.database_name
                    }
                }

                # Cloud SQL Proxy sidecar container
                # container {
                #     name  = "cloud-sql-proxy"
                #     image = "gcr.io/cloudsql-docker/gce-proxy:1.16"

                #     args = [
                #         "/cloud_sql_proxy",
                #         "-instances=${var.cloud_sql_connection_name}=tcp:3306",
                #     ]
                # }
                
                container {
                    name  = "nginx"
                    image = "nginx"
                    port {
                        container_port = 80
                    }
                }
            }
        }
    }
}