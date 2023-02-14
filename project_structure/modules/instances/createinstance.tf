resource "aws_key_pair" "levelup_key" {
  key_name = "levelup_key"
  public_key = file(var.public_key_path)
}

resource "aws_security_group" "allow_tls" {
  name        = "allow-ssh-${var.ENVIRONMENT}"
  description = "sg allow ssh traffic"
  vpc_id      = var.VPC.id

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow-ssh"
    Environment = var.ENVIRONMENT
  }
}

resource "aws_instance" "my-instance" {
    ami = lookup(var.AMIS, var.AWS_REGION)
    instance_type = var.INSTANCE_TYPE

    subnet_id = element(var.PUBLIC_SUBNETS, 0)

    vpc_security_group_ids = [aws_security_group.allow-ssh.id]

    key_name = aws_key_pair.levelup_key.key_name

    tags = {
        Name = "instance-${var.ENVIRONMENT}"
        Environment = var.ENV
    }
}