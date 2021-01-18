variable "project_id" {
  description = "Id of the project"
  type        = string
}

variable "name" {
  description = "Name of the image"
  type        = string
}

variable "tag" {
  description = "Tag for the Docker image."
  type        = string
  default     = "latest"
}
