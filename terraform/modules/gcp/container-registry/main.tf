# Enable Container Registry APIs
module "container-registry-api" {
    source     = "../services"

    project_id = var.project_id
    api        = "containerregistry.googleapis.com"
}

# Create a Container Registry
resource "google_container_registry" "registry" {
  project  = var.project_id
  location = var.location

  depends_on = [
    module.container-registry-api,
  ]
}
