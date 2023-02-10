variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
default = "us-east-2"
}

variable "Security_Group"{
    type = list
    default = ["sg-24076", "sg-90890", "sg-456789"]
}

variable "AMIS"{
    type = map
    default = {
        us-east-1 = "ami-054cb116359624aa3"
        us-east-2 = "ami-0cefaebb6da6ffd7f"
        us-west-2 = "ami-0d43d68939ee00e60"
        us-west-1 = "ami-0e6cbf9315e19c9b9"
    }
}