# Output the name of the VM instance
output "vm_instance_name" {
  value = google_compute_instance.vm_instance.name
}
