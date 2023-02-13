module "ec2_cluster" {
  source = "github.com/terraform-aws-modules/terraform-aws-ec2-instance.git"

  name = "my-cluster"
  ami = "ami-0aa7d40eeae50c9a9"
  instance_type = "t2.micro"
  subnet_id = "subnet-0d98e4cd382c764f2"

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}