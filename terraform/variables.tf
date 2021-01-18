variable "project" {
  description = "The name for the project"
  type        = string
  default     = "HSL Playground"
}

variable "location" {
  description = "Default location for projects resources"
  type        = string
  default     = "europe-north1"
}

variable "project_short" {
  description = "Shorter name for the project"
  type        = string
  default     = "hsl-playground"
}

variable "billing_account" {
  description = "What billing account is associated with this project"
  type        = string
}
