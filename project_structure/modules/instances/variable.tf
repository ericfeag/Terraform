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
    us-east-1 = "ami-007868005aea67c54"
    us-east-2 = "ami-0924fa21f01c23f6e"
    us-west-2 = "ami-06e85d4c3149db26a"
    us-west-1 = "ami-005d20c35ced4dc9e"
  }
}

variable "INSTANCE_TYPE" {
    default = "t2.micro"
}

variable "PUBLIC_SUBNETS" {
    type = list
}
