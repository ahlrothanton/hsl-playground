
locals {
  revision-tag = "blue"
}

# GCP Project
module "project" {
  source          = "./modules/gcp/project"

  name            = var.project
  base_project_id = var.project_short
  billing_account = var.billing_account
}

# Container Registry
module "container-registry" {
  source     = "./modules/gcp/container-registry"

  project_id = module.project.project_id
}

# Docker image
module "docker-image" {
  source      = "./modules/hsl-playground/docker-image"

  project_id  = module.project.project_id
  name        = var.project_short
  tag         = local.revision-tag
}

# Cloud Run Service
module "cloud-run-service" {
  source      = "./modules/gcp/cloud-run"

  name        = var.project_short
  project_id  = module.project.project_id
  location    = var.location
  image       = module.docker-image.image
  revision    = local.revision-tag

  depends_on = [
    module.docker-image,
  ]
}
