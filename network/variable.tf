variable "region" {
    default = "us-east-2"
}

variable "public_key_path" {
    description = "public key path"
    default = "~/.ssh/levelup_key.pub"
}

variable "instance_ami" {
    description = "ami for aws ec2 instance"
    default = "ami-0521a1ab6cb98215d"
}

variable "instance_type" {
    description = "type for aws ec2 instance"
    default = "t2.micro"
}

variable "environment_tag" {
    description = "Environment tag"
    default = "Production"
}