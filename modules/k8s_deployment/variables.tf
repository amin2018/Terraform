variable "deployment_name" {
    description = "The name of the deployment"
    type        = string
}

variable "replicas" {
    description = "The number of replicas of the application"
    type        = number
}

variable "image_name" {
    description = "The name of the Docker image for the application"
    type        = string
}

variable "image_tag" {
    description = "The tag of the Docker image for the application"
    type        = string
}

variable "container_name" {
    description = "The name of the container in the pod"
    type        = string
}

variable "container_port" {
    description = "The port that the container exposes"
    type        = number
}

variable "app_label" {
    description = "The label of the app"
    type        = string
}

variable "cloud_sql_connection_name" {
    description = "The connection name of the Cloud SQL instance"
    type        = string
}

variable "db_user_name" {
  description = "The database user name"
  type        = string
}

variable "db_user_password" {
  description = "The database user password"
  type        = string
}

variable "database_name" {
  description = "The name of the database"
  type        = string
}
