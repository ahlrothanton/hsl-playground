
# Enable Cloud Run APIs
module "cloud-run-api" {
    source     = "../services"

    project_id = var.project_id
    api        = "run.googleapis.com"
}

resource "google_cloud_run_service" "cloud-run-service" {
  name     = var.name
  project  = var.project_id
  location = var.location

  template {
    spec {
      containers {
        image = var.image
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
  autogenerate_revision_name = true

  depends_on = [
    module.cloud-run-api,
  ]
}

data "google_iam_policy" "noauth" {
  binding {
    role = "roles/run.invoker"
    members = [
      "allUsers",
    ]
  }
}

resource "google_cloud_run_service_iam_policy" "noauth" {
  location    = google_cloud_run_service.cloud-run-service.location
  project     = google_cloud_run_service.cloud-run-service.project
  service     = google_cloud_run_service.cloud-run-service.name

  policy_data = data.google_iam_policy.noauth.policy_data
}
