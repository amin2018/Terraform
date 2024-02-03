resource "google_compute_instance" "vm_instance" {
  name         = var.vm_name
  machine_type = "e2-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    // Use the default VPC network
    network = "default"

    // Ephemeral public IP is assigned if access_config is present without any arguments.
    // Remove the access_config block if no public IP is required.
    access_config {
      // Empty block for ephemeral public IP
    }
  }
}


