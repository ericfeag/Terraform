#Variable for instances
variable "public_key_path" {
    description = "Public key path"
    default = "~/.ssh/levelup_key.pub"
}

variable "VPC_ID" {
    type = string
    default = ""
}

variable "ENVIRONMENT" {
    type = string
    default = ""
}

variable "AWS_REGION" {
    default = "us-east-2"
}

variable "AMIS" {
  type = map
  default = {
    us-east-1 = "ami-015de8f0cd23d6c71"
    us-east-2 = "ami-0bb0afe7d451764e6"
    us-west-2 = "ami-0817b9078575a7d59"
    us-west-1 = "ami-05ecf9bf2c10f48cc"
  }
}

variable "INSTANCE_TYPE" {
    default = "t2.micro"
}

variable "PUBLIC_SUBNETS" {
    type = list
}
