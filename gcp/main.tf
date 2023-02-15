provider "google" {
    credentials = file("")

    project = "terraform-377916"
    region = "us-east1"
    zone = "us-east1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "practice-network"
  auto_create_subnetworks = "true"
}