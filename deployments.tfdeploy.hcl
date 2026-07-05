# Auth: HCP Stacks deploy pattern (not token_file)
# identity_token audience must match WIF allowedAudiences: https://app.terraform.io
# external_credentials audience = WIF provider resource name

identity_token "gcp" {
  audience = ["https://app.terraform.io"]
}

deployment "qa" {
  inputs = {
    project_id            = "scenic-firefly-476508-i4"
    region                = "us-central1"
    identity_token        = identity_token.gcp.jwt
    audience              = "//iam.googleapis.com/projects/562684088943/locations/global/workloadIdentityPools/tfstacks-pools/providers/tfstacks-pools"
    service_account_email = "terraform-stack@scenic-firefly-476508-i4.iam.gserviceaccount.com"
    network_name          = "qa-vpc-dr"
  }
  destroy = true
}

deployment "qa-dr" {
  inputs = {
    project_id            = "scenic-firefly-476508-i4"
    region                = "us-central1"
    identity_token        = identity_token.gcp.jwt
    audience              = "//iam.googleapis.com/projects/562684088943/locations/global/workloadIdentityPools/tfstacks-pools/providers/tfstacks-pools"
    service_account_email = "terraform-stack@scenic-firefly-476508-i4.iam.gserviceaccount.com"
    network_name          = "qa-dr-vpc"
  }

}
