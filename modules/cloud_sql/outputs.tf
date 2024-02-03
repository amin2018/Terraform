output "instance_ip_address" {
  description = "The IP address of the Cloud SQL instance."
  value       = google_sql_database_instance.instance.public_ip_address
}

output "database_name" {
  description = "The name of the database."
  value       = google_sql_database.database.name
}

output "db_user_name" {
  description = "The name of the user."
  value       = google_sql_user.user.name
}