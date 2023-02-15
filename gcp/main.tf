provider "google" {
    credentials = file("terraform-377916-79189c4bab3a.json")

    project = "terraform-377916"
    region = "us-east1"
    zone = "us-east1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "practice-network"
  auto_create_subnetworks = "true"
}

terraform {
  backend "gcs" {
    bucket = "terraform54"
    prefix = "terraform-sample-practice"
    credentials = file("terraform-377916-79189c4bab3a.json")
  }
}