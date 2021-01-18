variable "project_id" {
  description = "Project id to use"
  type        = string
}

variable "location" {
  description = "Location of the container registry"
  type        = string
  default     = "EU"
}
