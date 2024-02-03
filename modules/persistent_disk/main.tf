resource "google_compute_disk" "default" {
    name  = var.disk_name
    type  = "pd-standard"
    zone  = var.zone
    size  = 100  // size in GB
    image = "debian-cloud/debian-10"
}

resource "google_compute_attached_disk" "default" {
    disk        = google_compute_disk.default.self_link
    instance    = "projects/${var.project_id}/zones/${var.zone}/instances/${var.vm_name}"
}