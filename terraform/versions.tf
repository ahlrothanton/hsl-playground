terraform {

  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">= 3.52"
    }

    random = {
      source  = "hashicorp/random"
      version = ">= 3.0.1"
    }

    null = {
      source  = "hashicorp/null"
      version = ">= 3.0.0"
    }
  }

  required_version = ">= 0.14.4"
}
