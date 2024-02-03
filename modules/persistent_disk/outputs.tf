output "disk_self_link" {
    description = "The self link of the created disk"
    value       = google_compute_disk.default.self_link
}

output "attached_disk" {
    description = "The attached disk resource"
    value       = google_compute_attached_disk.default
}