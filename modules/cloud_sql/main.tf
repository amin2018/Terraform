resource "google_sql_database_instance" "instance" {
  name             = "my-instance"
  database_version = "MYSQL_5_7"
  deletion_protection = false
  settings {
    tier = "db-n1-highmem-16"

    ip_configuration {
      ipv4_enabled    = true
    }

    backup_configuration {
      enabled = false
    }

    disk_size = 100
    disk_type = "PD_SSD"
  }
}

resource "google_sql_database" "database" {
  name     = var.database_name
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_user" "user" {
  name     = var.db_user_name
  instance = google_sql_database_instance.instance.name
  password = var.db_user_password
}