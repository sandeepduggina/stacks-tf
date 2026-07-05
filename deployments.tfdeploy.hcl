# GCP project: scenic-firefly-476508-i4 (project number: 562684088943)
# WIF provider: tfstacks-pools
# Stack condition: assertion.terraform_stack_id == "st-nxi34y1Moph37ntn"

identity_token "gcp" {
  audience = ["//iam.googleapis.com/projects/562684088943/locations/global/workloadIdentityPools/tfstacks-pools/providers/tfstacks-pools"]
}

deployment "qa" {
  inputs = {
    project_id                   = "scenic-firefly-476508-i4"
    region                       = "us-central1"
    google_audience              = "//iam.googleapis.com/projects/562684088943/locations/global/workloadIdentityPools/tfstacks-pools/providers/tfstacks-pools"
    google_token_file            = identity_token.gcp.token_file
    google_service_account_email = "terraform-stack@scenic-firefly-476508-i4.iam.gserviceaccount.com"
    network_name                 = "qa-vpc"
  }
}

deployment "qa-dr" {
  inputs = {
    project_id                   = "scenic-firefly-476508-i4"
    region                       = "us-central1"
    google_audience              = "//iam.googleapis.com/projects/562684088943/locations/global/workloadIdentityPools/tfstacks-pools/providers/tfstacks-pools"
    google_token_file            = identity_token.gcp.token_file
    google_service_account_email = "terraform-stack@scenic-firefly-476508-i4.iam.gserviceaccount.com"
    network_name                 = "qa-dr-vpc"
  }
}
