resource "random_id" "random_project_id_suffix" {
  byte_length = 2
}

locals {
  base_project_id   = "hsl-playground"
  temp_project_id   = format(
    "%s-%s",
    local.base_project_id,
    random_id.random_project_id_suffix.hex,)

}

resource "google_project" "main" {
  name                = var.name
  project_id          = local.temp_project_id
  billing_account     = var.billing_account
}
