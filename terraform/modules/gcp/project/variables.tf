variable "name" {
  description = "The name for the project"
  type        = string
}

variable "base_project_id" {
  description = "Basename for the project"
  type        = string
}

variable "random_project_id" {
  description = "Adds a suffix of 4 random characters to the `project_id`"
  type        = bool
  default     = false
}

variable "billing_account" {
  description = "What billing account is associated with this project"
  type        = string
}
