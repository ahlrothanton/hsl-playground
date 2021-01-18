resource "google_project_service" "project" {
  project = var.project_id
  service = var.api

  disable_dependent_services = true
}
