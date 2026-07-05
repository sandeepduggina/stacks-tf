required_providers {
  google = {
    source  = "hashicorp/google"
    version = "~> 6.0"
  }
}

provider "google" "this" {
  config {
    project = var.project_id
    region  = var.region

    external_credentials {
      audience              = var.audience
      service_account_email = var.service_account_email
      identity_token        = var.identity_token
    }
  }
}
