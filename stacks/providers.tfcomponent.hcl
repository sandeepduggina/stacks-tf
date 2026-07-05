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

    credentials = jsonencode({
      type                        = "external_account"
      audience                    = var.google_audience
      subject_token_type          = "urn:ietf:params:oauth:token-type:jwt"
      token_url                   = "https://sts.googleapis.com/v1/token"
      credential_source = {
        file = var.google_token_file
      }
      service_account_impersonation_url = "https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/${var.google_service_account_email}:generateAccessToken"
    })
  }
}
