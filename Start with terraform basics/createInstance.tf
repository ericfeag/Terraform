provider "aws" {
  access_key = "AKIA5BCCEP2J5ZD3MKNR"
  secret_key = "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"
  region = "us-east-2"
}

resource "aws_instance" "MyFirstInstance" {
    ami = "ami-05803413c51f242b7"
    instance_type = "t2.micro"
}