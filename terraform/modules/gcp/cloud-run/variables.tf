variable "name" {
  description = "Name for the Cloud Run service"
  type        = string
}

variable "project_id" {
  description = "Id of the project"
  type        = string
}

variable "location" {
  description = "Location of the container registry"
  type        = string
  default     = "europe-north1"
}

variable "image" {
  description = "Container image to use for the service"
  type        = string
}
