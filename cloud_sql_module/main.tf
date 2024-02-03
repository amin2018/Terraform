// Module to create a Cloud SQL instance
module "cloud_sql" {
  #   source = "./modules/cloud_sql"
  source           = "../modules/cloud_sql"
  database_name    = var.database_name
  db_user_name     = var.db_user_name
  db_user_password = var.db_user_password
}