// Variables for the GCP project
variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}

variable "zone" {
  description = "The GCP zone"
  type        = string
}

// Variables for the Database module
variable "database_name" {
  description = "The name of the database to create."
  type        = string
}

variable "db_user_name" {
  description = "The name of the user to create."
  type        = string
}

variable "db_user_password" {
  description = "The password of the user to create."
  type        = string
}

