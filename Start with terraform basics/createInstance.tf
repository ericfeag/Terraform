resource "aws_instance" "MyFirstInstance" {
    ami = "ami-0568936c8d2b91c4e"
    instance_type = "t2.micro"
}