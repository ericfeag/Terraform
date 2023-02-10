terraform {
    backend "s3" {
        bucket = "tf-state54"
        key = "development/terraform_state"
        region = "us-east-2"
    }
}