component "vpc" {
  source = "./modules/gcp-vpc"

  inputs = {
    network_name = var.network_name
    routing_mode = var.routing_mode
  }

  providers = {
    google = provider.google.this
  }
}
